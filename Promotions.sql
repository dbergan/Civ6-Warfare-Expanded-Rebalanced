-----------------------------------------------
-----------------------------------------------
-- Promotion Classes
-----------------------------------------------
-----------------------------------------------
INSERT INTO Types (Type, Kind) 
SELECT 'BW_PROMOTION_CLASS_' || ClassName, 'KIND_PROMOTION_CLASS' FROM BW_NewUnitClasses WHERE ClassName != 'RECON' ;

INSERT INTO UnitPromotionClasses (PromotionClassType, Name) 
SELECT 'BW_PROMOTION_CLASS_' || ClassName, 'BW_LOC_PROMOTION_CLASS_' || ClassName || '_NAME' FROM BW_NewUnitClasses WHERE ClassName != 'RECON' ;


-----------------------------------------------
-----------------------------------------------
-- Promotions
-----------------------------------------------
-----------------------------------------------

-- Recon
INSERT INTO Types 
(Type,								Kind)
VALUES
('BW_PROMOTION_RECON_DOUBLE_TIME',	'KIND_PROMOTION'),
('BW_PROMOTION_RECON_SPYGLASS',		'KIND_PROMOTION'),
('BW_PROMOTION_RECON_PATHFINDER',	'KIND_PROMOTION'),
('BW_PROMOTION_RECON_MAPMAKER',		'KIND_PROMOTION'),
('BW_PROMOTION_RECON_DISGUISE',		'KIND_PROMOTION'),
('BW_PROMOTION_RECON_ELUSIVE',		'KIND_PROMOTION'),
('BW_PROMOTION_RECON_TROOP_INTEL',	'KIND_PROMOTION'),
('BW_PROMOTION_RECON_STEALTH',		'KIND_PROMOTION') 
;

DELETE FROM UnitPromotions WHERE PromotionClass = 'PROMOTION_CLASS_RECON' ;
INSERT INTO UnitPromotions
(UnitPromotionType,					Level,	Column,	PromotionClass,				Name,										Description) 
VALUES
('BW_PROMOTION_RECON_PATHFINDER',	1,		1,		'PROMOTION_CLASS_RECON',	'BW_LOC_PROMOTION_RECON_PATHFINDER_NAME',	'BW_LOC_PROMOTION_RECON_PATHFINDER_DESCRIPTION'),
('BW_PROMOTION_RECON_DOUBLE_TIME',	1,		3,		'PROMOTION_CLASS_RECON',	'BW_LOC_PROMOTION_DOUBLE_TIME_NAME',		'BW_LOC_PROMOTION_DOUBLE_TIME_DESCRIPTION'),
('BW_PROMOTION_RECON_MAPMAKER',		2,		1,		'PROMOTION_CLASS_RECON',	'BW_LOC_PROMOTION_RECON_MAPMAKER_NAME',		'BW_LOC_PROMOTION_RECON_MAPMAKER_DESCRIPTION'),
('BW_PROMOTION_RECON_SPYGLASS',		2,		3,		'PROMOTION_CLASS_RECON',	'BW_LOC_PROMOTION_SPYGLASS_NAME',			'BW_LOC_PROMOTION_SPYGLASS_DESCRIPTION'),
('BW_PROMOTION_RECON_DISGUISE',		3,		1,		'PROMOTION_CLASS_RECON',	'BW_LOC_PROMOTION_RECON_DISGUISE_NAME',		'BW_LOC_PROMOTION_RECON_DISGUISE_DESCRIPTION'),
('BW_PROMOTION_RECON_ELUSIVE',		3,		3,		'PROMOTION_CLASS_RECON',	'BW_LOC_PROMOTION_ELUSIVE_NAME',			'BW_LOC_PROMOTION_ELUSIVE_DESCRIPTION'),
('BW_PROMOTION_RECON_TROOP_INTEL',	4,		1,		'PROMOTION_CLASS_RECON',	'BW_LOC_PROMOTION_RECON_TROOP_INTEL_NAME',	'BW_LOC_PROMOTION_RECON_TROOP_INTEL_DESCRIPTION'),
('BW_PROMOTION_RECON_STEALTH',		4,		3,		'PROMOTION_CLASS_RECON',	'BW_LOC_PROMOTION_STEALTH_NAME',			'BW_LOC_PROMOTION_STEALTH_DESCRIPTION')
;

