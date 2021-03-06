-- waypoint_data struct changes
ALTER TABLE `waypoint_data`
ADD COLUMN `orientation`  float NOT NULL DEFAULT 0 AFTER `position_z`;

DELETE FROM `creature_formations` WHERE `leaderGUID`=57528;
INSERT INTO `creature_formations` (`leaderGUID`, `memberGUID`, `dist`, `angle`, `groupAI`) VALUES
(57528, 57528, 0, 0, 2),
(57528, 57527, 3, 90, 2);

-- Pathing for Thrallmar Grunt Entry: 16580 'TDB FORMAT' 
SET @NPC := 57528;
SET @PATH := @NPC * 10;
UPDATE `creature` SET `spawndist`=0,`MovementType`=2,`position_x`=132.3433,`position_y`=2762.987,`position_z`=102.3826 WHERE `guid`=@NPC;
DELETE FROM `creature_addon` WHERE `guid`=@NPC;
INSERT INTO `creature_addon` (`guid`,`path_id`,`mount`,`bytes1`,`bytes2`,`emote`,`auras`) VALUES (@NPC,@PATH,0,0,1,0, '');
DELETE FROM `waypoint_data` WHERE `id`=@PATH;
INSERT INTO `waypoint_data` (`id`,`point`,`position_x`,`position_y`,`position_z`,`orientation`,`delay`,`move_flag`,`action`,`action_chance`,`wpguid`) VALUES
(@PATH,1,132.3433,2762.987,102.3826,0,0,0,0,100,0),
(@PATH,2,121.0521,2749.356,98.25848,0,0,0,0,100,0),
(@PATH,3,109.0274,2741.556,94.49025,0,0,0,0,100,0),
(@PATH,4,95.7988,2726.423,89.95798,0,0,0,0,100,0),
(@PATH,5,83.33932,2712.466,86.36182,0,0,0,0,100,0),
(@PATH,6,75.62203,2702.179,84.19798,0,0,0,0,100,0),
(@PATH,7,68.19456,2688.539,81.85039,0,0,0,0,100,0),
(@PATH,8,66.99038,2685.902,81.33047,0,0,0,0,100,0),
(@PATH,9,82.17162,2678.548,81.62874,0,0,0,0,100,0),
(@PATH,10,96.37463,2678.292,82.75209,0,0,0,0,100,0),
(@PATH,11,112.1558,2676.275,83.38298,0,0,0,0,100,0),
(@PATH,12,119.6769,2675.056,83.7209,0,0,0,0,100,0),
(@PATH,13,111.278,2648.706,80.93124,0,0,0,0,100,0),
(@PATH,14,109.0044,2646.347,80.20769,0,0,0,0,100,0),
(@PATH,15,116.2792,2653.762,81.89182,0,0,0,0,100,0),
(@PATH,16,122.4159,2660.933,84.18261,0,0,0,0,100,0),
(@PATH,17,123.3134,2662.276,84.17096,0,0,0,0,100,0),
(@PATH,18,103.6847,2670.964,83.00417,0,0,0,0,100,0),
(@PATH,19,80.54628,2673.75,81.59075,0,0,0,0,100,0),
(@PATH,20,73.74189,2676.277,80.69298,0,0,0,0,100,0),
(@PATH,21,69.13676,2697.863,83.02922,0,0,0,0,100,0),
(@PATH,22,75.02055,2712.901,85.39117,0,0,0,0,100,0),
(@PATH,23,87.82365,2724.378,88.41669,0,0,0,0,100,0),
(@PATH,24,104.5768,2742.848,93.40324,0,0,0,0,100,0),
(@PATH,25,117.3608,2752.192,97.77188,0,0,0,0,100,0),
(@PATH,26,129.486,2763.919,102.3025,0,0,0,0,100,0);
-- 0x1C09E4424010310000002C00015AED53 .go 132.3433 2762.987 102.3826

DELETE FROM `creature_formations` WHERE `leaderGUID`=57506;
INSERT INTO `creature_formations` (`leaderGUID`, `memberGUID`, `dist`, `angle`, `groupAI`) VALUES
(57506, 57506, 0, 0, 2),
(57506, 57507, 3, 90, 2);

