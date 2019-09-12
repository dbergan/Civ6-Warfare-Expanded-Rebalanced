INSERT INTO Types 
(Type,														Kind) 
VALUES
('DB_ABILITY_NAVAL_MELEE_NO_GALLEY_ATTACKING_SEA',			'KIND_ABILITY'),
('DB_ABILITY_ATTACK_SUB_ATTACKING_SEA',						'KIND_ABILITY'),
('DB_ABILITY_NAVAL_RANGED_ATTACKING_LAND',					'KIND_ABILITY'),
('DB_ABILITY_NAVAL_RANGED_ATTACKING_SEA',					'KIND_ABILITY'),
('DB_ABILITY_NAVAL_BOMBARD_ATTACKING_SEA',					'KIND_ABILITY'),
('DB_ABILITY_NAVAL_RAIDER_MOVE_AFTER_ATTACK',				'KIND_ABILITY'),
('DB_ABILITY_NAVAL_RAIDER_ATTACKING_SEA',					'KIND_ABILITY'),
('DB_ABILITY_NAVAL_RAIDER_ATTACKING_NAVAL_MELEE',			'KIND_ABILITY'),

('DB_ABILITY_HEAVY_CAVALRY_ATTACKING_DAMAGED',				'KIND_ABILITY'),
('DB_ABILITY_LIGHT_CAVALRY_MOVE_AFTER_ATTACK',				'KIND_ABILITY'),
('DB_ABILITY_LIGHT_CAVALRY_ATTACKING_HEAVY_INFANTRY',		'KIND_ABILITY'),
('DB_ABILITY_LIGHT_CAVALRY_SUPPORTING_HEAVY_INFANTRY',		'KIND_ABILITY'),
('DB_ABILITY_LIGHT_CAVALRY_FLANKING_FOR_HEAVY_INFANTRY',	'KIND_ABILITY'),

('DB_ABILITY_HEAVY_INFANTRY_DEFENDING',						'KIND_ABILITY'),
('DB_ABILITY_LIGHT_INFANTRY_MOVE_AFTER_ATTACK',				'KIND_ABILITY'),
('DB_ABILITY_LIGHT_INFANTRY_ATTACKING_HEAVY_INFANTRY',		'KIND_ABILITY'),
('DB_ABILITY_LIGHT_INFANTRY_SUPPORTING_HEAVY_INFANTRY',		'KIND_ABILITY'),
('DB_ABILITY_LIGHT_INFANTRY_FLANKING_FOR_HEAVY_INFANTRY',	'KIND_ABILITY'),

('DB_ABILITY_RANGED_ATTACKING_HEAVY_INFANTRY',				'KIND_ABILITY'),
('DB_ABILITY_RANGED_ATTACKING_WAR_ELEPHANTS',				'KIND_ABILITY'),
('DB_ABILITY_RANGED_BONUS_TO_ADJACENT_HEAVY_INFANTRY',		'KIND_ABILITY'),

('DB_ABILITY_WAR_ELEPHANT_ATTACKING_HEAVY_INFANTRY',		'KIND_ABILITY') ;

INSERT INTO Tags	
(Tag,								Vocabulary)
VALUES
('DB_CLASS_JUST_NAVAL_RANGED',		'ABILITY_CLASS'),
('DB_CLASS_NAVAL_MELEE_NO_GALLEY',	'ABILITY_CLASS') ;

INSERT INTO TypeTags
(Type,						Tag)
VALUES
('UNIT_COG',				'DB_CLASS_NAVAL_MELEE_NO_GALLEY'),
('UNIT_CARAVEL',			'DB_CLASS_NAVAL_MELEE_NO_GALLEY'),
('UNIT_CORVETTE',			'DB_CLASS_NAVAL_MELEE_NO_GALLEY'),
('UNIT_IRONCLAD',			'DB_CLASS_NAVAL_MELEE_NO_GALLEY'),
('UNIT_TORPEDO_GUNBOAT',	'DB_CLASS_NAVAL_MELEE_NO_GALLEY'),
('UNIT_DESTROYER',			'DB_CLASS_NAVAL_MELEE_NO_GALLEY'),
('UNIT_ATTACK_SUBMARINE',	'DB_CLASS_NAVAL_MELEE_NO_GALLEY'),
('UNIT_MISSILE_DESTROYER',	'DB_CLASS_NAVAL_MELEE_NO_GALLEY'),