INSERT INTO UnitPromotionModifiers
(UnitPromotionType,					ModifierId)
VALUES
('BW_PROMOTION_RECON_PATHFINDER',	'BW_MOD_MOVEMENT_IGNORE_TERRAIN'),
('BW_PROMOTION_RECON_PATHFINDER',	'BW_MOD_MOVEMENT_IGNORE_RIVER'),
('BW_PROMOTION_RECON_DOUBLE_TIME',	'BW_MOD_+1_MOVEMENT'),
('BW_PROMOTION_RECON_MAPMAKER',		'BW_MOD_RECON_MAPMAKER'),
('BW_PROMOTION_RECON_MAPMAKER',		'BW_MOD_RECON_MAPMAKER2'),
('BW_PROMOTION_RECON_SPYGLASS',		'BW_MOD_+1_SIGHT'),
('BW_PROMOTION_RECON_DISGUISE',		'BW_MOD_ENTER_FOREIGN'),
('BW_PROMOTION_RECON_ELUSIVE',		'BW_MOD_IGNORE_ZOC'),
('BW_PROMOTION_RECON_TROOP_INTEL',	'BW_MOD_RECON_TROOP_INTEL'),
('BW_PROMOTION_RECON_STEALTH',		'BW_MOD_STEALTH')
;

 INSERT INTO UnitPromotionPrereqs
 (UnitPromotion,								PrereqUnitPromotion)
 VALUES
 ('BW_PROMOTION_RECON_MAPMAKER',				'BW_PROMOTION_RECON_PATHFINDER')
 ;


-- Heavy Infantry
INSERT INTO Types 
(Type,											Kind)
VALUES
('BW_PROMOTION_HEAVY_INFANTRY_DOUBLE_TIME',		'KIND_PROMOTION'),
('BW_PROMOTION_HEAVY_INFANTRY_DOUBLE_STRIKE',	'KIND_PROMOTION'),
('BW_PROMOTION_HEAVY_INFANTRY_IMPEL',			'KIND_PROMOTION'),
('BW_PROMOTION_HEAVY_INFANTRY_PHALANX',			'KIND_PROMOTION'),
('BW_PROMOTION_HEAVY_INFANTRY_ZONE_OF_CONTROL',	'KIND_PROMOTION'),
('BW_PROMOTION_HEAVY_INFANTRY_OBLIQUE_ORDER',	'KIND_PROMOTION'),
('BW_PROMOTION_HEAVY_INFANTRY_TESTUDO',			'KIND_PROMOTION')
;

DELETE FROM UnitPromotions WHERE PromotionClass = 'BW_PROMOTION_CLASS_HEAVY_INFANTRY' ;
INSERT INTO UnitPromotions
(UnitPromotionType,								Level,	Column,	PromotionClass,							Name,													Description) 
VALUES
('BW_PROMOTION_HEAVY_INFANTRY_DOUBLE_TIME',		1,		1,		'BW_PROMOTION_CLASS_HEAVY_INFANTRY',	'BW_LOC_PROMOTION_DOUBLE_TIME_NAME',					'BW_LOC_PROMOTION_DOUBLE_TIME_DESCRIPTION'),
('BW_PROMOTION_HEAVY_INFANTRY_IMPEL',			1,		3,		'BW_PROMOTION_CLASS_HEAVY_INFANTRY',	'BW_LOC_PROMOTION_IMPEL_NAME',							'BW_LOC_PROMOTION_IMPEL_DESCRIPTION'),
('BW_PROMOTION_HEAVY_INFANTRY_DOUBLE_STRIKE',	2,		1,		'BW_PROMOTION_CLASS_HEAVY_INFANTRY',	'BW_LOC_PROMOTION_DOUBLE_STRIKE_NAME',					'BW_LOC_PROMOTION_DOUBLE_STRIKE_DESCRIPTION'),
('BW_PROMOTION_HEAVY_INFANTRY_PHALANX',			2,		3,		'BW_PROMOTION_CLASS_HEAVY_INFANTRY',	'BW_LOC_PROMOTION_HEAVY_INFANTRY_PHALANX_NAME',			'BW_LOC_PROMOTION_HEAVY_INFANTRY_PHALANX_DESCRIPTION'),
('BW_PROMOTION_HEAVY_INFANTRY_ZONE_OF_CONTROL',	3,		1,		'BW_PROMOTION_CLASS_HEAVY_INFANTRY',	'BW_LOC_PROMOTION_ZONE_OF_CONTROL_NAME',				'BW_LOC_PROMOTION_ZONE_OF_CONTROL_DESCRIPTION'),
('BW_PROMOTION_HEAVY_INFANTRY_OBLIQUE_ORDER',	3,		3,		'BW_PROMOTION_CLASS_HEAVY_INFANTRY',	'BW_LOC_PROMOTION_HEAVY_INFANTRY_OBLIQUE_ORDER_NAME',	'BW_LOC_PROMOTION_HEAVY_INFANTRY_OBLIQUE_ORDER_DESCRIPTION'),
('BW_PROMOTION_HEAVY_INFANTRY_TESTUDO',			4,		2,		'BW_PROMOTION_CLASS_HEAVY_INFANTRY',	'BW_LOC_PROMOTION_HEAVY_INFANTRY_TESTUDO_NAME',			'BW_LOC_PROMOTION_HEAVY_INFANTRY_TESTUDO_DESCRIPTION')
;

