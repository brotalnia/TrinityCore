-- Elly Langston & Jenn Langston
DELETE FROM `creature_text` WHERE `CreatureID` IN (3626,1328);
INSERT INTO `creature_text` (`CreatureID`, `GroupID`, `ID`, `Text`, `Type`, `Language`, `Probability`, `Emote`, `Duration`, `Sound`, `BroadcastTextId`, `TextRange`, `comment`) VALUES
(3626,0,0,"%s returns the rude gesture to $n.",16,0,100,14,0,0,1521,0,'Jenn Langston'),
(3626,1,0,"What can I do for you?",12,0,100,1,0,0,1529,0,'Jenn Langston'),
(3626,1,1,"What do you fancy, $g sir:miss,",12,0,100,1,0,0,1530,0,'Jenn Langston'),
(3626,1,2,"Been a tough day? A nice ale should loosen those worries right up.",12,0,100,1,0,0,1531,0,'Jenn Langston'),
(3626,1,3,"Well hello, $n, what can I get you today?",12,0,100,1,0,0,1532,0,'Jenn Langston'),
(3626,1,4,"Hi, What would you like?",12,0,100,1,0,0,1533,0,'Jenn Langston'),
(3626,1,5,"Good day, $c. What would you like?",12,0,100,1,0,0,1534,0,'Jenn Langston'),
(3626,1,6,"Look what the cat dragged in. What can I get you, $n?",12,0,100,1,0,0,1535,0,'Jenn Langston'),
(3626,1,7,"Do you think I need more pieces of flair?",12,0,100,1,0,0,1536,0,'Jenn Langston'),
(3626,2,0,"Feeling hot? Get something to cool you off down at the Pig and Whistle!",12,7,100,0,0,0,1200,0,'Jenn Langston'),
(3626,2,1,"Nightly brawls and great drinks! Get it all at the Pig and Whistle!",12,7,100,0,0,0,1201,0,'Jenn Langston'),
(3626,2,2,"Get a free beer at the Pig and Whistle!",12,7,100,0,0,0,1202,0,'Jenn Langston'),
(3626,2,3,"Talk to me for a free beer at the Pig and Whistle!",12,7,100,0,0,0,1203,0,'Jenn Langston'),
(3626,2,4,"Smoother than and elf, stronger than an orc! No better drinks in all of Stormwind!",12,7,100,0,0,0,1205,0,'Jenn Langston'),
(3626,2,5,"Tired of all those pansy spellcaster drinks? Try something stronger at the Pig and Whistle!",12,7,100,0,0,0,1206,0,'Jenn Langston'),
(3626,2,6,"Back from a long journey? Rest and relax at the Pig and Whistle!",12,7,100,0,0,0,1207,0,'Jenn Langston'),
(3626,2,7,"Best drinks in Stormwind!",12,7,100,0,0,0,1208,0,'Jenn Langston'),
(1328,0,0,"%s returns the rude gesture to $n.",16,0,100,14,0,0,1521,0,'Elly Langston'),
(1328,1,0,"What can I do for you?",12,0,100,1,0,0,1529,0,'Elly Langston'),
(1328,1,1,"What do you fancy, $g sir:miss,",12,0,100,1,0,0,1530,0,'Elly Langston'),
(1328,1,2,"Been a tough day? A nice ale should loosen those worries right up.",12,0,100,1,0,0,1531,0,'Elly Langston'),
(1328,1,3,"Well hello, $n, what can I get you today?",12,0,100,1,0,0,1532,0,'Elly Langston'),
(1328,1,4,"Hi, What would you like?",12,0,100,1,0,0,1533,0,'Elly Langston'),
(1328,1,5,"Good day, $c. What would you like?",12,0,100,1,0,0,1534,0,'Elly Langston'),
(1328,1,6,"Look what the cat dragged in. What can I get you, $n?",12,0,100,1,0,0,1535,0,'Elly Langston'),
(1328,1,7,"Do you think I need more pieces of flair?",12,0,100,1,0,0,1536,0,'Elly Langston');

UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry` IN (3626,1328);
DELETE FROM `smart_scripts` WHERE `entryorguid` IN (3626,1328) AND `source_type`=0;
DELETE FROM `smart_scripts` WHERE `entryorguid` IN (362600, 362601, 362602, 362603, 362604, 362605, 362606) AND `source_type`=9;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES
(3626,0,0,0,25,0,100,0,0,0,0,0,22,1,0,0,0,0,0,1,0,0,0,0,0,0,0,'Jenn Langston - On Reset - Set Event Phase 1'),
(3626,0,1,0,10,1,100,0,1,30,45000,60000,1,2,0,0,0,0,0,21,35,0,0,0,0,0,0,'Jenn Langston - Out of Combat LOS(Phase 1) - Say Line 2'),
(3626,0,2,0,22,0,100,0,5,5000,5000,0,80,362600,0,0,0,0,0,1,0,0,0,0,0,0,0,'Jenn Langston - On Received Emote Applaud - Run Script'),
(3626,0,3,0,22,0,100,0,17,5000,5000,0,80,362600,0,0,0,0,0,1,0,0,0,0,0,0,0,'Jenn Langston - On Received Emote Bow - Run Script'),
(3626,0,4,0,22,0,100,0,34,12000,12000,0,80,362601,0,0,0,0,0,1,0,0,0,0,0,0,0,'Jenn Langston - On Received Emote Dance - Run Script'),
(3626,0,5,0,22,0,100,0,41,5000,5000,0,80,362602,0,0,0,0,0,1,0,0,0,0,0,0,0,'Jenn Langston - On Received Emote Flex - Run Script'),
(3626,0,6,0,22,0,100,0,58,5000,5000,0,80,362603,0,0,0,0,0,1,0,0,0,0,0,0,0,'Jenn Langston - On Received Emote Kiss - Run Script'),
(3626,0,7,0,22,0,100,0,77,5000,5000,0,80,362604,0,0,0,0,0,1,0,0,0,0,0,0,0,'Jenn Langston - On Received Emote Rude - Run Script'),
(3626,0,8,0,22,0,100,0,84,5000,5000,0,80,362605,0,0,0,0,0,1,0,0,0,0,0,0,0,'Jenn Langston - On Received Emote Shy - Run Script'),
(3626,0,9,0,22,0,100,0,101,8000,8000,0,80,362606,0,0,0,0,0,1,0,0,0,0,0,0,0,'Jenn Langston - On Received Emote Wave - Run Script'),
(362600,9,0,0,0,0,100,0,0,0,0,0,22,2,0,0,0,0,0,1,0,0,0,0,0,0,0,'Jenn Langston - On Script - Set Event Phase 2'),
(362600,9,1,0,0,0,100,0,0,0,0,0,103,1,0,0,0,0,0,1,0,0,0,0,0,0,0,'Jenn Langston - On Script - Set Rooted On'),
(362600,9,2,0,0,0,100,0,0,0,0,0,66,0,0,0,0,0,0,7,0,0,0,0,0,0,0,'Jenn Langston - On Script - Set Orientation'),
(362600,9,3,0,0,0,100,0,1000,1000,0,0,5,2,0,0,0,0,0,1,0,0,0,0,0,0,0,'Jenn Langston - On Script - Play Emote Bow'),
(362600,9,4,0,0,0,100,0,3000,3000,0,0,22,1,0,0,0,0,0,1,0,0,0,0,0,0,0,'Jenn Langston - On Script - Set Event Phase 1'),
(362600,9,5,0,0,0,100,0,0,0,0,0,103,0,0,0,0,0,0,1,0,0,0,0,0,0,0,'Jenn Langston - On Script - Set Rooted Off'),
(362601,9,0,0,0,0,100,0,0,0,0,0,22,2,0,0,0,0,0,1,0,0,0,0,0,0,0,'Jenn Langston - On Script - Set Event Phase 2'),
(362601,9,1,0,0,0,100,0,0,0,0,0,103,1,0,0,0,0,0,1,0,0,0,0,0,0,0,'Jenn Langston - On Script - Set Rooted On'),
(362601,9,2,0,0,0,100,0,0,0,0,0,66,0,0,0,0,0,0,7,0,0,0,0,0,0,0,'Jenn Langston - On Script - Set Orientation'),
(362601,9,3,0,0,0,100,0,1000,1000,0,0,17,10,0,0,0,0,0,1,0,0,0,0,0,0,0,'Jenn Langston - On Script - Set Emote State Dance'),
(362601,9,4,0,0,0,100,0,10000,10000,0,0,17,0,0,0,0,0,0,1,0,0,0,0,0,0,0,'Jenn Langston - On Script - Set Emote State None'),
(362601,9,5,0,0,0,100,0,0,0,0,0,22,1,0,0,0,0,0,1,0,0,0,0,0,0,0,'Jenn Langston - On Script - Set Event Phase 1'),
(362601,9,6,0,0,0,100,0,0,0,0,0,103,0,0,0,0,0,0,1,0,0,0,0,0,0,0,'Jenn Langston - On Script - Set Rooted Off'),
(362602,9,0,0,0,0,100,0,0,0,0,0,22,2,0,0,0,0,0,1,0,0,0,0,0,0,0,'Jenn Langston - On Script - Set Event Phase 2'),
(362602,9,1,0,0,0,100,0,0,0,0,0,103,1,0,0,0,0,0,1,0,0,0,0,0,0,0,'Jenn Langston - On Script - Set Rooted On'),
(362602,9,2,0,0,0,100,0,0,0,0,0,66,0,0,0,0,0,0,7,0,0,0,0,0,0,0,'Jenn Langston - On Script - Set Orientation'),
(362602,9,3,0,0,0,100,0,1000,1000,0,0,5,11,0,0,0,0,0,1,0,0,0,0,0,0,0,'Jenn Langston - On Script - Play Emote Laugh'),
(362602,9,4,0,0,0,100,0,3000,3000,0,0,22,1,0,0,0,0,0,1,0,0,0,0,0,0,0,'Jenn Langston - On Script - Set Event Phase 1'),
(362602,9,5,0,0,0,100,0,0,0,0,0,103,0,0,0,0,0,0,1,0,0,0,0,0,0,0,'Jenn Langston - On Script - Set Rooted Off'),
(362603,9,0,0,0,0,100,0,0,0,0,0,22,2,0,0,0,0,0,1,0,0,0,0,0,0,0,'Jenn Langston - On Script - Set Event Phase 2'),
(362603,9,1,0,0,0,100,0,0,0,0,0,103,1,0,0,0,0,0,1,0,0,0,0,0,0,0,'Jenn Langston - On Script - Set Rooted On'),
(362603,9,2,0,0,0,100,0,0,0,0,0,66,0,0,0,0,0,0,7,0,0,0,0,0,0,0,'Jenn Langston - On Script - Set Orientation'),
(362603,9,3,0,0,0,100,0,1000,1000,0,0,5,24,0,0,0,0,0,1,0,0,0,0,0,0,0,'Jenn Langston - On Script - Play Emote Shy'),
(362603,9,4,0,0,0,100,0,3000,3000,0,0,22,1,0,0,0,0,0,1,0,0,0,0,0,0,0,'Jenn Langston - On Script - Set Event Phase 1'),
(362603,9,5,0,0,0,100,0,0,0,0,0,103,0,0,0,0,0,0,1,0,0,0,0,0,0,0,'Jenn Langston - On Script - Set Rooted Off'),
(362604,9,0,0,0,0,100,0,0,0,0,0,22,2,0,0,0,0,0,1,0,0,0,0,0,0,0,'Jenn Langston - On Script - Set Event Phase 2'),
(362604,9,1,0,0,0,100,0,0,0,0,0,103,1,0,0,0,0,0,1,0,0,0,0,0,0,0,'Jenn Langston - On Script - Set Rooted On'),
(362604,9,2,0,0,0,100,0,0,0,0,0,66,0,0,0,0,0,0,7,0,0,0,0,0,0,0,'Jenn Langston - On Script - Set Orientation'),
(362604,9,3,0,0,0,100,0,1000,1000,0,0,1,0,0,0,0,0,0,7,0,0,0,0,0,0,0,'Jenn Langston - On Script - Say Line 0'),
(362604,9,4,0,0,0,100,0,3000,3000,0,0,22,1,0,0,0,0,0,1,0,0,0,0,0,0,0,'Jenn Langston - On Script - Set Event Phase 1'),
(362604,9,5,0,0,0,100,0,0,0,0,0,103,0,0,0,0,0,0,1,0,0,0,0,0,0,0,'Jenn Langston - On Script - Set Rooted Off'),
(362605,9,0,0,0,0,100,0,0,0,0,0,22,2,0,0,0,0,0,1,0,0,0,0,0,0,0,'Jenn Langston - On Script - Set Event Phase 2'),
(362605,9,1,0,0,0,100,0,0,0,0,0,103,1,0,0,0,0,0,1,0,0,0,0,0,0,0,'Jenn Langston - On Script - Set Rooted On'),
(362605,9,2,0,0,0,100,0,0,0,0,0,66,0,0,0,0,0,0,7,0,0,0,0,0,0,0,'Jenn Langston - On Script - Set Orientation'),
(362605,9,3,0,0,0,100,0,1000,1000,0,0,5,17,0,0,0,0,0,1,0,0,0,0,0,0,0,'Jenn Langston - On Script - Play Emote Kiss'),
(362605,9,4,0,0,0,100,0,3000,3000,0,0,22,1,0,0,0,0,0,1,0,0,0,0,0,0,0,'Jenn Langston - On Script - Set Event Phase 1'),
(362605,9,5,0,0,0,100,0,0,0,0,0,103,0,0,0,0,0,0,1,0,0,0,0,0,0,0,'Jenn Langston - On Script - Set Rooted Off'),
(362606,9,0,0,0,0,100,0,0,0,0,0,22,2,0,0,0,0,0,1,0,0,0,0,0,0,0,'Jenn Langston - On Script - Set Event Phase 2'),
(362606,9,1,0,0,0,100,0,0,0,0,0,103,1,0,0,0,0,0,1,0,0,0,0,0,0,0,'Jenn Langston - On Script - Set Rooted On'),
(362606,9,2,0,0,0,100,0,0,0,0,0,66,0,0,0,0,0,0,7,0,0,0,0,0,0,0,'Jenn Langston - On Script - Set Orientation'),
(362606,9,3,0,0,0,100,0,1000,1000,0,0,1,1,0,0,0,0,0,7,0,0,0,0,0,0,0,'Jenn Langston - On Script - Say Line 1'),
(362606,9,4,0,0,0,100,0,6000,6000,0,0,22,1,0,0,0,0,0,1,0,0,0,0,0,0,0,'Jenn Langston - On Script - Set Event Phase 1'),
(362606,9,5,0,0,0,100,0,0,0,0,0,103,0,0,0,0,0,0,1,0,0,0,0,0,0,0,'Jenn Langston - On Script - Set Rooted Off'),
(1328,0,0,0,25,0,100,0,0,0,0,0,22,1,0,0,0,0,0,1,0,0,0,0,0,0,0,'Elly Langston - On Reset - Set Event Phase 1'),
(1328,0,1,0,22,0,100,0,5,5000,5000,0,80,362600,0,0,0,0,0,1,0,0,0,0,0,0,0,'Elly Langston - On Received Emote Applaud - Run Script'),
(1328,0,2,0,22,0,100,0,17,5000,5000,0,80,362600,0,0,0,0,0,1,0,0,0,0,0,0,0,'Elly Langston - On Received Emote Bow - Run Script'),
(1328,0,3,0,22,0,100,0,34,12000,12000,0,80,362601,0,0,0,0,0,1,0,0,0,0,0,0,0,'Elly Langston - On Received Emote Dance - Run Script'),
(1328,0,4,0,22,0,100,0,41,5000,5000,0,80,362602,0,0,0,0,0,1,0,0,0,0,0,0,0,'Elly Langston - On Received Emote Flex - Run Script'),
(1328,0,5,0,22,0,100,0,58,5000,5000,0,80,362603,0,0,0,0,0,1,0,0,0,0,0,0,0,'Elly Langston - On Received Emote Kiss - Run Script'),
(1328,0,6,0,22,0,100,0,77,5000,5000,0,80,362604,0,0,0,0,0,1,0,0,0,0,0,0,0,'Elly Langston - On Received Emote Rude - Run Script'),
(1328,0,7,0,22,0,100,0,84,5000,5000,0,80,362605,0,0,0,0,0,1,0,0,0,0,0,0,0,'Elly Langston - On Received Emote Shy - Run Script'),
(1328,0,8,0,22,0,100,0,101,8000,8000,0,80,362606,0,0,0,0,0,1,0,0,0,0,0,0,0,'Elly Langston - On Received Emote Wave - Run Script');
