-- Remove abilities we don't use
DELETE FROM UnitAbilityModifiers WHERE UnitAbilityType = 'ABILITY_NAVAL_BOMBARD' OR UnitAbilityType = 'ABILITY_ATTACK_SUB_RAIDER' OR UnitAbilityType = 'ABILITY_ATTACK_SUB_SURFACE_WARSHIP' ;
DELETE FROM UnitAbilities WHERE UnitAbilityType = 'ABILITY_NAVAL_BOMBARD' OR UnitAbilityType = 'ABILITY_ATTACK_SUB_RAIDER' OR UnitAbilityType = 'ABILITY_ATTACK_SUB_SURFACE_WARSHIP' ;
DELETE FROM TypeTags WHERE Type = 'ABILITY_NAVAL_BOMBARD' OR Type = 'ABILITY_ATTACK_SUB_RAIDER' OR Type = 'ABILITY_ATTACK_SUB_SURFACE_WARSHIP' ;
DELETE FROM Types WHERE Type = 'ABILITY_NAVAL_BOMBARD' OR Type = 'ABILITY_ATTACK_SUB_RAIDER' OR Type = 'ABILITY_ATTACK_SUB_SURFACE_WARSHIP' ;


-- Remove these classes altogether (the units were be re-classed)
DELETE FROM TypeTags WHERE Tag = 'CLASS_ANTI_CAVALRY' OR Tag LIKE '%AUTOMATIC_GUN%' ;


-- Remove these old ability classes from units (the units were re-classed properly in GameDataLate.sql)
DELETE FROM TypeTags WHERE Type LIKE 'Unit%' AND (
Tag LIKE 'CLASS_AIRCRAFT'
OR Tag LIKE 'CLASS_AIR_ATTACK'
OR Tag LIKE 'CLASS_AIR_BOMBER'
OR Tag LIKE 'CLASS_AIR_FIGHTER'
OR Tag LIKE 'CLASS_ANTI_AIR'
OR Tag LIKE 'CLASS_ANTI_CAVALRY'
OR Tag LIKE 'CLASS_AUTOMATIC_GUN'
OR Tag LIKE 'CLASS_GIANT_DEATH_ROBOT'

OR Tag LIKE 'CLASS_HEAVY_CAVALRY'
OR Tag LIKE 'CLASS_LIGHT_CAVALRY'
OR Tag LIKE 'CLASS_LK_AUTOMATIC_GUN_ANTICAV'
OR Tag LIKE 'CLASS_LK_AUTOMATIC_GUN_CAV'
OR Tag LIKE 'CLASS_LK_AUTOMATIC_GUN_MELEE'
OR Tag LIKE 'CLASS_MARINE'
OR Tag LIKE 'CLASS_MELEE'
OR Tag LIKE 'CLASS_MONK'
OR Tag LIKE 'CLASS_NAVAL_BOMBARD'
OR Tag LIKE 'CLASS_NAVAL_CARRIER'
OR Tag LIKE 'CLASS_NAVAL_MELEE'
OR Tag LIKE 'CLASS_NAVAL_RAIDER'
OR Tag LIKE 'CLASS_NAVAL_RANGED'
OR Tag LIKE 'CLASS_RANGED'
OR Tag LIKE 'CLASS_RANGED_CAVALRY'

OR Tag LIKE 'CLASS_RECON'
OR Tag LIKE 'CLASS_SIEGE'
OR Tag LIKE 'CLASS_SUPPORT'
OR Tag LIKE 'CLASS_WARRIOR_MONK');


-- Remove old promotion classes
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
PromotionClass = 'PROMOTION_CLASS_MELEE' OR
PromotionClass = 'PROMOTION_CLASS_MONK' OR
PromotionClass = 'PROMOTION_CLASS_NAVAL_BOMBARD' OR
PromotionClass = 'PROMOTION_CLASS_NAVAL_CARRIER' OR
PromotionClass = 'PROMOTION_CLASS_NAVAL_MELEE' OR
PromotionClass = 'PROMOTION_CLASS_NAVAL_RAIDER' OR
PromotionClass = 'PROMOTION_CLASS_NAVAL_RANGED' OR
PromotionClass = 'PROMOTION_CLASS_RANGED' OR
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
PromotionClassType = 'PROMOTION_CLASS_MELEE' OR
PromotionClassType = 'PROMOTION_CLASS_MONK' OR
PromotionClassType = 'PROMOTION_CLASS_NAVAL_BOMBARD' OR
PromotionClassType = 'PROMOTION_CLASS_NAVAL_CARRIER' OR
PromotionClassType = 'PROMOTION_CLASS_NAVAL_MELEE' OR
PromotionClassType = 'PROMOTION_CLASS_NAVAL_RAIDER' OR
PromotionClassType = 'PROMOTION_CLASS_NAVAL_RANGED' OR
PromotionClassType = 'PROMOTION_CLASS_RANGED' OR
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
Type = 'PROMOTION_CLASS_SIEGE' OR
Type = 'PROMOTION_CLASS_SUPPORT'
;