INSERT INTO UnitPromotionModifiers
(UnitPromotionType,								ModifierId)
VALUES
('BW_PROMOTION_HEAVY_INFANTRY_IMPEL',			'BW_MOD_PUSHBACK'),
('BW_PROMOTION_HEAVY_INFANTRY_PHALANX',			'BW_MOD_HEAVY_INFANTRY_PHALANX'),
('BW_PROMOTION_HEAVY_INFANTRY_DOUBLE_TIME',		'BW_MOD_+1_MOVEMENT'),
('BW_PROMOTION_HEAVY_INFANTRY_ZONE_OF_CONTROL',	'BW_MOD_EXERT_ZOC'),
('BW_PROMOTION_HEAVY_INFANTRY_OBLIQUE_ORDER',	'BW_MOD_HEAVY_INFANTRY_OBLIQUE_ORDER_VS_HEAVY_INF'),
('BW_PROMOTION_HEAVY_INFANTRY_TESTUDO',			'BW_MOD_HEAVY_INFANTRY_TESTUDO'),
('BW_PROMOTION_HEAVY_INFANTRY_DOUBLE_STRIKE',	'BW_MOD_EXTRA_ATTACK'),
('BW_PROMOTION_HEAVY_INFANTRY_DOUBLE_STRIKE',	'BW_MOD_MOVE_AFTER_ATTACK')
;

 INSERT INTO UnitPromotionPrereqs
 (UnitPromotion,								PrereqUnitPromotion)
 VALUES
 ('BW_PROMOTION_HEAVY_INFANTRY_DOUBLE_STRIKE',	'BW_PROMOTION_HEAVY_INFANTRY_DOUBLE_TIME')
 ;
 

-- Light Infantry
INSERT INTO Types 
(Type,											Kind)
VALUES
('BW_PROMOTION_LIGHT_INFANTRY_DOUBLE_TIME',		'KIND_PROMOTION'),
('BW_PROMOTION_LIGHT_INFANTRY_ELUSIVE',			'KIND_PROMOTION'),
('BW_PROMOTION_LIGHT_INFANTRY_HIT_AND_RUN',		'KIND_PROMOTION'),
('BW_PROMOTION_LIGHT_INFANTRY_PRIORITY_TARGET',	'KIND_PROMOTION'),
('BW_PROMOTION_LIGHT_INFANTRY_SCREEN',			'KIND_PROMOTION'),
('BW_PROMOTION_LIGHT_INFANTRY_FLANK_GUARD',		'KIND_PROMOTION'),
('BW_PROMOTION_LIGHT_INFANTRY_SURVIVALIST',		'KIND_PROMOTION')
;

DELETE FROM UnitPromotions WHERE PromotionClass = 'BW_PROMOTION_CLASS_LIGHT_INFANTRY' ;
INSERT INTO UnitPromotions
(UnitPromotionType,								Level,	Column,	PromotionClass,							Name,												Description) 
VALUES
('BW_PROMOTION_LIGHT_INFANTRY_DOUBLE_TIME',		1,		1,		'BW_PROMOTION_CLASS_LIGHT_INFANTRY',	'BW_LOC_PROMOTION_DOUBLE_TIME_NAME',				'BW_LOC_PROMOTION_DOUBLE_TIME_DESCRIPTION'),
('BW_PROMOTION_LIGHT_INFANTRY_ELUSIVE',			1,		3,		'BW_PROMOTION_CLASS_LIGHT_INFANTRY',	'BW_LOC_PROMOTION_ELUSIVE_NAME',					'BW_LOC_PROMOTION_ELUSIVE_DESCRIPTION'),
('BW_PROMOTION_LIGHT_INFANTRY_HIT_AND_RUN',		2,		1,		'BW_PROMOTION_CLASS_LIGHT_INFANTRY',	'BW_LOC_PROMOTION_HIT_AND_RUN_NAME',				'BW_LOC_PROMOTION_HIT_AND_RUN_DESCRIPTION'),
('BW_PROMOTION_LIGHT_INFANTRY_PRIORITY_TARGET',	2,		3,		'BW_PROMOTION_CLASS_LIGHT_INFANTRY',	'BW_LOC_PROMOTION_PRIORITY_TARGET_NAME',			'BW_LOC_PROMOTION_PRIORITY_TARGET_DESCRIPTION'),
('BW_PROMOTION_LIGHT_INFANTRY_SCREEN',			3,		1,		'BW_PROMOTION_CLASS_LIGHT_INFANTRY',	'BW_LOC_PROMOTION_LIGHT_INFANTRY_SCREEN_NAME',		'BW_LOC_PROMOTION_LIGHT_INFANTRY_SCREEN_DESCRIPTION'),
('BW_PROMOTION_LIGHT_INFANTRY_FLANK_GUARD',		3,		3,		'BW_PROMOTION_CLASS_LIGHT_INFANTRY',	'BW_LOC_PROMOTION_LIGHT_INFANTRY_FLANK_GUARD_NAME',	'BW_LOC_PROMOTION_LIGHT_INFANTRY_FLANK_GUARD_DESCRIPTION'),
('BW_PROMOTION_LIGHT_INFANTRY_SURVIVALIST',		4,		2,		'BW_PROMOTION_CLASS_LIGHT_INFANTRY',	'BW_LOC_PROMOTION_SURVIVALIST_NAME',				'BW_LOC_PROMOTION_SURVIVALIST_DESCRIPTION')
;