('UNIT_QUADRIREME',			'DB_CLASS_JUST_NAVAL_RANGED'),
('UNIT_GALLEASS',			'DB_CLASS_JUST_NAVAL_RANGED'),
('UNIT_FRIGATE',			'DB_CLASS_JUST_NAVAL_RANGED'),
('UNIT_ARMORED_CRUISER',	'DB_CLASS_JUST_NAVAL_RANGED'),
('UNIT_LIGHT_CRUISER',		'DB_CLASS_JUST_NAVAL_RANGED'),
('UNIT_BATTLECRUISER',		'DB_CLASS_JUST_NAVAL_RANGED'),
('UNIT_MISSILE_CRUISER',	'DB_CLASS_JUST_NAVAL_RANGED'),

('DB_ABILITY_NAVAL_MELEE_NO_GALLEY_ATTACKING_SEA',	'DB_CLASS_NAVAL_MELEE_NO_GALLEY'),
('DB_ABILITY_ATTACK_SUB_ATTACKING_SEA',				'CLASS_ATTACK_SUBMARINE'),
('DB_ABILITY_NAVAL_RANGED_ATTACKING_LAND',			'DB_CLASS_JUST_NAVAL_RANGED'),
('DB_ABILITY_NAVAL_RANGED_ATTACKING_SEA',			'DB_CLASS_JUST_NAVAL_RANGED'),
('DB_ABILITY_NAVAL_BOMBARD_ATTACKING_SEA',			'CLASS_NAVAL_BOMBARD'),
('DB_ABILITY_NAVAL_RAIDER_MOVE_AFTER_ATTACK',		'CLASS_NAVAL_RAIDER'),
('DB_ABILITY_NAVAL_RAIDER_ATTACKING_SEA',			'CLASS_NAVAL_RAIDER'),
('DB_ABILITY_NAVAL_RAIDER_ATTACKING_NAVAL_MELEE',	'CLASS_NAVAL_RAIDER') ;


INSERT INTO RequirementSets
(RequirementSetId,			RequirementSetType)
VALUES
('DB_REQSET_ATTACKING_SEA',			'REQUIREMENTSET_TEST_ALL'),
('DB_REQSET_ATTACKING_LAND',		'REQUIREMENTSET_TEST_ALL'),
('DB_REQSET_ATTACKING_NAVAL_MELEE',	'REQUIREMENTSET_TEST_ALL') ;

INSERT INTO RequirementSetRequirements
(RequirementSetId,			RequirementId)
VALUES
('DB_REQSET_ATTACKING_SEA',			'OPPONENT_IS_SEA_UNIT'),
('DB_REQSET_ATTACKING_SEA',			'PLAYER_IS_ATTACKER_REQUIREMENTS'),
('DB_REQSET_ATTACKING_LAND',		'OPPONENT_IS_LAND_UNIT'),
('DB_REQSET_ATTACKING_LAND',		'PLAYER_IS_ATTACKER_REQUIREMENTS'),
('DB_REQSET_ATTACKING_NAVAL_MELEE',	'OPPONENT_NAVAL_MELEE_REQUIREMENT'),
('DB_REQSET_ATTACKING_NAVAL_MELEE',	'PLAYER_IS_ATTACKER_REQUIREMENTS') ;


