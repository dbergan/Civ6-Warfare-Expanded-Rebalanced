INSERT INTO Types (Type, Kind) 
SELECT 'BW_PROMOTION_CLASS_' || ClassName, 'KIND_PROMOTION_CLASS' FROM BW_NewUnitClasses ;

INSERT INTO UnitPromotionClasses (PromotionClassType, Name) 
SELECT 'BW_PROMOTION_CLASS_' || ClassName, 'BW_LOC_PROMOTION_CLASS_' || ClassName || '_NAME' FROM BW_NewUnitClasses ;


INSERT INTO Types 
(Type,								Kind)
VALUES
('BW_PROMOTION_HEAVY_INFANTRY_',	'KIND_PROMOTION'),
('BW_PROMOTION_HEAVY_INFANTRY_',	'KIND_PROMOTION'),
('BW_PROMOTION_HEAVY_INFANTRY_',	'KIND_PROMOTION'),
('BW_PROMOTION_HEAVY_INFANTRY_',	'KIND_PROMOTION'),
('BW_PROMOTION_HEAVY_INFANTRY_',	'KIND_PROMOTION'),
('BW_PROMOTION_HEAVY_INFANTRY_',	'KIND_PROMOTION'),
('BW_PROMOTION_HEAVY_INFANTRY_EXTRA_ATTACK',	'KIND_PROMOTION') ;

INSERT INTO UnitPromotions
(UnitPromotionType,											Level,	Column,	PromotionClass,							Name,																Description) 
VALUES
('BW_PROMOTION_HEAVY_INFANTRY_PILLAGE_1_MOVEMENT',			1,		1,		'BW_PROMOTION_CLASS_HEAVY_INFANTRY',	'BW_LOC_PROMOTION_HEAVY_INFANTRY_PILLAGE_1_MOVEMENT_NAME',			'BW_LOC_PROMOTION_HEAVY_INFANTRY_PILLAGE_1_MOVEMENT_DESCRIPTION'),
('BW_PROMOTION_HEAVY_INFANTRY_+1_MOVEMENT_AT_HOME',			1,		3,		'BW_PROMOTION_CLASS_HEAVY_INFANTRY',	'BW_LOC_PROMOTION_HEAVY_INFANTRY_+1_MOVEMENT_AT_HOME_NAME',			'BW_LOC_PROMOTION_HEAVY_INFANTRY_+1_MOVEMENT_AT_HOME_DESCRIPTION'),
('BW_PROMOTION_HEAVY_INFANTRY_MORE_FROM_PILLAGE',			2,		1,		'BW_PROMOTION_CLASS_HEAVY_INFANTRY',	'BW_LOC_PROMOTION_HEAVY_INFANTRY_MORE_FROM_PILLAGE_NAME',			'BW_LOC_PROMOTION_HEAVY_INFANTRY_MORE_FROM_PILLAGE_DESCRIPTION'),
('BW_PROMOTION_HEAVY_INFANTRY_NO_CS_REDUCTION_FROM_DAMAGE',	2,		3,		'BW_PROMOTION_CLASS_HEAVY_INFANTRY',	'BW_LOC_PROMOTION_HEAVY_INFANTRY_NO_CS_REDUCTION_FROM_DAMAGE_NAME',	'BW_LOC_PROMOTION_HEAVY_INFANTRY_NO_CS_REDUCTION_FROM_DAMAGE_DESCRIPTION'),
('BW_PROMOTION_HEAVY_INFANTRY_MORE_ATTACK',					3,		1,		'BW_PROMOTION_CLASS_HEAVY_INFANTRY',	'BW_LOC_PROMOTION_HEAVY_INFANTRY_MORE_ATTACK_NAME',					'BW_LOC_PROMOTION_HEAVY_INFANTRY_MORE_ATTACK_DESCRIPTION'),
('BW_PROMOTION_HEAVY_INFANTRY_MORE_DEFENSE',				3,		3,		'BW_PROMOTION_CLASS_HEAVY_INFANTRY',	'BW_LOC_PROMOTION_HEAVY_INFANTRY_MORE_DEFENSE_NAME',				'BW_LOC_PROMOTION_HEAVY_INFANTRY_MORE_DEFENSE_DESCRIPTION'),
('BW_PROMOTION_HEAVY_INFANTRY_EXTRA_ATTACK',				4,		2,		'BW_PROMOTION_CLASS_HEAVY_INFANTRY',	'BW_LOC_PROMOTION_HEAVY_INFANTRY_EXTRA_ATTACK_NAME',				'BW_LOC_PROMOTION_HEAVY_INFANTRY_EXTRA_ATTACK_DESCRIPTION') ;