INSERT INTO UnitPromotionModifiers
(UnitPromotionType,								ModifierId)
VALUES
('BW_PROMOTION_LIGHT_INFANTRY_DOUBLE_TIME',		'BW_MOD_+1_MOVEMENT'),
('BW_PROMOTION_LIGHT_INFANTRY_ELUSIVE',			'BW_MOD_IGNORE_ZOC'),
('BW_PROMOTION_LIGHT_INFANTRY_HIT_AND_RUN',		'BW_MOD_MOVE_AFTER_ATTACK'),
('BW_PROMOTION_LIGHT_INFANTRY_PRIORITY_TARGET',	'BW_MOD_PRIORITY_TARGET'),
('BW_PROMOTION_LIGHT_INFANTRY_SCREEN',			'BW_MOD_LIGHT_INFANTRY_SCREEN'),
('BW_PROMOTION_LIGHT_INFANTRY_FLANK_GUARD',		'BW_MOD_LIGHT_INFANTRY_FLANK_GUARD'),
('BW_PROMOTION_LIGHT_INFANTRY_SURVIVALIST',		'BW_MOD_HEAL_AFTER_ACTION')
;

-- Heavy Cavalry
INSERT INTO Types 
(Type,											Kind)
VALUES
('BW_PROMOTION_HEAVY_CAVALRY_ZONE_OF_CONTROL',	'KIND_PROMOTION'),
('BW_PROMOTION_HEAVY_CAVALRY_DOUBLE_STRIKE',	'KIND_PROMOTION'),
('BW_PROMOTION_HEAVY_CAVALRY_SHOCK_TACTICS',	'KIND_PROMOTION'),
('BW_PROMOTION_HEAVY_CAVALRY_HAMMER_AND_ANVIL',	'KIND_PROMOTION'),
('BW_PROMOTION_HEAVY_CAVALRY_MORALE_BOOST',		'KIND_PROMOTION'),
('BW_PROMOTION_HEAVY_CAVALRY_FLYING_WEDGE',		'KIND_PROMOTION'),
('BW_PROMOTION_HEAVY_CAVALRY_FEINT',			'KIND_PROMOTION')
;

DELETE FROM UnitPromotions WHERE PromotionClass = 'BW_PROMOTION_CLASS_HEAVY_CAVALRY' ;
INSERT INTO UnitPromotions
(UnitPromotionType,								Level,	Column,	PromotionClass,						Name,													Description) 
VALUES
('BW_PROMOTION_HEAVY_CAVALRY_ZONE_OF_CONTROL',	1,		1,		'BW_PROMOTION_CLASS_HEAVY_CAVALRY',	'BW_LOC_PROMOTION_ZONE_OF_CONTROL_NAME',				'BW_LOC_PROMOTION_ZONE_OF_CONTROL_DESCRIPTION'),
('BW_PROMOTION_HEAVY_CAVALRY_DOUBLE_STRIKE',	1,		3,		'BW_PROMOTION_CLASS_HEAVY_CAVALRY',	'BW_LOC_PROMOTION_DOUBLE_STRIKE_NAME',					'BW_LOC_PROMOTION_DOUBLE_STRIKE_DESCRIPTION'),
('BW_PROMOTION_HEAVY_CAVALRY_FLYING_WEDGE',		2,		1,		'BW_PROMOTION_CLASS_HEAVY_CAVALRY',	'BW_LOC_PROMOTION_HEAVY_CAVALRY_FLYING_WEDGE_NAME',		'BW_LOC_PROMOTION_HEAVY_CAVALRY_FLYING_WEDGE_DESCRIPTION'),
('BW_PROMOTION_HEAVY_CAVALRY_HAMMER_AND_ANVIL',	2,		3,		'BW_PROMOTION_CLASS_HEAVY_CAVALRY',	'BW_LOC_PROMOTION_HEAVY_CAVALRY_HAMMER_AND_ANVIL_NAME',	'BW_LOC_PROMOTION_HEAVY_CAVALRY_HAMMER_AND_ANVIL_DESCRIPTION'),
('BW_PROMOTION_HEAVY_CAVALRY_MORALE_BOOST',		3,		1,		'BW_PROMOTION_CLASS_HEAVY_CAVALRY',	'BW_LOC_PROMOTION_HEAVY_CAVALRY_MORALE_BOOST_NAME',		'BW_LOC_PROMOTION_HEAVY_CAVALRY_MORALE_BOOST_DESCRIPTION'),
('BW_PROMOTION_HEAVY_CAVALRY_FEINT',			3,		3,		'BW_PROMOTION_CLASS_HEAVY_CAVALRY',	'BW_LOC_PROMOTION_HEAVY_CAVALRY_FEINT_NAME',			'BW_LOC_PROMOTION_HEAVY_CAVALRY_FEINT_DESCRIPTION'),
('BW_PROMOTION_HEAVY_CAVALRY_SHOCK_TACTICS',	4,		2,		'BW_PROMOTION_CLASS_HEAVY_CAVALRY',	'BW_LOC_PROMOTION_HEAVY_CAVALRY_SHOCK_TACTICS_NAME',	'BW_LOC_PROMOTION_HEAVY_CAVALRY_SHOCK_TACTICS_DESCRIPTION')
;