-- Pathing for Thrallmar Grunt Entry: 16580 'TDB FORMAT' 
SET @NPC := 57506;
SET @PATH := @NPC * 10;
UPDATE `creature` SET `spawndist`=0,`MovementType`=2,`position_x`=160.0679,`position_y`=2783.137,`position_z`=111.3373 WHERE `guid`=@NPC;
DELETE FROM `creature_addon` WHERE `guid`=@NPC;
INSERT INTO `creature_addon` (`guid`,`path_id`,`mount`,`bytes1`,`bytes2`,`emote`,`auras`) VALUES (@NPC,@PATH,0,0,1,0, '');
DELETE FROM `waypoint_data` WHERE `id`=@PATH;
INSERT INTO `waypoint_data` (`id`,`point`,`position_x`,`position_y`,`position_z`,`orientation`,`delay`,`move_flag`,`action`,`action_chance`,`wpguid`) VALUES
(@PATH,1,160.0679,2783.137,111.3373,0,0,0,0,100,0),
(@PATH,2,162.4358,2778.617,110.5461,0,0,0,0,100,0),
(@PATH,3,172.7094,2774.508,110.6423,0,0,0,0,100,0),
(@PATH,4,186.6513,2777.03,113.5835,0,0,0,0,100,0),
(@PATH,5,200.0523,2782.693,116.7996,0,0,0,0,100,0),
(@PATH,6,209.4241,2784.837,118.5891,0,0,0,0,100,0),
(@PATH,7,222.8512,2785.429,121.0061,0,0,0,0,100,0),
(@PATH,8,233.1155,2787.613,123.6816,0,0,0,0,100,0),
(@PATH,9,237.861,2791.877,125.6136,0,0,0,0,100,0),
(@PATH,10,239.1323,2799.748,127.3235,0,0,0,0,100,0),
(@PATH,11,239.1207,2795.199,126.621,0,0,0,0,100,0),
(@PATH,12,235.6156,2789.706,124.6459,0,0,0,0,100,0),
(@PATH,13,227.0757,2786.192,122.1876,0,0,0,0,100,0),
(@PATH,14,212.622,2785.389,119.2345,0,0,0,0,100,0),
(@PATH,15,205.132,2784.269,117.806,0,0,0,0,100,0),
(@PATH,16,188.0606,2777.626,114.1675,0,0,0,0,100,0),
(@PATH,17,175.7908,2774.627,111.4541,0,0,0,0,100,0),
(@PATH,18,168.39,2775.401,110.4383,0,0,0,0,100,0),
(@PATH,19,160.1083,2782.976,111.366,0,0,0,0,100,0);
-- 0x1C09E4424010310000002C00015AED54 .go 160.0679 2783.137 111.3373

DELETE FROM `creature_formations` WHERE `leaderGUID`=57965;
INSERT INTO `creature_formations` (`leaderGUID`, `memberGUID`, `dist`, `angle`, `groupAI`) VALUES
(57594, 57594, 0, 0, 2),
(57594, 57595, 5, 0, 2),
(57594, 57596, 10, 0, 2),
(57594, 57597, 15, 0, 2);

-- Position for Thrallmar Wolf Raider
UPDATE `creature` SET `spawndist`=0,`MovementType`=2,`position_x`=196.28,`position_y`=2781.241,`position_z`=116.9637 WHERE `guid` IN (57595, 57596, 57597);

-- Pathing for Thrallmar Wolf Rider Entry: 16599 'TDB FORMAT' 
SET @NPC := 57594;
SET @PATH := @NPC * 10;
UPDATE `creature` SET `spawndist`=0,`MovementType`=2,`position_x`=196.28,`position_y`=2781.241,`position_z`=115.9637 WHERE `guid`=@NPC;
DELETE FROM `creature_addon` WHERE `guid`=@NPC;
INSERT INTO `creature_addon` (`guid`,`path_id`,`mount`,`bytes1`,`bytes2`,`emote`,`auras`) VALUES (@NPC,@PATH,14334,0,1,0, '');
DELETE FROM `waypoint_data` WHERE `id`=@PATH;
INSERT INTO `waypoint_data` (`id`,`point`,`position_x`,`position_y`,`position_z`,`orientation`,`delay`,`move_flag`,`action`,`action_chance`,`wpguid`) VALUES
(@PATH,1,196.28,2781.241,115.9637,0,0,1,0,100,0),
(@PATH,2,173.7009,2773.865,111.0617,0,0,1,0,100,0),
(@PATH,3,144.2007,2764.989,105.126,0,0,1,0,100,0),
(@PATH,4,113.7401,2748.569,96.21298,0,0,1,0,100,0),
(@PATH,5,94.41273,2728.12,89.81252,0,0,1,0,100,0),
(@PATH,6,65.77112,2693.39,82.38187,0,0,1,0,100,0),
(@PATH,7,36.76459,2661.932,76.78915,0,0,1,0,100,0),
(@PATH,8,17.91903,2638.404,72.61198,0,0,1,0,100,0),
(@PATH,9,5.355525,2605.847,68.47747,0,0,1,0,100,0),
(@PATH,10,8.97837,2575.031,65.2146,0,0,1,0,100,0),
(@PATH,11,18.05011,2542.307,61.65181,0,0,1,0,100,0),
(@PATH,12,20.63871,2501.002,57.12801,0,0,1,0,100,0),
(@PATH,13,14.14331,2460.918,53.1017,0,0,1,0,100,0),
(@PATH,14,7.45386,2419.164,52.73537,0,0,1,0,100,0),
(@PATH,15,-14.25867,2395.82,52.69493,0,0,1,0,100,0),
(@PATH,16,-31.19849,2384.302,53.77038,0,0,1,0,100,0),
(@PATH,17,0.05626106,2409.986,52.19868,0,0,1,0,100,0),
(@PATH,18,13.30882,2456.084,52.34318,0,0,1,0,100,0),
(@PATH,19,20.00414,2492.995,56.18382,0,0,1,0,100,0),
(@PATH,20,19.18841,2536.792,60.81985,0,0,1,0,100,0),
(@PATH,21,11.05238,2567.616,64.15677,0,0,1,0,100,0),
(@PATH,22,4.750309,2601.44,67.78731,0,0,1,0,100,0),
(@PATH,23,13.32799,2630.8,71.16357,0,0,1,0,100,0),
(@PATH,24,32.40791,2656.75,75.65665,0,0,1,0,100,0),
(@PATH,25,62.52131,2689.98,81.53972,0,0,1,0,100,0),
(@PATH,26,92.98247,2726.685,89.31989,0,0,1,0,100,0),
(@PATH,27,109.4178,2744.999,94.76643,0,0,1,0,100,0),
(@PATH,28,142.0419,2764.24,104.1994,0,0,1,0,100,0),
(@PATH,29,171.1686,2772.708,110.2985,0,0,1,0,100,0);
-- 0x1C09E442401035C000002C00005AED54 .go 196.28 2781.241 115.9637

