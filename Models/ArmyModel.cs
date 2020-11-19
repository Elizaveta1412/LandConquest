﻿using LandConquest.Entities;
using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace LandConquest.Models
{
    public class ArmyModel
    {
        public Army GetArmyInfo(SqlConnection connection, Player player, Army army)
        {
            String armyQuery = "SELECT * FROM dbo.ArmyData WHERE player_id = @player_id"; //(army_id,army_size_current,army_type,army_archers_count,army_infantry_count,army_horseman_count,army_siegegun_count,local_land_id) VALUES (@army_id, @army_size_current, @army_type, @army_archers_count, @army_infantry_count, @army_horseman_count, @army_siegegun_count, @local_land_id)
            var armyCommand = new SqlCommand(armyQuery, connection);

            armyCommand.Parameters.AddWithValue("@player_id", player.PlayerId);

            using (var reader = armyCommand.ExecuteReader())
            {
                var armyId = reader.GetOrdinal("army_id");
                var armySizeCurrent = reader.GetOrdinal("army_size_current");
                var armyType = reader.GetOrdinal("army_type");
                var armyArchersCount = reader.GetOrdinal("army_archers_count");
                var armyInfantryCount = reader.GetOrdinal("army_infantry_count");
                var armyHorsemanCount = reader.GetOrdinal("army_horseman_count");
                var armySiegegunCount = reader.GetOrdinal("army_siegegun_count");

                while (reader.Read())
                {
                    army.ArmyId = reader.GetString(armyId);
                    army.ArmySizeCurrent = reader.GetInt32(armySizeCurrent);
                    army.ArmyType = reader.GetInt32(armyType);
                    army.ArmyArchersCount = reader.GetInt32(armyArchersCount);
                    army.ArmyInfantryCount = reader.GetInt32(armyInfantryCount);
                    army.ArmyHorsemanCount = reader.GetInt32(armyHorsemanCount);
                    army.ArmySiegegunCount = reader.GetInt32(armySiegegunCount);
                }
            }
            army.PlayerId = player.PlayerId;
            armyCommand.Dispose();

            return army;
        }

        public List<Army> GetArmyInfoList(List<Army> armies, SqlConnection connection, User user)
        {
            String query = "SELECT * FROM dbo.ArmyData, dbo.PlayerData where ArmyData.player_id = PlayerData.player_id ORDER BY army_size_current desc";

            var command = new SqlCommand(query, connection);

            using (var reader = command.ExecuteReader())
            {

                var playerId = reader.GetOrdinal("player_id");
                var playerName = reader.GetOrdinal("player_name");
                var armyId = reader.GetOrdinal("army_id");
                var armySizeCurrent = reader.GetOrdinal("army_size_current");

                while (reader.Read())
                {
                    Army army = new Army();
                    Player player = new Player();
                    army.PlayerId = reader.GetString(playerId);
                    army.ArmyId = reader.GetString(armyId);
                    army.ArmySizeCurrent = reader.GetInt32(armySizeCurrent);
                    player.PlayerName = reader.GetString(playerName);
                    armies.Add(army);
                }
            }

            return armies;
        }

        public Army UpdateArmy(SqlConnection connection, Army army)
        {
            String storageQuery = "UPDATE dbo.ArmyData SET army_size_current = @army_size_current, army_type  = @army_type, army_archers_count = @army_archers_count, army_infantry_count  = @army_infantry_count, army_horseman_count = @army_horseman_count, army_siegegun_count = @army_siegegun_count WHERE army_id = @army_id";

            var storageCommand = new SqlCommand(storageQuery, connection);
            // int datetimeResult;
            storageCommand.Parameters.AddWithValue("@army_size_current", army.ArmySizeCurrent);
            storageCommand.Parameters.AddWithValue("@army_type", army.ArmyType);
            storageCommand.Parameters.AddWithValue("@army_archers_count", army.ArmyArchersCount);
            storageCommand.Parameters.AddWithValue("@army_infantry_count", army.ArmyInfantryCount);
            storageCommand.Parameters.AddWithValue("@army_horseman_count", army.ArmyHorsemanCount);
            storageCommand.Parameters.AddWithValue("@army_siegegun_count", army.ArmySiegegunCount);
            storageCommand.Parameters.AddWithValue("@army_id", army.ArmyId);

            storageCommand.ExecuteNonQuery();


            storageCommand.Dispose();
            return army;
        }

        public void InsertArmyFromReg(SqlConnection connection, Army army)
        {
            String armyQuery = "INSERT INTO dbo.ArmyData (player_id, army_id) VALUES (@player_id, @army_id)";
            var armyCommand = new SqlCommand(armyQuery, connection);

            armyCommand.Parameters.AddWithValue("@player_id", army.PlayerId);
            armyCommand.Parameters.AddWithValue("@army_id", army.ArmyId);

            armyCommand.ExecuteNonQuery();

            armyCommand.Dispose();

        }

        public int ReturnTypeOfArmy(Army army)
        {
            if ((army.ArmyInfantryCount > 0) && (army.ArmyInfantryCount == army.ArmySizeCurrent))
                return 1;
            else
            if ((army.ArmyArchersCount > 0) && (army.ArmyArchersCount == army.ArmySizeCurrent))
                return 2;
            else
            if ((army.ArmyHorsemanCount > 0) && (army.ArmyHorsemanCount == army.ArmySizeCurrent))
                return 3;
            else
            if ((army.ArmySiegegunCount > 0) && (army.ArmySiegegunCount == army.ArmySizeCurrent))
                return 4;
            return 5;
        }
    }
}