INSERT INTO UnitPromotionModifiers
(UnitPromotionType,								ModifierId)
VALUES
('BW_PROMOTION_HEAVY_CAVALRY_ZONE_OF_CONTROL',	'BW_MOD_EXERT_ZOC'),
('BW_PROMOTION_HEAVY_CAVALRY_FLYING_WEDGE',		'BW_MOD_HEAVY_CAVALRY_FLYING_WEDGE'),
('BW_PROMOTION_HEAVY_CAVALRY_DOUBLE_STRIKE',	'BW_MOD_EXTRA_ATTACK'),
('BW_PROMOTION_HEAVY_CAVALRY_DOUBLE_STRIKE',	'BW_MOD_MOVE_AFTER_ATTACK'),
('BW_PROMOTION_HEAVY_CAVALRY_SHOCK_TACTICS',	'BW_MOD_HEAVY_CAVALRY_SHOCK_TACTICS'),
('BW_PROMOTION_HEAVY_CAVALRY_MORALE_BOOST',		'BW_MOD_HEAVY_CAVALRY_MORALE_BOOST_HCAV'),
('BW_PROMOTION_HEAVY_CAVALRY_MORALE_BOOST',		'BW_MOD_HEAVY_CAVALRY_MORALE_BOOST_REST'),
('BW_PROMOTION_HEAVY_CAVALRY_FEINT',			'BW_MOD_HEAVY_CAVALRY_FEINT'),
('BW_PROMOTION_HEAVY_CAVALRY_FEINT',			'BW_MOD_HEAVY_CAVALRY_FEINT_MY_ATTACK'),
('BW_PROMOTION_HEAVY_CAVALRY_HAMMER_AND_ANVIL',	'BW_MOD_HEAVY_CAVALRY_HAMMER_AND_ANVIL')
;

-- Light Cavalry
INSERT INTO Types 
(Type,											Kind)
VALUES
('BW_PROMOTION_LIGHT_CAVALRY_ELUSIVE',			'KIND_PROMOTION'),
('BW_PROMOTION_LIGHT_CAVALRY_HIT_AND_RUN',		'KIND_PROMOTION'),
('BW_PROMOTION_LIGHT_CAVALRY_TERROR_AND_PANIC',	'KIND_PROMOTION'),
('BW_PROMOTION_LIGHT_CAVALRY_ENVELOPE',			'KIND_PROMOTION'),
('BW_PROMOTION_LIGHT_CAVALRY_DUST_STORM',		'KIND_PROMOTION'),
('BW_PROMOTION_LIGHT_CAVALRY_PARTHIAN_SHOT',	'KIND_PROMOTION'),
('BW_PROMOTION_LIGHT_CAVALRY_STRING_OF_MARES',	'KIND_PROMOTION')
;