-- Pathing for Thrallmar Peon Entry: 16591 'TDB FORMAT' 
SET @NPC := 57575;
SET @PATH := @NPC * 10;
UPDATE `creature` SET `spawndist`=0,`MovementType`=2,`position_x`=55.27306,`position_y`=2654.043,`position_z`=78.42071 WHERE `guid`=@NPC;
DELETE FROM `creature_addon` WHERE `guid`=@NPC;
INSERT INTO `creature_addon` (`guid`,`path_id`,`mount`,`bytes1`,`bytes2`,`emote`,`auras`) VALUES (@NPC,@PATH,0,0,1,69, '');
DELETE FROM `waypoint_data` WHERE `id`=@PATH;
INSERT INTO `waypoint_data` (`id`,`point`,`position_x`,`position_y`,`position_z`,`orientation`,`delay`,`move_flag`,`action`,`action_chance`,`wpguid`) VALUES
(@PATH,1,55.27306,2654.043,78.42071,0,0,0,0,100,0),
(@PATH,2,60.95808,2657.462,79.7836,0,0,0,0,100,0),
(@PATH,3,64.60378,2660.895,80.497,0,0,0,0,100,0),
(@PATH,4,66.75615,2663.12,80.74207,0,0,0,0,100,0),
(@PATH,5,65.12799,2682.579,80.74263,0,0,0,0,100,0),
(@PATH,6,65.82681,2693.285,82.36795,0,0,0,0,100,0),
(@PATH,7,75.21483,2707.858,84.6664,0,0,0,0,100,0),
(@PATH,8,84.96182,2718.535,87.05235,0,0,0,0,100,0),
(@PATH,9,95.03929,2728.742,90.13913,0,0,0,0,100,0),
(@PATH,10,106.4619,2744.316,94.00992,0,0,0,0,100,0),
(@PATH,11,123.8118,2755.292,99.37874,0,0,0,0,100,0),
(@PATH,12,135.8948,2760.833,102.7533,0,0,0,0,100,0),
(@PATH,13,155.0525,2769.579,107.7352,0,0,0,0,100,0),
(@PATH,14,158.3794,2773.243,108.8904,0,0,0,0,100,0),
(@PATH,15,159.9402,2783.268,111.4848,0,0,0,0,100,0),
(@PATH,16,161.3573,2786.643,112.5604,0,0,0,0,100,0),
(@PATH,17,165.1619,2790.098,113.5347,0,120000,0,0,100,0),
(@PATH,18,165.2408,2775.052,109.6661,3,0,0,0,100,0),
(@PATH,19,161.6743,2781.431,111.1523,0,0,0,0,100,0),
(@PATH,20,161.0955,2772.586,109.2963,0,0,0,0,100,0),
(@PATH,21,143.7382,2764.468,104.6033,0,0,0,0,100,0),
(@PATH,22,122.8,2754.483,99.03847,0,0,0,0,100,0),
(@PATH,23,109.0177,2745.05,94.75985,0,0,0,0,100,0),
(@PATH,24,96.74924,2729.785,90.4996,0,0,0,0,100,0),
(@PATH,25,83.87657,2715.537,86.72665,0,0,0,0,100,0),
(@PATH,26,75.78943,2705.43,84.61099,0,0,0,0,100,0),
(@PATH,27,64.73528,2690.525,81.81812,0,0,0,0,100,0),
(@PATH,28,62.68444,2679.1,80.26672,0,0,0,0,100,0),
(@PATH,29,62.20171,2674.227,80.11406,0,0,0,0,100,0),
(@PATH,30,62.53893,2659.067,79.85791,0,0,0,0,100,0),
(@PATH,31,53.87121,2650.147,77.64667,0,0,0,0,100,0),
(@PATH,32,52.78874,2648.066,76.98107,0,120000,0,0,100,0);
-- 0x1C09E442401033C000002C00005AED55 .go 55.27306 2654.043 78.42071