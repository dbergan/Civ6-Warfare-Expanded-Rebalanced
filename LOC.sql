-- ('', '', 'en_US'),

INSERT OR REPLACE INTO LocalizedText 
(Tag, Text, Language) VALUES

('LOC_DB_ABILITY_NAVAL_MELEE_NO_GALLEY_ATTACKING_SEA_NAME', 'Naval Melee More Effective Attacking Sea Units', 'en_US'),
('LOC_DB_ABILITY_NAVAL_MELEE_NO_GALLEY_ATTACKING_SEA_DESCRIPTION', 'Naval Melee unit: more effective attacking sea units', 'en_US'),
('LOC_DB_MODIFIER_NAVAL_MELEE_NO_GALLEY_ATTACKING_SEA_PREVIEW', '+{1_Amount} Naval Melee attacking sea units', 'en_US'),

('LOC_DB_ABILITY_ATTACK_SUB_ATTACKING_SEA_NAME', 'Attack Sub More Effective Attacking Sea Units', 'en_US'),
('LOC_DB_ABILITY_ATTACK_SUB_ATTACKING_SEA_DESCRIPTION', 'Attack Sub: more effective attacking sea units', 'en_US'),
('LOC_DB_MODIFIER_ATTACK_SUB_ATTACKING_SEA_PREVIEW', '+{1_Amount} Attack Sub attacking sea units', 'en_US'),

('LOC_DB_ABILITY_NAVAL_RANGED_ATTACKING_LAND_NAME', 'Naval Ranged More Effective Attacking Land Units', 'en_US'),
('LOC_DB_ABILITY_NAVAL_RANGED_ATTACKING_LAND_DESCRIPTION', 'Naval Ranged unit: more effective attacking land units', 'en_US'),
('LOC_DB_MODIFIER_NAVAL_RANGED_ATTACKING_LAND_PREVIEW', '+{1_Amount} Naval Ranged attacking land units', 'en_US'),

('LOC_DB_ABILITY_NAVAL_RANGED_ATTACKING_SEA_NAME', 'Naval Ranged Less Effective Attacking Sea Units', 'en_US'),
('LOC_DB_ABILITY_NAVAL_RANGED_ATTACKING_SEA_DESCRIPTION', 'Naval Ranged unit: less effective attacking sea units', 'en_US'),
('LOC_DB_MODIFIER_NAVAL_RANGED_ATTACKING_SEA_PREVIEW', '{1_Amount} Naval Ranged attacking sea units', 'en_US'),

('LOC_DB_ABILITY_NAVAL_BOMBARD_ATTACKING_SEA_NAME', 'Naval Bombard Less Effective Attacking Sea Units', 'en_US'),
('LOC_DB_ABILITY_NAVAL_BOMBARD_ATTACKING_SEA_DESCRIPTION', 'Naval Bombard unit: less effective attacking sea units', 'en_US'),
('LOC_DB_MODIFIER_NAVAL_BOMBARD_ATTACKING_SEA_PREVIEW', '{1_Amount} Naval Bombard attacking sea units', 'en_US'),

('LOC_DB_ABILITY_NAVAL_RAIDER_ATTACKING_SEA_NAME', 'Naval Raider More Effective Attacking Sea Units', 'en_US'),
('LOC_DB_ABILITY_NAVAL_RAIDER_ATTACKING_SEA_DESCRIPTION', 'Naval Raider unit: more effective attacking sea units', 'en_US'),
('LOC_DB_MODIFIER_NAVAL_RAIDER_ATTACKING_SEA_PREVIEW', '+{1_Amount} Naval Raider attacking sea units', 'en_US'),

