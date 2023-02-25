USE rogdb;

SET FOREIGN_KEY_CHECKS = 0;
TRUNCATE TABLE users;
TRUNCATE TABLE item;
TRUNCATE TABLE itemtype;
TRUNCATE TABLE lockeritem;
SET FOREIGN_KEY_CHECKS = 1;


INSERT INTO users (uid, username) 
VALUES 
(76561198102296716, 'M. "Jager" Kieran'), 
(76561198278988766, 'Ajax'), 
(76561198047902044, 'Azuki'),
(76561197983685912, 'Moose'),
(76561198167936647, 'B. Dutch');

INSERT INTO itemtype (name)
VALUES 
('Uniform'), ('Vest'), ('Backpack'), ('Facewear'), ('NVG'), ('Headgear'), 
('Melee'), ('Misc'), ('Primary Weapon'), ('Secondary Weapon'), ('Launcher'), 
('Attachment'), ('Magazine');
# 1-Uniform, 2-Vest, 3-Backpack, 4-Facewear, 5-NVG, 6-Headgear
# 7-Melee, 8-Misc, 9-Primary Weapon, 10-Secondary Weapon, 11-Launcher
# 12-Attachment, 13-Magazine

INSERT INTO item (typeid, name, classname, price, section)
VALUES
(9, "M14", "hlc_rifle_M14", 0, 0), 
(9, "Steyr Stgw .58", "hlc_rifle_STG58F", 0, 0),
(10, "Russian Cavalry Sashka", "Sashka_Russian", 0, 0),
(10, "SW Model 500 12.7x41mm Magnum", "CSW_M500", 0, 0),
(9, "M60E4", "hlc_lmg_M60E4", 0, 0),
(10, "FNX-45 Tactical", "hgun_Pistol_heavy_01_F", 0, 0),
(1, "Combat Uniform OCP", "rhs_uniform_cu_ocp", 0, 0),
(3, "Bergen Backpack", "B_Bergen_mcamo_F", 0, 0),
(6, "[VSM] MICH 2000 2", "VSM_Mich2000_2_OCP", 0, 0),
(9, "Izhmash AK", "hlc_rifle_ak47", 0, 0),
(9, "Steyr AUGA2 Carbine (Black)", "hlc_rifle_auga2carb_b", 0, 0),
(9, "Steyr AUGA2 (Black)", "hlc_rifle_auga2_b", 0, 0),
(9, "Steyr AUGA3 (GL/Black)", "hlc_rifle_auga3_GL_b", 0, 0),
(9, "SR-16 CQB Mod2 M-LOK (CTR)", "Tier1_SR16_CQB_Mod2_CTR_Black", 0, 0),
(10, "P320", "Tier1_P320", 0, 0),
(9, "M14 EBR-R1", "rhs_weap_m14ebrri", 0, 0),
(9, "Remington M870 Express", "CSW_M870", 0, 0),
(9, "SOCOM 16", "rhs_weap_m14_socom", 0, 0),
(9, "M4A1 Block II", "rhs_weap_m4a1_blockII", 0, 0),
(9, "Mk 17 Mod 0", "hlc_WP_Mk17", 0, 0),
(9, "FN SCAR-H CQC", "hlc_WP_SCARH_CQC", 0, 0),
(9, "Mk 18 Mod 1", "rhs_weap_mk18", 0, 0),
(9, "AK-105 (Zentico/B-33)", "rhs_weap_ak105_zenitco01_b33", 0, 0),
(9, "AR15 Magpul Carbine", "hlc_rifle_RU5562", 0, 0),
(9, "AR15 .300 Dissipator Carbine", "hlc_rifle_vendimus", 0, 0),
(9, "MCX 11.5 Virtus", "Tier1_SIG_MCX_115_Virtus_300BLK_Black", 0, 0),
(10, "Glock 17", "rhs_weap_glock17g4", 0, 0),
(10, "SigSauer P229R Combat (.40)", "hlc_pistol_P229R_40Combat", 0, 0);

INSERT INTO lockeritem (uid, itemid)
VALUES
(76561198102296716,1), (76561198102296716,2), (76561198102296716,3), (76561198102296716,4),
(76561198278988766,5), (76561198278988766,6), (76561198278988766,7), (76561198278988766,8), (76561198278988766,9),
(76561198047902044,10), (76561198047902044,11), (76561198047902044,12),(76561198047902044,13),(76561198047902044,14), (76561198047902044,15),
(76561197983685912,16), (76561197983685912,17), (76561197983685912,18), (76561197983685912,19),
(76561198167936647,20),(76561198167936647,21),(76561198167936647,22),(76561198167936647,23),(76561198167936647,24),(76561198167936647,25),(76561198167936647,26),(76561198167936647,27),(76561198167936647,28);