-- INSERT INTO UnitPromotionModifiers (UnitPromotionType, ModifierId)

-- INSERT INTO UnitPromotionPrereqs (UnitPromotion, PrereqUnitPromotion)



INSERT INTO Types 
(Type,								Kind)
VALUES
('BW_PROMOTION_RECON_',	'KIND_PROMOTION'),
('BW_PROMOTION_RECON_',	'KIND_PROMOTION'),
('BW_PROMOTION_RECON_',	'KIND_PROMOTION'),
('BW_PROMOTION_RECON_',	'KIND_PROMOTION'),
('BW_PROMOTION_RECON_',	'KIND_PROMOTION'),
('BW_PROMOTION_RECON_',	'KIND_PROMOTION'),
('BW_PROMOTION_RECON_',	'KIND_PROMOTION'),
('BW_PROMOTION_RECON_',	'KIND_PROMOTION'),

INSERT INTO UnitPromotions
(UnitPromotionType,							Level,	Column,	PromotionClass,							Name,										Description) 
VALUES
('BW_PROMOTION_RECON_SEE_THROUGH_TERRAIN',	1,		1,		'BW_PROMOTION_CLASS_RECON',	'BW_LOC_PROMOTION_RECON__NAME',	'BW_LOC_PROMOTION_RECON__DESCRIPTION'),
('BW_PROMOTION_RECON_MORE_MOVEMENT',		1,		3,		'BW_PROMOTION_CLASS_RECON',	'BW_LOC_PROMOTION_RECON__NAME',	'BW_LOC_PROMOTION_RECON__DESCRIPTION'),
('BW_PROMOTION_RECON_MORE_SIGHT',			2,		1,		'BW_PROMOTION_CLASS_RECON',	'BW_LOC_PROMOTION_RECON__NAME',	'BW_LOC_PROMOTION_RECON__DESCRIPTION'),
('BW_PROMOTION_RECON_IGNORE_ZOC',			2,		3,		'BW_PROMOTION_CLASS_RECON',	'BW_LOC_PROMOTION_RECON__NAME',	'BW_LOC_PROMOTION_RECON__DESCRIPTION'),
('BW_PROMOTION_RECON_HEAL_AFTER_ACTION',	3,		1,		'BW_PROMOTION_CLASS_RECON',	'BW_LOC_PROMOTION_RECON__NAME',	'BW_LOC_PROMOTION_RECON__DESCRIPTION'),
('BW_PROMOTION_RECON_FOREIGN_TERRITORY',	3,		3,		'BW_PROMOTION_CLASS_RECON',	'BW_LOC_PROMOTION_RECON__NAME',	'BW_LOC_PROMOTION_RECON__DESCRIPTION'),
('BW_PROMOTION_RECON_STEALTH',				4,		2,		'BW_PROMOTION_CLASS_RECON',	'BW_LOC_PROMOTION_RECON__NAME',	'BW_LOC_PROMOTION_RECON__DESCRIPTION') ;

-- INSERT INTO UnitPromotionModifiers (UnitPromotionType, ModifierId)

-- INSERT INTO UnitPromotionPrereqs (UnitPromotion, PrereqUnitPromotion) VALUE




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