('LOC_DB_ABILITY_NAVAL_RAIDER_ATTACKING_NAVAL_MELEE_NAME', 'Naval Raider More Effective Attacking Naval Melee Units', 'en_US'),
('LOC_DB_ABILITY_NAVAL_RAIDER_ATTACKING_NAVAL_MELEE_DESCRIPTION', 'Naval Raider unit: more effective attacking naval melee units', 'en_US'),
('LOC_DB_MODIFIER_NAVAL_RAIDER_ATTACKING_NAVAL_MELEE_PREVIEW', '+{1_Amount} Naval Raider attacking Naval Melee units', 'en_US'),

('LOC_DB_ABILITY_NAVAL_RAIDER_MOVE_AFTER_ATTACK_NAME', 'Naval Raider Can Move After Attacking', 'en_US'),
('LOC_DB_ABILITY_NAVAL_RAIDER_MOVE_AFTER_ATTACK_DESCRIPTION', 'Naval Raider units can move after attacking', 'en_US'),

('LOC_DB_ABILITY_ATTACK_SUB_MOVE_AFTER_ATTACK_NAME', 'Attack Subs Can Move After Attacking', 'en_US'),
('LOC_DB_ABILITY_ATTACK_SUB_MOVE_AFTER_ATTACK_DESCRIPTION', 'Attack Subs can move after attacking', 'en_US'),



('LOC_NAVAL_MELEE_DESCRIPTION', '[NEWLINE][NEWLINE]Naval Melee units are great at attacking other ships. They also can attack coastal cities, but their damage is reduced by 85% when the city has walls. They don''t have a ranged attack and cannot attack land units.', 'en_US'),
('LOC_NAVAL_RANGED_DESCRIPTION', '[NEWLINE][NEWLINE]Naval Ranged units have a [ICON_Ranged] Ranged Attack that can attack cities, encampments, sea and land units. However, the attack is increased against land units and decreased against sea unit. Unwalled cities take normal damage, but walled cities only take half the damage done by Naval Ranged units.', 'en_US'),
('LOC_NAVAL_RAIDER_DESCRIPTION', '[NEWLINE][NEWLINE]Naval Raider units are tricky. They fight dirty. They make short [ICON_Ranged] Ranged Attacks and can move after attacking. This attack is stronger against boats, especially Naval Melee units, and does normal damage against other targets. Walled cities only take half damage from Naval Raiders.[NEWLINE][NEWLINE]Often Naval Raiders are hidden to the enemy (unless adjacent to them), but enemy Naval Raiders can detect them within their sight range. They can also pillage shore tiles with their coastal raid ability.', 'en_US'),
('LOC_NAVAL_BOMBARD_DESCRIPTION', '[NEWLINE][NEWLINE]Naval Bombard units are designed to bombard cities and encampments, doing full damage with their [ICON_Ranged] Ranged Attack even when they are walled. However, their attack is significantly less effective when used on land and sea units.', 'en_US'),

('LOC_UNIT_GALLEY_DESCRIPTION', 'Ancient era Naval Melee unit. Can only operate on coastal waters until Cartography is researched.', 'en_US'),
('LOC_UNIT_COG_DESCRIPTION', 'Medieval era Naval Melee unit. Much stronger than Galleys with extra attack strength against sea units.{LOC_NAVAL_MELEE_DESCRIPTION}', 'en_US'),
('LOC_UNIT_CARAVEL_DESCRIPTION', 'Early Renaissance era Naval Melee unit. Faster and stronger than the Cog.{LOC_NAVAL_MELEE_DESCRIPTION}', 'en_US'),
('LOC_UNIT_CORVETTE_DESCRIPTION', 'Late Renaissance era Naval Melee unit. Faster and stronger than the Caravel.{LOC_NAVAL_MELEE_DESCRIPTION}', 'en_US'),
('LOC_UNIT_IRONCLAD_DESCRIPTION', 'Industrial era Naval Melee unit. Slightly stronger than the Corvette.{LOC_NAVAL_MELEE_DESCRIPTION}', 'en_US'),
('LOC_UNIT_TORPEDO_GUNBOAT_DESCRIPTION', 'Modern era Naval Melee unit. Faster and stronger than the Ironclad.{LOC_NAVAL_MELEE_DESCRIPTION}', 'en_US'),
('LOC_UNIT_DESTROYER_DESCRIPTION', 'Atomic era Naval Melee unit that reveals Naval Raider units within sight range. Stronger than Torpedo Gunboat, and equipped with anti-air defenses.{LOC_NAVAL_MELEE_DESCRIPTION}', 'en_US'),
('LOC_UNIT_MISSILE_DESTROYER_DESCRIPTION', 'Information era Naval Melee unit that reveals Naval Raider units within sight range. Stronger than Destroyer and better anti-air.{LOC_NAVAL_MELEE_DESCRIPTION}', 'en_US'),
('LOC_UNIT_ATTACK_SUBMARINE_DESCRIPTION', 'A special Information era Naval Melee unit representing the ultimate in fragile aggression. Cannot be seen unless adjacent to it and can move after attacking. Very weak inherent combat strength (for its era) but gets a powerful attack bonus vs sea units. Able to one-shot all but the strongest sea units.{LOC_NAVAL_MELEE_DESCRIPTION}', 'en_US'),

