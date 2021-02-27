﻿using System;
using Newtonsoft.Json.Linq;
using System.IO;
using System.Net.Http;
using System.Reflection;
using System.Text;
using YandexDiskNET;
using DeviceId;
using System.Collections.Generic;

namespace LandConquestYD
{
    public static class YDContext
    {
        private static YandexDiskRest disk;
        private static string oauth;
        private static string ConnectionSourceFileName;
        public static void OpenYD()
        {
            Connection();
            Disk();
        }

        private static void Connection()
        {
            oauth = Properties.Settings.Default.Token;
        }

        private static void Disk()
        {
            disk = new YandexDiskRest(oauth);
        }

        public static YandexDiskRest GetYD()
        {
            return disk;
        }

        public static string ReadResource(string sourceFileName)
        {
            var parameter = default(Param);
            parameter.Path = sourceFileName;
            string result = ReadFile((string)JObject.Parse(CommandDisk(oauth, parameter)).SelectToken("href"));
            return result;
        }

        public static int CountConnections()
        {
            ConnectionSourceFileName = "onlinenow_" + GetDeviceId() + ".ttf";
            var path = Path.GetDirectoryName(Assembly.GetExecutingAssembly().Location) + @"\" + ConnectionSourceFileName;
            File.AppendAllText(path, "");
            disk.UploadResource("countstatus/" + ConnectionSourceFileName, path, true);
            File.Delete(path);
            ResInfo filesByNameFields = disk.GetResourceByName(
                1000000,
                new Media_type[]
                {
                    Media_type.Font
                },
                SortField.Path,
                new ResFields[] {
                    ResFields.Media_type,
                    ResFields.Name,
                    ResFields.Path,
                    ResFields._Embedded
                },
                0, true, "120x240"
                );
            int count = 0;
            if (filesByNameFields.ErrorResponse.Message == null)
            {
                if (filesByNameFields._Embedded.Items.Count != 0)
                    foreach (var s in filesByNameFields._Embedded.Items)
                    {
                        if (s.Name.Contains("onlinenow_"))
                            count++;
                    }
            }
            return count;
        }
        public static void DeleteConnectionId()
        {
            disk.DeleteResource("countstatus/" + ConnectionSourceFileName, false);
        }

        private static string GetDeviceId()
        {
            string deviceId = new DeviceIdBuilder()
            .AddProcessorId()
            .AddMotherboardSerialNumber()
            .ToString();
            return deviceId;
        }

        public static void BanDeviceById(string information)
        {
            string destFileName = "cheater_" + GetDeviceId() + ".cpp";
            string path = Path.GetDirectoryName(Assembly.GetExecutingAssembly().Location) + @"\" + destFileName;
            File.AppendAllText(path, information);
            disk.UploadResource("BanList/" + destFileName, path, true);
            File.Delete(path);
        }

        public static void CheckIfCheater()
        {
            ResInfo filesByNameFields = disk.GetResourceByName(
               1000000,
               new Media_type[]
               {
                    Media_type.Development
               },
               SortField.Path,
               new ResFields[] {
                    ResFields.Media_type,
                    ResFields.Name,
                    ResFields.Path,
                    ResFields._Embedded
               },
               0, true, "120x240"
               );

            if (filesByNameFields.ErrorResponse.Message == null)
            {
                if (filesByNameFields._Embedded.Items.Count != 0)
                    foreach (var s in filesByNameFields._Embedded.Items)
                    {
                        if (s.Name.Contains("cheater_" + GetDeviceId()))
                            Environment.Exit(0);
                    }
            }
        }

        public static bool UploadBugReport(string playerName, string text)
        {
            string destFileName = @"BugReport_" + playerName + DateTime.UtcNow.ToString().Replace(":", "_") + @".log";
            string path = Path.GetDirectoryName(Assembly.GetExecutingAssembly().Location) + @"\" + destFileName;
            File.AppendAllText(path, text);
            var result = disk.UploadResource("SubBugs/" + destFileName, path, true);
            File.Delete(path);
            if (result.Error != null)
            {
                return false;
            }
            else
            {
                return true;
            }
        }
        

        private static string CommandDisk(string oauth, Param param)
        {
            HttpMethod method = HttpMethod.Get;
            HttpClient httpClient = new HttpClient();
            UrlBuilder urlBuilder = new UrlBuilder(param);
            var requestUri = "https://cloud-api.yandex.net/v1/disk/resources/download?" + urlBuilder.Path;
            try
            {
                HttpRequestMessage httpRequestMessage = new HttpRequestMessage(method, requestUri);
                httpRequestMessage.Headers.Add("Authorization", "OAuth " + oauth);
                httpRequestMessage.Headers.Add("Accept", "application/json");
                return httpClient.SendAsync(httpRequestMessage).Result.Content.ReadAsStringAsync().Result;
            }
            catch (Exception)
            {
                throw new HttpRequestException();
            }
            finally
            {
                httpClient.Dispose();
            }
        }

        private static string ReadFile(string url)
        {
            HttpClient httpClient = HttpClientFactory.Create();
            try
            {
                HttpResponseMessage httpResponse = httpClient.GetAsync(url, HttpCompletionOption.ResponseHeadersRead).Result;
                using (Stream stream = httpResponse.Content.ReadAsStreamAsync().Result)
                {
                    var memoryStream = new MemoryStream();
                    stream.CopyTo(memoryStream);
                    return Encoding.ASCII.GetString(memoryStream.ToArray());
                }

            }
            catch (Exception) { return null; }
        }
    }
}