DELETE FROM TypeTags WHERE
Tag = 'CLASS_HEAVY_CAVALRY' OR
Tag = 'CLASS_LIGHT_CAVALRY' OR
Tag = 'CLASS_MARINE' OR
Tag = 'CLASS_RANGED' OR
Tag = 'CLASS_RANGED_CAVALRY' OR
Tag = 'CLASS_SIEGE' OR
Tag = 'CLASS_MOBILE_RANGED' OR
Tag = 'CLASS_NAVAL_RANGED' OR
Tag = 'CLASS_RANGED' OR
Tag = 'CLASS_NAVAL_BOMBARD' OR
Tag = 'CLASS_NAVAL_CARRIER' OR
Tag = 'CLASS_NAVAL_MELEE' OR
Tag = 'CLASS_NAVAL_RAIDER' OR
Tag = 'CLASS_AIR_BOMBER' OR
Tag = 'CLASS_AIR_FIGHTER'
;


-- Civ-specific abilities that should be inactive for other civs
UPDATE UnitAbilities SET Inactive = 1 WHERE 
UnitAbilityType = 'ABILITY_RECEIVE_PERSIAN_WARSHIP_BONUS' OR 
UnitAbilityType = 'ABILITY_RECEIVE_KHMER_WAR_CANOE_BONUS' OR
UnitAbilityType = 'ABILITY_RECEIVE_MEDICINE_MAN_BONUS' OR
UnitAbilityType = 'ABILITY_RECEIVE_SHIGONG_BONUS' OR
UnitAbilityType = 'ABILITY_RECEIVE_WARRIOR_PRIEST_BONUS' OR
UnitAbilityType = 'ABILITY_RECEIVE_NORWEGIAN_ULFHEDNAR_BONUS' OR
UnitAbilityType = 'ABILITY_RECEIVE_HUI_HUI_PAO_BONUS'
;

INSERT INTO	TraitModifiers
(TraitType,											ModifierId)
VALUES
('TRAIT_CIVILIZATION_SATRAPIES',					'BW_MOD_ACTIVATE_PERSIAN_WARSHIP_BONUS'),
('TRAIT_CIVILIZATION_KHMER_BARAYS',					'BW_MOD_ACTIVATE_KHMER_WAR_CANOE_BONUS'),
('TRAIT_CIVILIZATION_NKISI',						'BW_MOD_ACTIVATE_MEDICINE_MAN_BONUS'),
('TRAIT_CIVILIZATION_DYNASTIC_CYCLE',				'BW_MOD_ACTIVATE_SHIGONG_BONUS'),
('TRAIT_CIVILIZATION_LEGEND_FIVE_SUNS',				'BW_MOD_ACTIVATE_WARRIOR_PRIEST_BONUS'),
('TRAIT_CIVILIZATION_UNIT_NORWEGIAN_ULFHEDNAR',		'BW_MOD_ACTIVATE_NORWEGIAN_ULFHEDNAR_BONUS'),
('TRAIT_CIVILIZATION_UNIT_MONGOLIAN_HUI_HUI_PAO',	'BW_MOD_ACTIVATE_HUI_HUI_PAO_BONUS')
;

INSERT INTO Modifiers
(ModifierId,									ModifierType)
VALUES
('BW_MOD_ACTIVATE_PERSIAN_WARSHIP_BONUS',		'MODIFIER_PLAYER_UNITS_GRANT_ABILITY'),
('BW_MOD_ACTIVATE_KHMER_WAR_CANOE_BONUS',		'MODIFIER_PLAYER_UNITS_GRANT_ABILITY'),
('BW_MOD_ACTIVATE_MEDICINE_MAN_BONUS',			'MODIFIER_PLAYER_UNITS_GRANT_ABILITY'),
('BW_MOD_ACTIVATE_SHIGONG_BONUS',				'MODIFIER_PLAYER_UNITS_GRANT_ABILITY'),
('BW_MOD_ACTIVATE_WARRIOR_PRIEST_BONUS',		'MODIFIER_PLAYER_UNITS_GRANT_ABILITY'),
('BW_MOD_ACTIVATE_NORWEGIAN_ULFHEDNAR_BONUS',	'MODIFIER_PLAYER_UNITS_GRANT_ABILITY'),
('BW_MOD_ACTIVATE_HUI_HUI_PAO_BONUS',			'MODIFIER_PLAYER_UNITS_GRANT_ABILITY')
;

INSERT INTO ModifierArguments
(ModifierId,									Name,			Value)
VALUES
('BW_MOD_ACTIVATE_PERSIAN_WARSHIP_BONUS',		'AbilityType',	'ABILITY_RECEIVE_PERSIAN_WARSHIP_BONUS'),
('BW_MOD_ACTIVATE_KHMER_WAR_CANOE_BONUS',		'AbilityType',	'ABILITY_RECEIVE_KHMER_WAR_CANOE_BONUS'),
('BW_MOD_ACTIVATE_MEDICINE_MAN_BONUS',			'AbilityType',	'ABILITY_RECEIVE_MEDICINE_MAN_BONUS'),
('BW_MOD_ACTIVATE_SHIGONG_BONUS',				'AbilityType',	'ABILITY_RECEIVE_SHIGONG_BONUS'),
('BW_MOD_ACTIVATE_WARRIOR_PRIEST_BONUS',		'AbilityType',	'ABILITY_RECEIVE_WARRIOR_PRIEST_BONUS'),
('BW_MOD_ACTIVATE_NORWEGIAN_ULFHEDNAR_BONUS',	'AbilityType',	'ABILITY_RECEIVE_NORWEGIAN_ULFHEDNAR_BONUS'),
('BW_MOD_ACTIVATE_HUI_HUI_PAO_BONUS',			'AbilityType',	'ABILITY_RECEIVE_HUI_HUI_PAO_BONUS')
 ;