('LOC_UNIT_QUADRIREME_DESCRIPTION', 'Classical era Naval Ranged unit. Can only operate on coastal waters until Cartography is researched.{LOC_NAVAL_RANGED_DESCRIPTION}', 'en_US'),
('LOC_UNIT_GALLEASS_DESCRIPTION', 'Medieval era Naval Ranged unit.{LOC_NAVAL_RANGED_DESCRIPTION}', 'en_US'),
('LOC_UNIT_FRIGATE_DESCRIPTION', 'Renaissance era Naval Ranged unit.{LOC_NAVAL_RANGED_DESCRIPTION}', 'en_US'),
('LOC_UNIT_ARMORED_CRUISER_DESCRIPTION', 'Industrial era Naval Ranged unit.{LOC_NAVAL_RANGED_DESCRIPTION}', 'en_US'),
('LOC_UNIT_LIGHT_CRUISER_DESCRIPTION', 'Modern era Naval Ranged unit.{LOC_NAVAL_RANGED_DESCRIPTION}', 'en_US'),
('LOC_UNIT_BATTLECRUISER_DESCRIPTION', 'Modern era Naval Ranged unit.{LOC_NAVAL_RANGED_DESCRIPTION}', 'en_US'),
('LOC_UNIT_MISSILE_CRUISER_DESCRIPTION', 'Strong Naval Ranged unit, available in the information era.{LOC_NAVAL_RANGED_DESCRIPTION}', 'en_US'),

('LOC_UNIT_PRIVATEER_DESCRIPTION', 'Renaissance era Naval Raider unit.{LOC_NAVAL_RAIDER_DESCRIPTION}', 'en_US'),
('LOC_UNIT_RAIDER_DESCRIPTION', 'Industrial era Naval Raider unit.{LOC_NAVAL_RAIDER_DESCRIPTION}', 'en_US'),
('LOC_UNIT_SUBMARINE_DESCRIPTION', 'Modern era Naval Raider unit.{LOC_NAVAL_RAIDER_DESCRIPTION}', 'en_US'),
('LOC_UNIT_NUCLEAR_SUBMARINE_DESCRIPTION', 'Highly advanced Information era Naval Raider unit that can be armed with nuclear weapons.{LOC_NAVAL_RAIDER_DESCRIPTION}', 'en_US'),