DELETE FROM UnitPromotions WHERE PromotionClass = 'BW_PROMOTION_CLASS_LIGHT_CAVALRY' ;
INSERT INTO UnitPromotions
(UnitPromotionType,								Level,	Column,	PromotionClass,						Name,													Description) 
VALUES
('BW_PROMOTION_LIGHT_CAVALRY_ELUSIVE',			1,		1,		'BW_PROMOTION_CLASS_LIGHT_CAVALRY',	'BW_LOC_PROMOTION_ELUSIVE_NAME',						'BW_LOC_PROMOTION_ELUSIVE_DESCRIPTION'),
('BW_PROMOTION_LIGHT_CAVALRY_HIT_AND_RUN',		1,		3,		'BW_PROMOTION_CLASS_LIGHT_CAVALRY',	'BW_LOC_PROMOTION_HIT_AND_RUN_NAME',					'BW_LOC_PROMOTION_HIT_AND_RUN_DESCRIPTION'),
('BW_PROMOTION_LIGHT_CAVALRY_STRING_OF_MARES',	2,		1,		'BW_PROMOTION_CLASS_LIGHT_CAVALRY',	'BW_LOC_PROMOTION_LIGHT_CAVALRY_STRING_OF_MARES_NAME',	'BW_LOC_PROMOTION_LIGHT_CAVALRY_STRING_OF_MARES_DESCRIPTION'),
('BW_PROMOTION_LIGHT_CAVALRY_TERROR_AND_PANIC',	2,		3,		'BW_PROMOTION_CLASS_LIGHT_CAVALRY',	'BW_LOC_PROMOTION_TERROR_AND_PANIC_NAME',				'BW_LOC_PROMOTION_TERROR_AND_PANIC_DESCRIPTION'),
('BW_PROMOTION_LIGHT_CAVALRY_ENVELOPE',			3,		1,		'BW_PROMOTION_CLASS_LIGHT_CAVALRY',	'BW_LOC_PROMOTION_LIGHT_CAVALRY_ENVELOPE_NAME',			'BW_LOC_PROMOTION_LIGHT_CAVALRY_ENVELOPE_DESCRIPTION'),
('BW_PROMOTION_LIGHT_CAVALRY_DUST_STORM',		3,		3,		'BW_PROMOTION_CLASS_LIGHT_CAVALRY',	'BW_LOC_PROMOTION_LIGHT_CAVALRY_DUST_STORM_NAME',		'BW_LOC_PROMOTION_LIGHT_CAVALRY_DUST_STORM_DESCRIPTION'),
('BW_PROMOTION_LIGHT_CAVALRY_PARTHIAN_SHOT',	4,		2,		'BW_PROMOTION_CLASS_LIGHT_CAVALRY',	'BW_LOC_PROMOTION_LIGHT_CAVALRY_PARTHIAN_SHOT_NAME',	'BW_LOC_PROMOTION_LIGHT_CAVALRY_PARTHIAN_SHOT_DESCRIPTION')
;

INSERT INTO UnitPromotionModifiers
(UnitPromotionType,								ModifierId)
VALUES
('BW_PROMOTION_LIGHT_CAVALRY_ELUSIVE',			'BW_MOD_IGNORE_ZOC'),
('BW_PROMOTION_LIGHT_CAVALRY_HIT_AND_RUN',		'BW_MOD_MOVE_AFTER_ATTACK'),
('BW_PROMOTION_LIGHT_CAVALRY_TERROR_AND_PANIC',	'BW_MOD_1_MOVE_TO_PILLAGE'),
('BW_PROMOTION_LIGHT_CAVALRY_ENVELOPE',			'BW_MOD_LIGHT_CAVALRY_ENVELOPE'),
('BW_PROMOTION_LIGHT_CAVALRY_DUST_STORM',		'BW_MOD_LIGHT_CAVALRY_DUST_STORM'),
('BW_PROMOTION_LIGHT_CAVALRY_PARTHIAN_SHOT',	'BW_MOD_LIGHT_CAVALRY_PARTHIAN_SHOT'),
('BW_PROMOTION_LIGHT_CAVALRY_STRING_OF_MARES',	'BW_MOD_HEAL_AFTER_ACTION'),
('BW_PROMOTION_LIGHT_CAVALRY_STRING_OF_MARES',	'BW_MOD_+1_MOVEMENT')
;

-- Land Ranged
INSERT INTO Types 
(Type,											Kind)
VALUES
('BW_PROMOTION_LAND_RANGED_DOUBLE_TIME',		'KIND_PROMOTION'),
('BW_PROMOTION_LAND_RANGED_HIT_AND_RUN',		'KIND_PROMOTION'),
('BW_PROMOTION_LAND_RANGED_COVER_FIRE',			'KIND_PROMOTION'),
('BW_PROMOTION_LAND_RANGED_SUPPRESSIVE_FIRE',	'KIND_PROMOTION'),
('BW_PROMOTION_LAND_RANGED_BROADHEADS',			'KIND_PROMOTION'),
('BW_PROMOTION_LAND_RANGED_BARBED_TRILOBATES',	'KIND_PROMOTION'),
('BW_PROMOTION_LAND_RANGED_GARRISON_TRAINING',	'KIND_PROMOTION')
;

