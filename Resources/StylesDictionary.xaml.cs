﻿using LandConquestDB.Entities;
using LandConquestDB.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Windows;
using System.Windows.Media;
using System.Windows.Shapes;

namespace LandConquest.Resources
{
    public sealed partial class StylesDictionary : ResourceDictionary
    {
        private List<Land> lands;
        private Color colorOfResource1 = Color.FromRgb(255, 255, 255);
        private Color colorOfResource2 = Color.FromRgb(0, 0, 0);
        public void ViewboxLoadedHandler(object sender, EventArgs e)
        {
            try
            {
                LandModel landModel = new LandModel();

                const int landsCount = 11;

                lands = new List<Land>();
                for (int i = 0; i < landsCount; i++)
                {
                    lands.Add(new Land());
                }

                lands = LandModel.GetLandsInfo(lands);
            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message, "Exception", MessageBoxButton.OK);
            }
        }
        public void PathLoadedHandler(object sender, EventArgs e)
        {
            try
            {
                Path senderPath = (Path)sender;

                Land land = new Land();
                land = lands.ElementAt(Convert.ToInt32(senderPath.Name.Replace("Land", "")) - 1);

                switch (land.ResourceType1)
                {
                    case 4:
                        {
                            colorOfResource1 = Color.FromRgb(132, 151, 176);
                            break;
                        }
                    case 5:
                        {
                            colorOfResource1 = Color.FromRgb(255, 255, 101);
                            break;
                        }
                    case 6:
                        {
                            colorOfResource1 = Color.FromRgb(255, 217, 102);
                            break;
                        }
                    case 7:
                        {
                            colorOfResource1 = Color.FromRgb(157, 195, 230);
                            break;
                        }
                    case 8:
                        {
                            colorOfResource1 = Color.FromRgb(139, 69, 19);
                            break;
                        }
                }

                switch (land.ResourceType2)
                {
                    case 4:
                        {
                            colorOfResource2 = Color.FromRgb(132, 151, 176);
                            break;
                        }
                    case 5:
                        {
                            colorOfResource2 = Color.FromRgb(255, 255, 101);
                            break;
                        }
                    case 6:
                        {
                            colorOfResource2 = Color.FromRgb(255, 217, 102);
                            break;
                        }
                    case 7:
                        {
                            colorOfResource2 = Color.FromRgb(157, 195, 230);
                            break;
                        }
                    case 8:
                        {
                            colorOfResource2 = Color.FromRgb(139, 69, 19);
                            break;
                        }
                }


                LinearGradientBrush myLinearGradientBrush = new LinearGradientBrush();
                myLinearGradientBrush.StartPoint = new Point(0, 0.5);
                myLinearGradientBrush.EndPoint = new Point(0.5, 1);
                myLinearGradientBrush.GradientStops.Add(new GradientStop(colorOfResource1, 0.45));
                myLinearGradientBrush.GradientStops.Add(new GradientStop(colorOfResource2, 0.55));

                senderPath.Fill = myLinearGradientBrush;

            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message, "Exception", MessageBoxButton.OK);
            }
        }

        public void PathEnterHandler(object sender, RoutedEventArgs e)
        {
            try
            {
                Path senderPath = (Path)sender;

                GradientStopCollection color = ((LinearGradientBrush)senderPath.Fill).GradientStops;

                LinearGradientBrush myLinearGradientBrush = new LinearGradientBrush();
                myLinearGradientBrush.StartPoint = new Point(0, 0.5);
                myLinearGradientBrush.EndPoint = new Point(0.5, 1);
                myLinearGradientBrush.GradientStops.Add(new GradientStop(color[1].Color, 0.45));
                myLinearGradientBrush.GradientStops.Add(new GradientStop(color[0].Color, 0.55));

                senderPath.Fill = myLinearGradientBrush;
            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message, "Exception", MessageBoxButton.OK);
            }
        }

        public void PathLeaveHandler(object sender, RoutedEventArgs e)
        {
            try
            {
                Path senderPath = (Path)sender;


                GradientStopCollection color = ((LinearGradientBrush)senderPath.Fill).GradientStops;

                LinearGradientBrush myLinearGradientBrush = new LinearGradientBrush();
                myLinearGradientBrush.StartPoint = new Point(0, 0.5);
                myLinearGradientBrush.EndPoint = new Point(0.5, 1);
                myLinearGradientBrush.GradientStops.Add(new GradientStop(color[1].Color, 0.45));
                myLinearGradientBrush.GradientStops.Add(new GradientStop(color[0].Color, 0.55));

                senderPath.Fill = myLinearGradientBrush;
            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message, "Exception", MessageBoxButton.OK);
            }
        }
    }
}