('LOC_UNIT_GREEK_FIRE_SHIP_DESCRIPTION', 'Clasical era Naval Bombard unit.{LOC_NAVAL_BOMBARD_DESCRIPTION}', 'en_US'),
('LOC_UNIT_GALLEON_DESCRIPTION', 'Medieval era Naval Bombard unit.{LOC_NAVAL_BOMBARD_DESCRIPTION}', 'en_US'),
('LOC_UNIT_SHIP_OF_THE_LINE_DESCRIPTION', 'Renaissance era Naval Bombard unit.{LOC_NAVAL_BOMBARD_DESCRIPTION}', 'en_US'),
('LOC_UNIT_PRE_DREADNOUGHT_DESCRIPTION', 'Industrial era Naval Bombard unit.{LOC_NAVAL_BOMBARD_DESCRIPTION}', 'en_US'),
('LOC_UNIT_DREADNOUGHT_DESCRIPTION', 'Modern era Naval Bombard unit.{LOC_NAVAL_BOMBARD_DESCRIPTION}', 'en_US'),
('LOC_UNIT_BATTLESHIP_DESCRIPTION', 'Atomic era Naval Bombard unit. Provides cover from air and nuclear attacks up to 1 tile away.{LOC_NAVAL_BOMBARD_DESCRIPTION}', 'en_US'),
('LOC_UNIT_RAILGUN_WARSHIP_DESCRIPTION', 'Information era Naval Bombard unit.{LOC_NAVAL_BOMBARD_DESCRIPTION}', 'en_US'),

('LOC_UNIT_ENGLISH_SHIP_OF_THE_LINE_DESCRIPTION', 'English unique Renaissance era Naval Bombard unit replacing the Ship of the Line. +7 [ICON_Strength] Combat Strength when adjacent to another First-rate.{LOC_NAVAL_BOMBARD_DESCRIPTION}', 'en_US'),
('LOC_UNIT_KOREAN_TURTLE_SHIP_DESCRIPTION', 'Korean unique Renaissance era Naval Melee unit. Faster and stronger than the Caravel. +5 [ICON_Strength] vs damaged units.{LOC_NAVAL_MELEE_DESCRIPTION}', 'en_US'),
('LOC_UNIT_CANADA_HMCS_HAIDA_DESCRIPTION', 'Canadian unique Naval Melee unit that replaces the Destroyer. +10 [ICON_Strength] versus Naval Raider class units. +5 [ICON_Strength] when in formation. Prevents friendly Traders within 4 tiles from being plundered as long as they are on a water tile.{LOC_NAVAL_MELEE_DESCRIPTION}', 'en_US'),
('LOC_UNIT_OTTOMAN_BARBARY_CORSAIR_DESCRIPTION', 'Ottoman unique Medieval era Naval Raider unit that replaces the Privateer. It costs no [ICON_Movement] Movement to coastal raid.{LOC_NAVAL_RAIDER_DESCRIPTION}', 'en_US'),
('LOC_UNIT_GERMAN_UBOAT_DESCRIPTION', 'German unique Modern era Naval Raider unit that replaces the Submarine. Cheaper to produce, +1 Sight, and +10 [ICON_Strength] Combat Strength when fighting on Ocean tiles.{LOC_NAVAL_RAIDER_DESCRIPTION}', 'en_US'),
('LOC_UNIT_DE_ZEVEN_PROVINCIEN_DESCRIPTION', 'Netherlands unique renaissance era Naval Ranged unit that replaces the Frigate. +7 [ICON_Ranged] Ranged Attack Strength when attacking cities and encampments.{LOC_NAVAL_RANGED_DESCRIPTION}', 'en_US'),
('LOC_UNIT_INDONESIAN_JONG_DESCRIPTION', 'Indonesian unique medieval era Naval Ranged that replaces the Frigate. +5 [ICON_Strength] Combat Strength when in a formation and all formation units inherit the Jong''s [ICON_Movement] Movement speed.{LOC_NAVAL_RANGED_DESCRIPTION}', 'en_US'),
('LOC_UNIT_BRAZILIAN_MINAS_GERAES_DESCRIPTION', 'Brazilian unique industrial era unit that replaces the Battleship. Unlocked by Nationalism.{LOC_NAVAL_BOMBARD_DESCRIPTION}', 'en_US')

;