INSERT INTO UnitAbilities
(UnitAbilityType,					Name,								Description)
VALUES	
('DB_ABILITY_NAVAL_MELEE_NO_GALLEY_ATTACKING_SEA',	'LOC_DB_ABILITY_NAVAL_MELEE_NO_GALLEY_ATTACKING_SEA_NAME',	'LOC_DB_ABILITY_NAVAL_MELEE_NO_GALLEY_ATTACKING_SEA_DESCRIPTION'),
('DB_ABILITY_ATTACK_SUB_ATTACKING_SEA',				'LOC_DB_ABILITY_ATTACK_SUB_ATTACKING_SEA_NAME',				'LOC_DB_ABILITY_ATTACK_SUB_ATTACKING_SEA_DESCRIPTION'),
('DB_ABILITY_NAVAL_RANGED_ATTACKING_LAND',			'LOC_DB_ABILITY_NAVAL_RANGED_ATTACKING_LAND_NAME',			'LOC_DB_ABILITY_NAVAL_RANGED_ATTACKING_LAND_DESCRIPTION'),
('DB_ABILITY_NAVAL_RANGED_ATTACKING_SEA',			'LOC_DB_ABILITY_NAVAL_RANGED_ATTACKING_SEA_NAME',			'LOC_DB_ABILITY_NAVAL_RANGED_ATTACKING_SEA_DESCRIPTION'),
('DB_ABILITY_NAVAL_BOMBARD_ATTACKING_SEA',			'LOC_DB_ABILITY_NAVAL_BOMBARD_ATTACKING_SEA_NAME',			'LOC_DB_ABILITY_NAVAL_BOMBARD_ATTACKING_SEA_DESCRIPTION'),
('DB_ABILITY_NAVAL_RAIDER_ATTACKING_SEA',			'LOC_DB_ABILITY_NAVAL_RAIDER_ATTACKING_SEA_NAME',			'LOC_DB_ABILITY_NAVAL_RAIDER_ATTACKING_SEA_DESCRIPTION'),
('DB_ABILITY_NAVAL_RAIDER_ATTACKING_NAVAL_MELEE',	'LOC_DB_ABILITY_NAVAL_RAIDER_ATTACKING_NAVAL_MELEE_NAME',	'LOC_DB_ABILITY_NAVAL_RAIDER_ATTACKING_NAVAL_MELEE_DESCRIPTION'),
('DB_ABILITY_NAVAL_RAIDER_MOVE_AFTER_ATTACK',		'LOC_DB_ABILITY_NAVAL_RAIDER_MOVE_AFTER_ATTACK_NAME',		'LOC_DB_ABILITY_NAVAL_RAIDER_MOVE_AFTER_ATTACK_DESCRIPTION'),
('DB_ABILITY_ATTACK_SUB_MOVE_AFTER_ATTACK',			'LOC_DB_ABILITY_ATTACK_SUB_MOVE_AFTER_ATTACK_NAME',			'LOC_DB_ABILITY_ATTACK_SUB_MOVE_AFTER_ATTACK_DESCRIPTION') ;

INSERT INTO UnitAbilityModifiers
(UnitAbilityType,					ModifierId)
VALUES	
('DB_ABILITY_NAVAL_MELEE_NO_GALLEY_ATTACKING_SEA',	'DB_MODIFIER_NAVAL_MELEE_NO_GALLEY_ATTACKING_SEA'),
('DB_ABILITY_ATTACK_SUB_ATTACKING_SEA',				'DB_MODIFIER_ATTACK_SUB_ATTACKING_SEA'),
('DB_ABILITY_NAVAL_RANGED_ATTACKING_LAND',			'DB_MODIFIER_NAVAL_RANGED_ATTACKING_LAND'),
('DB_ABILITY_NAVAL_RANGED_ATTACKING_SEA',			'DB_MODIFIER_NAVAL_RANGED_ATTACKING_SEA'),
('DB_ABILITY_NAVAL_BOMBARD_ATTACKING_SEA',			'DB_MODIFIER_NAVAL_BOMBARD_ATTACKING_SEA'),
('DB_ABILITY_NAVAL_RAIDER_ATTACKING_SEA',			'DB_MODIFIER_NAVAL_RAIDER_ATTACKING_SEA'),
('DB_ABILITY_NAVAL_RAIDER_ATTACKING_NAVAL_MELEE',	'DB_MODIFIER_NAVAL_RAIDER_ATTACKING_NAVAL_MELEE'),
('DB_ABILITY_NAVAL_RAIDER_MOVE_AFTER_ATTACK',		'DB_MODIFIER_NAVAL_RAIDER_MOVE_AFTER_ATTACK'),
('DB_ABILITY_ATTACK_SUB_MOVE_AFTER_ATTACK',			'DB_MODIFIER_ATTACK_SUB_MOVE_AFTER_ATTACK') ;

