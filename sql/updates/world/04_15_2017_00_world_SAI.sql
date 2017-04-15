-- Mage Hunter Ascendant SAI
SET @ENTRY := 26727;
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,1,0,100,7,0,0,0,0,21,0,0,0,0,0,0,1,0,0,0,0,0,0,0,"Mage Hunter Ascendant - Out Of Combat - Disallow Combat Movement (Dungeon Only)"),
(@ENTRY,0,1,0,0,0,100,7,0,0,0,0,30,1,4,0,0,0,0,1,0,0,0,0,0,0,0,"Mage Hunter Ascendant - In Combat - Set Random Phase (Dungeon Only)"),
(@ENTRY,0,2,5,4,1,100,3,0,0,0,0,11,12466,0,0,0,0,0,2,0,0,0,0,0,0,0,"Mage Hunter Ascendant - On Aggro - Cast 12466 (Normal Dungeon) (Phase 1)"),
(@ENTRY,0,3,0,9,1,100,2,0,40,2400,3800,11,12466,0,0,0,0,0,2,0,0,0,0,0,0,0,"Mage Hunter Ascendant - Between 0-40 Range - Cast 12466 (Normal Dungeon) (Phase 1)"),
(@ENTRY,0,4,5,4,1,100,3,0,0,0,0,11,17290,0,0,0,0,0,2,0,0,0,0,0,0,0,"Mage Hunter Ascendant - On Aggro - Cast 17290 (Heroic Dungeon) (Phase 1)"),
(@ENTRY,0,5,0,61,1,100,0,0,0,0,0,23,1,0,0,0,0,0,1,0,0,0,0,0,0,0,"Mage Hunter Ascendant - On Aggro - Increment Event Phase (Heroic Dungeon) (Phase 1)"),
(@ENTRY,0,6,0,9,1,100,4,0,40,2400,3800,11,17290,0,0,0,0,0,2,0,0,0,0,0,0,0,"Mage Hunter Ascendant - Between 0-40 Range - Cast 17290 (Heroic Dungeon) (Phase 1)"),
(@ENTRY,0,7,8,3,1,100,7,0,15,0,0,21,1,0,0,0,0,0,1,0,0,0,0,0,0,0,"Mage Hunter Ascendant - Between 0-15% Mana - Allow Combat Movement (Dungeon Only) (Phase 1)"),
(@ENTRY,0,8,0,61,1,100,0,0,0,0,0,23,1,0,0,0,0,0,1,0,0,0,0,0,0,0,"Mage Hunter Ascendant - Between 0-15% Mana - Increment Event Phase (Dungeon Only) (Phase 1)"),
(@ENTRY,0,9,0,9,1,100,7,35,80,0,0,21,1,0,0,0,0,0,1,0,0,0,0,0,0,0,"Mage Hunter Ascendant - Between 35-80 Range - Allow Combat Movement (Dungeon Only) (Phase 1)"),
(@ENTRY,0,10,0,9,1,100,7,5,15,0,0,21,0,0,0,0,0,0,1,0,0,0,0,0,0,0,"Mage Hunter Ascendant - Between 5-15 Range - Disallow Combat Movement (Dungeon Only) (Phase 1)"),
(@ENTRY,0,11,0,9,1,100,7,0,5,0,0,21,1,0,0,0,0,0,1,0,0,0,0,0,0,0,"Mage Hunter Ascendant - Between 0-5 Range - Allow Combat Movement (Dungeon Only) (Phase 1)"),
(@ENTRY,0,12,0,0,1,100,6,4000,6000,12000,18000,11,47784,0,0,0,0,0,2,0,0,0,0,0,0,0,"Mage Hunter Ascendant - In Combat - Cast 47784 (Dungeon Only) (Phase 1)"),
(@ENTRY,0,13,0,0,1,100,2,7000,9000,15000,28000,11,36808,0,0,0,0,0,5,0,0,0,0,0,0,0,"Mage Hunter Ascendant - In Combat - Cast 36808 (Normal Dungeon) (Phase 1)"),
(@ENTRY,0,14,0,0,1,100,4,7000,9000,15000,28000,11,39376,0,0,0,0,0,5,0,0,0,0,0,0,0,"Mage Hunter Ascendant - In Combat - Cast 39376 (Heroic Dungeon) (Phase 1)"),
(@ENTRY,0,15,0,3,2,100,6,30,100,100,100,23,0,1,0,0,0,0,1,0,0,0,0,0,0,0,"Mage Hunter Ascendant - Between 30-100% Mana - Decrement Event Phase (Dungeon Only) (Phase 2)"),
(@ENTRY,0,16,19,4,4,100,3,0,0,0,0,11,12737,0,0,0,0,0,2,0,0,0,0,0,0,0,"Mage Hunter Ascendant - On Aggro - Cast 12737 (Normal Dungeon) (Phase 3)"),
(@ENTRY,0,17,0,9,4,100,2,0,30,2400,3800,11,12737,0,0,0,0,0,2,0,0,0,0,0,0,0,"Mage Hunter Ascendant - Between 0-30 Range - Cast 12737 (Normal Dungeon) (Phase 3)"),
(@ENTRY,0,18,19,4,4,100,3,0,0,0,0,11,56837,0,0,0,0,0,2,0,0,0,0,0,0,0,"Mage Hunter Ascendant - On Aggro - Cast 56837 (Heroic Dungeon) (Phase 3)"),
(@ENTRY,0,19,0,61,4,100,0,0,0,0,0,23,1,0,0,0,0,0,1,0,0,0,0,0,0,0,"Mage Hunter Ascendant - On Aggro - Increment Event Phase (Heroic Dungeon) (Phase 3)"),
(@ENTRY,0,20,0,9,4,100,4,0,30,2400,3800,11,56837,0,0,0,0,0,2,0,0,0,0,0,0,0,"Mage Hunter Ascendant - Between 0-30 Range - Cast 56837 (Heroic Dungeon) (Phase 3)"),
(@ENTRY,0,21,22,3,4,100,7,0,15,0,0,21,1,0,0,0,0,0,1,0,0,0,0,0,0,0,"Mage Hunter Ascendant - Between 0-15% Mana - Allow Combat Movement (Dungeon Only) (Phase 3)"),
(@ENTRY,0,22,0,61,4,100,0,0,0,0,0,23,1,0,0,0,0,0,1,0,0,0,0,0,0,0,"Mage Hunter Ascendant - Between 0-15% Mana - Increment Event Phase (Dungeon Only) (Phase 3)"),
(@ENTRY,0,23,0,9,4,100,7,35,80,0,0,21,1,0,0,0,0,0,1,0,0,0,0,0,0,0,"Mage Hunter Ascendant - Between 35-80 Range - Allow Combat Movement (Dungeon Only) (Phase 3)"),
(@ENTRY,0,24,0,9,4,100,7,5,15,0,0,21,0,0,0,0,0,0,1,0,0,0,0,0,0,0,"Mage Hunter Ascendant - Between 5-15 Range - Disallow Combat Movement (Dungeon Only) (Phase 3)"),
(@ENTRY,0,25,0,9,4,100,7,0,5,0,0,21,1,0,0,0,0,0,1,0,0,0,0,0,0,0,"Mage Hunter Ascendant - Between 0-5 Range - Allow Combat Movement (Dungeon Only) (Phase 3)"),
(@ENTRY,0,26,0,0,0,100,6,7000,9000,11000,18000,11,55040,0,0,0,0,0,2,0,0,0,0,0,0,0,"Mage Hunter Ascendant - In Combat - Cast 55040 (Dungeon Only)"),
(@ENTRY,0,27,0,0,0,100,2,10000,12000,11000,15000,11,15244,0,0,0,0,0,2,0,0,0,0,0,0,0,"Mage Hunter Ascendant - In Combat - Cast 15244 (Normal Dungeon)"),
(@ENTRY,0,28,0,0,0,100,4,10000,12000,11000,15000,11,38384,0,0,0,0,0,2,0,0,0,0,0,0,0,"Mage Hunter Ascendant - In Combat - Cast 38384 (Heroic Dungeon)"),
(@ENTRY,0,29,0,3,8,100,6,30,100,100,100,23,0,1,0,0,0,0,1,0,0,0,0,0,0,0,"Mage Hunter Ascendant - Between 30-100% Mana - Decrement Event Phase (Dungeon Only) (Phase 4)"),
(@ENTRY,0,30,0,1,16,100,6,0,0,0,0,21,1,0,0,0,0,0,1,0,0,0,0,0,0,0,"Mage Hunter Ascendant - Out Of Combat - Allow Combat Movement (Dungeon Only) (Phase 5)"),
(@ENTRY,0,31,0,0,1,100,2,4000,6000,8000,11000,11,34933,0,0,0,0,0,1,0,0,0,0,0,0,0,"Mage Hunter Ascendant - In Combat - Cast 34933 (Normal Dungeon) (Phase 1)"),
(@ENTRY,0,32,0,0,1,100,4,4000,6000,8000,11000,11,56825,0,0,0,0,0,1,0,0,0,0,0,0,0,"Mage Hunter Ascendant - In Combat - Cast 56825 (Heroic Dungeon) (Phase 1)"),
(@ENTRY,0,33,0,0,1,100,6,8000,9000,9000,15000,11,47789,0,0,0,0,0,1,0,0,0,0,0,0,0,"Mage Hunter Ascendant - In Combat - Cast 47789 (Dungeon Only) (Phase 1)"),
(@ENTRY,0,34,0,0,1,100,2,1000,1200,60000,60000,11,50182,0,0,0,0,0,1,0,0,0,0,0,0,0,"Mage Hunter Ascendant - In Combat - Cast 50182 (Normal Dungeon) (Phase 1)"),
(@ENTRY,0,35,0,0,1,100,4,1000,1200,60000,60000,11,56827,0,0,0,0,0,1,0,0,0,0,0,0,0,"Mage Hunter Ascendant - In Combat - Cast 56827 (Heroic Dungeon) (Phase 1)"),
(@ENTRY,0,36,0,0,0,100,6,9000,14000,19000,22000,11,13323,1,0,0,0,0,6,0,0,0,0,0,0,0,"Mage Hunter Ascendant - In Combat - Cast 13323 (Dungeon Only)");