DELETE FROM UnitPromotions WHERE 
PromotionClass = 'PROMOTION_CLASS_AIR_ATTACK' OR
PromotionClass = 'PROMOTION_CLASS_AIR_BOMBER' OR
PromotionClass = 'PROMOTION_CLASS_AIR_FIGHTER' OR
PromotionClass = 'PROMOTION_CLASS_ANTI_CAVALRY' OR
PromotionClass = 'PROMOTION_CLASS_AUTOMATIC_GUN' OR
PromotionClass = 'PROMOTION_CLASS_GIANT_DEATH_ROBOT' OR
PromotionClass = 'PROMOTION_CLASS_HEAVY_CAVALRY' OR
PromotionClass = 'PROMOTION_CLASS_LIGHT_CAVALRY' OR
PromotionClass = 'PROMOTION_CLASS_MARINE' OR
PromotionClass = 'PROMOTION_CLASS_MONK' OR
PromotionClass = 'PROMOTION_CLASS_NAVAL_BOMBARD' OR
PromotionClass = 'PROMOTION_CLASS_NAVAL_CARRIER' OR
PromotionClass = 'PROMOTION_CLASS_NAVAL_MELEE' OR
PromotionClass = 'PROMOTION_CLASS_NAVAL_RAIDER' OR
PromotionClass = 'PROMOTION_CLASS_NAVAL_RANGED' OR
PromotionClass = 'PROMOTION_CLASS_RANGED' OR
PromotionClass = 'PROMOTION_CLASS_RECON' OR
PromotionClass = 'PROMOTION_CLASS_SIEGE' OR
PromotionClass = 'PROMOTION_CLASS_SUPPORT'
;

DELETE FROM UnitPromotionClasses WHERE 
PromotionClassType = 'PROMOTION_CLASS_AIR_ATTACK' OR
PromotionClassType = 'PROMOTION_CLASS_AIR_BOMBER' OR
PromotionClassType = 'PROMOTION_CLASS_AIR_FIGHTER' OR
PromotionClassType = 'PROMOTION_CLASS_ANTI_CAVALRY' OR
PromotionClassType = 'PROMOTION_CLASS_AUTOMATIC_GUN' OR
PromotionClassType = 'PROMOTION_CLASS_GIANT_DEATH_ROBOT' OR
PromotionClassType = 'PROMOTION_CLASS_HEAVY_CAVALRY' OR
PromotionClassType = 'PROMOTION_CLASS_LIGHT_CAVALRY' OR
PromotionClassType = 'PROMOTION_CLASS_MARINE' OR
PromotionClassType = 'PROMOTION_CLASS_MONK' OR
PromotionClassType = 'PROMOTION_CLASS_NAVAL_BOMBARD' OR
PromotionClassType = 'PROMOTION_CLASS_NAVAL_CARRIER' OR
PromotionClassType = 'PROMOTION_CLASS_NAVAL_MELEE' OR
PromotionClassType = 'PROMOTION_CLASS_NAVAL_RAIDER' OR
PromotionClassType = 'PROMOTION_CLASS_NAVAL_RANGED' OR
PromotionClassType = 'PROMOTION_CLASS_RANGED' OR
PromotionClassType = 'PROMOTION_CLASS_RECON' OR
PromotionClassType = 'PROMOTION_CLASS_SIEGE' OR
PromotionClassType = 'PROMOTION_CLASS_SUPPORT'
;
DELETE FROM Types WHERE 
Type = 'PROMOTION_CLASS_AIR_ATTACK' OR
Type = 'PROMOTION_CLASS_AIR_BOMBER' OR
Type = 'PROMOTION_CLASS_AIR_FIGHTER' OR
Type = 'PROMOTION_CLASS_ANTI_CAVALRY' OR
Type = 'PROMOTION_CLASS_AUTOMATIC_GUN' OR
Type = 'PROMOTION_CLASS_GIANT_DEATH_ROBOT' OR
Type = 'PROMOTION_CLASS_HEAVY_CAVALRY' OR
Type = 'PROMOTION_CLASS_LIGHT_CAVALRY' OR
Type = 'PROMOTION_CLASS_MARINE' OR
Type = 'PROMOTION_CLASS_MONK' OR
Type = 'PROMOTION_CLASS_NAVAL_BOMBARD' OR
Type = 'PROMOTION_CLASS_NAVAL_CARRIER' OR
Type = 'PROMOTION_CLASS_NAVAL_MELEE' OR
Type = 'PROMOTION_CLASS_NAVAL_RAIDER' OR
Type = 'PROMOTION_CLASS_NAVAL_RANGED' OR
Type = 'PROMOTION_CLASS_RANGED' OR
Type = 'PROMOTION_CLASS_RECON' OR
Type = 'PROMOTION_CLASS_SIEGE' OR
Type = 'PROMOTION_CLASS_SUPPORT'
;