DELETE FROM UnitPromotions WHERE PromotionClass = 'BW_PROMOTION_CLASS_LAND_RANGED' ;
INSERT INTO UnitPromotions
(UnitPromotionType,								Level,	Column,	PromotionClass,						Name,													Description) 
VALUES
('BW_PROMOTION_LAND_RANGED_DOUBLE_TIME',		1,		1,		'BW_PROMOTION_CLASS_LAND_RANGED',	'BW_LOC_PROMOTION_DOUBLE_TIME_NAME',					'BW_LOC_PROMOTION_DOUBLE_TIME_DESCRIPTION'),
('BW_PROMOTION_LAND_RANGED_HIT_AND_RUN',		1,		3,		'BW_PROMOTION_CLASS_LAND_RANGED',	'BW_LOC_PROMOTION_HIT_AND_RUN_NAME',					'BW_LOC_PROMOTION_HIT_AND_RUN_DESCRIPTION'),
('BW_PROMOTION_LAND_RANGED_COVER_FIRE',			2,		1,		'BW_PROMOTION_CLASS_LAND_RANGED',	'BW_LOC_PROMOTION_LAND_RANGED_COVER_FIRE_NAME',			'BW_LOC_PROMOTION_LAND_RANGED_COVER_FIRE_DESCRIPTION'),
('BW_PROMOTION_LAND_RANGED_SUPPRESSIVE_FIRE',	2,		3,		'BW_PROMOTION_CLASS_LAND_RANGED',	'BW_LOC_PROMOTION_LAND_RANGED_SUPPRESSIVE_FIRE_NAME',	'BW_LOC_PROMOTION_LAND_RANGED_SUPPRESSIVE_FIRE_DESCRIPTION'),
('BW_PROMOTION_LAND_RANGED_BROADHEADS',			3,		1,		'BW_PROMOTION_CLASS_LAND_RANGED',	'BW_LOC_PROMOTION_LAND_RANGED_BROADHEADS_NAME',			'BW_LOC_PROMOTION_LAND_RANGED_BROADHEADS_DESCRIPTION'),
('BW_PROMOTION_LAND_RANGED_BARBED_TRILOBATES',	3,		3,		'BW_PROMOTION_CLASS_LAND_RANGED',	'BW_LOC_PROMOTION_LAND_RANGED_BARBED_TRILOBATES_NAME',	'BW_LOC_PROMOTION_LAND_RANGED_BARBED_TRILOBATES_DESCRIPTION'),
('BW_PROMOTION_LAND_RANGED_GARRISON_TRAINING',	4,		2,		'BW_PROMOTION_CLASS_LAND_RANGED',	'BW_LOC_PROMOTION_LAND_RANGED_GARRISON_TRAINING_NAME',	'BW_LOC_PROMOTION_LAND_RANGED_GARRISON_TRAINING_DESCRIPTION')
;

INSERT INTO UnitPromotionModifiers
(UnitPromotionType,								ModifierId)
VALUES
('BW_PROMOTION_LAND_RANGED_DOUBLE_TIME',		'BW_MOD_+1_MOVEMENT'),
('BW_PROMOTION_LAND_RANGED_HIT_AND_RUN',		'BW_MOD_MOVE_AFTER_ATTACK'),
('BW_PROMOTION_LAND_RANGED_COVER_FIRE',			'BW_MOD_LAND_RANGED_COVER_FIRE'),
('BW_PROMOTION_LAND_RANGED_SUPPRESSIVE_FIRE',	'BW_MOD_LAND_RANGED_SUPPRESSIVE_FIRE'),
('BW_PROMOTION_LAND_RANGED_BROADHEADS',			'BW_MOD_LAND_RANGED_BROADHEADS'),
('BW_PROMOTION_LAND_RANGED_BARBED_TRILOBATES',	'BW_MOD_LAND_RANGED_BARBED_TRILOBATES'),
('BW_PROMOTION_LAND_RANGED_GARRISON_TRAINING',	'BW_MOD_LAND_RANGED_GARRISON_TRAINING')
;