INSERT INTO Modifiers
(ModifierId,						ModifierType,					SubjectRequirementSetId)
VALUES	
('DB_MODIFIER_NAVAL_MELEE_NO_GALLEY_ATTACKING_SEA',	'MODIFIER_UNIT_ADJUST_COMBAT_STRENGTH',			'DB_REQSET_ATTACKING_SEA'),
('DB_MODIFIER_ATTACK_SUB_ATTACKING_SEA',			'MODIFIER_UNIT_ADJUST_COMBAT_STRENGTH',			'DB_REQSET_ATTACKING_SEA'),
('DB_MODIFIER_NAVAL_RANGED_ATTACKING_LAND',			'MODIFIER_UNIT_ADJUST_COMBAT_STRENGTH',			'DB_REQSET_ATTACKING_LAND'),
('DB_MODIFIER_NAVAL_RANGED_ATTACKING_SEA',			'MODIFIER_UNIT_ADJUST_COMBAT_STRENGTH',			'DB_REQSET_ATTACKING_SEA'),
('DB_MODIFIER_NAVAL_BOMBARD_ATTACKING_SEA',			'MODIFIER_UNIT_ADJUST_COMBAT_STRENGTH',			'DB_REQSET_ATTACKING_SEA'),
('DB_MODIFIER_NAVAL_RAIDER_ATTACKING_SEA',			'MODIFIER_UNIT_ADJUST_COMBAT_STRENGTH',			'DB_REQSET_ATTACKING_SEA'),
('DB_MODIFIER_NAVAL_RAIDER_ATTACKING_NAVAL_MELEE',	'MODIFIER_UNIT_ADJUST_COMBAT_STRENGTH',			'DB_REQSET_ATTACKING_NAVAL_MELEE'),
('DB_MODIFIER_NAVAL_RAIDER_MOVE_AFTER_ATTACK',		'MODIFIER_PLAYER_UNIT_ADJUST_ATTACK_AND_MOVE',	null),
('DB_MODIFIER_ATTACK_SUB_MOVE_AFTER_ATTACK',		'MODIFIER_PLAYER_UNIT_ADJUST_ATTACK_AND_MOVE',	null) ;

INSERT INTO ModifierArguments
(ModifierId,						Name,		Value)
VALUES
('DB_MODIFIER_NAVAL_MELEE_NO_GALLEY_ATTACKING_SEA',	'Amount',	8),
('DB_MODIFIER_ATTACK_SUB_ATTACKING_SEA',			'Amount',	49),
('DB_MODIFIER_NAVAL_RANGED_ATTACKING_LAND',			'Amount',	5),
('DB_MODIFIER_NAVAL_RANGED_ATTACKING_SEA',			'Amount',	-5),
('DB_MODIFIER_NAVAL_BOMBARD_ATTACKING_SEA',			'Amount',	-17),
('DB_MODIFIER_NAVAL_RAIDER_ATTACKING_SEA',			'Amount',	17),
('DB_MODIFIER_NAVAL_RAIDER_ATTACKING_NAVAL_MELEE',	'Amount',	3),
('DB_MODIFIER_NAVAL_RAIDER_MOVE_AFTER_ATTACK',		'CanMove',	1),
('DB_MODIFIER_ATTACK_SUB_MOVE_AFTER_ATTACK',		'CanMove',	1) ;

INSERT INTO ModifierStrings
(ModifierId,						Context,	Text)
VALUES	
('DB_MODIFIER_NAVAL_MELEE_NO_GALLEY_ATTACKING_SEA',	'Preview',	'LOC_DB_MODIFIER_NAVAL_MELEE_NO_GALLEY_ATTACKING_SEA_PREVIEW'),
('DB_MODIFIER_ATTACK_SUB_ATTACKING_SEA',			'Preview',	'LOC_DB_MODIFIER_ATTACK_SUB_ATTACKING_SEA_PREVIEW'),
('DB_MODIFIER_NAVAL_RANGED_ATTACKING_LAND',			'Preview',	'LOC_DB_MODIFIER_NAVAL_RANGED_ATTACKING_LAND_PREVIEW'),
('DB_MODIFIER_NAVAL_RANGED_ATTACKING_SEA',			'Preview',	'LOC_DB_MODIFIER_NAVAL_RANGED_ATTACKING_SEA_PREVIEW'),
('DB_MODIFIER_NAVAL_BOMBARD_ATTACKING_SEA',			'Preview',	'LOC_DB_MODIFIER_NAVAL_BOMBARD_ATTACKING_SEA_PREVIEW'),
('DB_MODIFIER_NAVAL_RAIDER_ATTACKING_SEA',			'Preview',	'LOC_DB_MODIFIER_NAVAL_RAIDER_ATTACKING_SEA_PREVIEW'),
('DB_MODIFIER_NAVAL_RAIDER_ATTACKING_NAVAL_MELEE',	'Preview',	'LOC_DB_MODIFIER_NAVAL_RAIDER_ATTACKING_NAVAL_MELEE_PREVIEW') ;