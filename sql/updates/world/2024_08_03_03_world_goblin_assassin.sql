-- Goblin Assassin
UPDATE `creature_template` SET `ScriptName` = "", `AIName` = "SmartAI" WHERE `entry` = 50039;
DELETE FROM `smart_scripts` WHERE `entryorguid` = 50039 AND `source_type` = 0;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES 
(50039, 0, 0, 0, 4, 0, 50, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "Goblin Assassin - On Aggro - Say Text Line 0");

UPDATE `creature` SET `modelid` = 0, `wander_distance` = 10, `movement_type` = 1, `spawntimesecs` = 300 WHERE `id` = 50039;
DELETE FROM `creature_addon` WHERE `guid` IN (SELECT `guid` FROM `creature` WHERE `id` = 50039);
DELETE FROM `waypoint_data` WHERE `id` IN (178396, 178382, 178422);