/*
SELECT 'BW_PROMOTION_' || ClassName || REPLACE(UnitPromotionType, 'PROMOTION', ''), 'KIND_PROMOTION' FROM BW_NewUnitClasses JOIN UnitPromotions ON UnitPromotions.PromotionClass LIKE '%' || BW_NewUnitClasses.ClassName || '%' ;

INSERT INTO UnitPromotions (	
UnitPromotionType,	Name,	Description,	Level,	PromotionClass,		Column)
SELECT							
'BW_PROMOTION_' || ClassName || REPLACE(UnitPromotionType, 'PROMOTION', ''), 
					'BW_LOC_PROMOTION_' || ClassName || REPLACE(UnitPromotionType, 'PROMOTION', '') || '_NAME', 
							'BW_LOC_PROMOTION_' || ClassName || REPLACE(UnitPromotionType, 'PROMOTION', '') || '_DESCRIPTION', 
											Level,
													'BW_PROMOTION_CLASS_' || ClassName,
																		Column 
FROM BW_NewUnitClasses JOIN UnitPromotions ON UnitPromotions.PromotionClass LIKE '%' || BW_NewUnitClasses.ClassName || '%' ;



INSERT INTO Types (Type, Kind)
SELECT REPLACE(UnitPromotionType, 'PROMOTION_', 'BW_PROMOTION_HEAVY_INFANTRY_'), 'KIND_PROMOTION' FROM UnitPromotions WHERE PromotionClass = 'PROMOTION_CLASS_MELEE' ;

INSERT INTO UnitPromotions (UnitPromotionType, Name, Description, Level, Specialization, PromotionClass, Column) 
SELECT REPLACE(UnitPromotionType, 'PROMOTION_', 'BW_PROMOTION_HEAVY_INFANTRY_'), REPLACE(Name, 'PROMOTION_', 'BW_PROMOTION_HEAVY_INFANTRY_'), REPLACE(Description, 'PROMOTION_', 'BW_PROMOTION_HEAVY_INFANTRY_'), Level, Specialization, 'BW_PROMOTION_CLASS_HEAVY_INFANTRY', Column FROM UnitPromotions WHERE PromotionClass = 'PROMOTION_CLASS_MELEE' ;


INSERT INTO Types (Type, Kind)
SELECT REPLACE(UnitPromotionType, 'PROMOTION_RANGED_', 'PROMOTION_ANTIAIR_'), 'KIND_PROMOTION' FROM UnitPromotions WHERE PromotionClass = 'BW_PROMOTION_CLASS_RANGED' ;

INSERT INTO UnitPromotions (UnitPromotionType, Name, Description, Level, Specialization, PromotionClass, Column) 
SELECT REPLACE(UnitPromotionType, 'PROMOTION_RANGED_', 'PROMOTION_ANTIAIR_'), REPLACE(Name, 'PROMOTION_RANGED_', 'PROMOTION_ANTIAIR_'), REPLACE(Description, 'PROMOTION_RANGED_', 'PROMOTION_ANTIAIR_'), Level, Specialization, 'BW_PROMOTION_CLASS_ANTIAIR', Column FROM UnitPromotions WHERE PromotionClass = 'BW_PROMOTION_CLASS_RANGED' ;



INSERT INTO Types (Type, Kind)
SELECT REPLACE(UnitPromotionType, 'PROMOTION_HEAVY_INFANTRY_', 'PROMOTION_DEFENSIVE_GUN_'), 'KIND_PROMOTION' FROM UnitPromotions WHERE PromotionClass = 'BW_PROMOTION_CLASS_HEAVY_INFANTRY' ;

INSERT INTO UnitPromotions (UnitPromotionType, Name, Description, Level, Specialization, PromotionClass, Column) 
SELECT REPLACE(UnitPromotionType, 'PROMOTION_HEAVY_INFANTRY_', 'PROMOTION_DEFENSIVE_GUN_'), REPLACE(Name, 'PROMOTION_HEAVY_INFANTRY_', 'PROMOTION_DEFENSIVE_GUN_'), REPLACE(Description, 'PROMOTION_HEAVY_INFANTRY_', 'PROMOTION_DEFENSIVE_GUN_'), Level, Specialization, 'BW_PROMOTION_CLASS_DEFENSIVE_GUN', Column FROM UnitPromotions WHERE PromotionClass = 'BW_PROMOTION_CLASS_HEAVY_INFANTRY' ;



INSERT INTO Types (Type, Kind)
SELECT REPLACE(UnitPromotionType, 'PROMOTION_HEAVY_CAVALRY_', 'PROMOTION_ELEPHANT_'), 'KIND_PROMOTION' FROM UnitPromotions WHERE PromotionClass = 'BW_PROMOTION_CLASS_HEAVY_CAVALRY' ;

INSERT INTO UnitPromotions (UnitPromotionType, Name, Description, Level, Specialization, PromotionClass, Column) 
SELECT REPLACE(UnitPromotionType, 'PROMOTION_HEAVY_CAVALRY_', 'PROMOTION_ELEPHANT_'), REPLACE(Name, 'PROMOTION_HEAVY_CAVALRY_', 'PROMOTION_ELEPHANT_'), REPLACE(Description, 'PROMOTION_HEAVY_CAVALRY_', 'PROMOTION_ELEPHANT_'), Level, Specialization, 'BW_PROMOTION_CLASS_ELEPHANT', Column FROM UnitPromotions WHERE PromotionClass = 'BW_PROMOTION_CLASS_HEAVY_CAVALRY' ;



INSERT INTO Types (Type, Kind)
SELECT REPLACE(UnitPromotionType, 'PROMOTION_RANGED_', 'PROMOTION_LIGHT_INFANTRY_'), 'KIND_PROMOTION' FROM UnitPromotions WHERE PromotionClass = 'BW_PROMOTION_CLASS_RANGED' ;

INSERT INTO UnitPromotions (UnitPromotionType, Name, Description, Level, Specialization, PromotionClass, Column) 
SELECT REPLACE(UnitPromotionType, 'PROMOTION_RANGED_', 'PROMOTION_LIGHT_INFANTRY_'), REPLACE(Name, 'PROMOTION_RANGED_', 'PROMOTION_LIGHT_INFANTRY_'), REPLACE(Description, 'PROMOTION_RANGED_', 'PROMOTION_LIGHT_INFANTRY_'), Level, Specialization, 'BW_PROMOTION_CLASS_LIGHT_INFANTRY', Column FROM UnitPromotions WHERE PromotionClass = 'BW_PROMOTION_CLASS_RANGED' ;
*/