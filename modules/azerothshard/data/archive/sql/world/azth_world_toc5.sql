DELETE FROM disables where sourceType = 2 AND entry = 650; -- Enable Trial of the champions instance
-- FULL `creature_template` of entry 36558
DELETE FROM `creature_template` WHERE (entry = 36558);
INSERT INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid1`, `modelid2`, `modelid3`, `modelid4`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`, `faction`, `npcflag`, `speed_walk`, `speed_run`, `scale`, `rank`, `dmgschool`, `BaseAttackTime`, `RangeAttackTime`, `BaseVariance`, `RangeVariance`, `unit_class`, `unit_flags`, `unit_flags2`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `type`, `type_flags`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `spell5`, `spell6`, `spell7`, `spell8`, `PetSpellDataId`, `VehicleId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `InhabitType`, `HoverHeight`, `HealthModifier`, `ManaModifier`, `ArmorModifier`, `DamageModifier`, `ExperienceModifier`, `RacialLeader`, `movementId`, `RegenHealth`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`, `VerifiedBuild`) VALUES
(36558, 0, 0, 0, 0, 0, 29283, 0, 0, 0, 'Argent Battleworg', '', 'vehichleCursor', 0, 80, 80, 2, 35, 16777216, 1, 1.57143, 1, 0, 0, 2000, 2000, 1, 1, 1, 0, 2048, 0, 0, 0, 0, 0, 0, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 68505, 62575, 68282, 62552, 0, 0, 0, 0, 0, 486, 0, 0, '', 0, 3, 1, 3.96825, 1, 1, 1, 1, 0, 157, 1, 0, 0, '', 12340);
-- FULL `creature_template` of entry 35644
DELETE FROM `creature_template` WHERE (entry = 35644);
INSERT INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid1`, `modelid2`, `modelid3`, `modelid4`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`, `faction`, `npcflag`, `speed_walk`, `speed_run`, `scale`, `rank`, `dmgschool`, `BaseAttackTime`, `RangeAttackTime`, `BaseVariance`, `RangeVariance`, `unit_class`, `unit_flags`, `unit_flags2`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `type`, `type_flags`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `spell5`, `spell6`, `spell7`, `spell8`, `PetSpellDataId`, `VehicleId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `InhabitType`, `HoverHeight`, `HealthModifier`, `ManaModifier`, `ArmorModifier`, `DamageModifier`, `ExperienceModifier`, `RacialLeader`, `movementId`, `RegenHealth`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`, `VerifiedBuild`) VALUES
(35644, 0, 0, 0, 0, 0, 28918, 0, 0, 0, 'Argent Warhorse', '', 'vehichleCursor', 0, 80, 80, 2, 35, 16777216, 1, 1.57143, 1, 0, 0, 2000, 2000, 1, 1, 1, 0, 2048, 0, 0, 0, 0, 0, 0, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 68505, 62575, 68282, 66482, 0, 0, 0, 0, 0, 486, 0, 0, '', 0, 3, 1, 3.96825, 1, 1, 1, 1, 0, 157, 1, 0, 0, '', 12340);
-- EQUIP ARGENT LANCE TO RIDE VEHICLE
DELETE from conditions where SourceTypeOrReferenceId = 16 and SourceEntry = 35644;
INSERT INTO `conditions` (`SourceTypeOrReferenceId`, `SourceGroup`, `SourceEntry`, `SourceId`, `ElseGroup`, `ConditionTypeOrReference`, `ConditionTarget`, `ConditionValue1`, `ConditionValue2`, `ConditionValue3`, `NegativeCondition`, `ErrorType`, `ErrorTextId`, `ScriptName`, `Comment`) VALUES (16, 0, 35644, 0, 0, 3, 0, 46106, 0, 0, 0, 0, 0, '', 'Argent Lance must be equipped in order to mount a vehicle');
DELETE from conditions where SourceTypeOrReferenceId = 16 and SourceEntry = 36558;
INSERT INTO `conditions` (`SourceTypeOrReferenceId`, `SourceGroup`, `SourceEntry`, `SourceId`, `ElseGroup`, `ConditionTypeOrReference`, `ConditionTarget`, `ConditionValue1`, `ConditionValue2`, `ConditionValue3`, `NegativeCondition`, `ErrorType`, `ErrorTextId`, `ScriptName`, `Comment`) VALUES (16, 0, 36558, 0, 0, 3, 0, 46106, 0, 0, 0, 0, 0, '', 'Argent Lance must be equipped in order to mount a vehicle');
-- MINOR CHAMPIONS
UPDATE creature_template SET AIName = '', ScriptName = '' WHERE entry in (35326,35325,35327,35314,35323,35330,35331,35332,35328,35329);


-- ARGENT CHAMPIONS FACTION
UPDATE creature_template SET faction = 14 WHERE entry in (35119, 35518, 34928, 35517);