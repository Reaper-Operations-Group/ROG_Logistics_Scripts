USE rogdb;

SET FOREIGN_KEY_CHECKS = 0;
TRUNCATE TABLE users;
TRUNCATE TABLE item;
TRUNCATE TABLE itemtype;
TRUNCATE TABLE lockeritem;
SET FOREIGN_KEY_CHECKS = 1;


INSERT INTO users (uid, username) 
VALUES (1111111111, 'Test User 1'), (2222222222, 'Test User 2'), (3333333333, 'Test User 3');

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
(1,'Marshal Clothes','U_Marshal', 250, 0),
(2,'Rangemaster Belt', 'V_Rangemaster_belt', 250, 0),
(3, 'Assault Pack(Black)','B_AssaultPack_blk', 100, 0),
(9, 'CTAR-21', 'arifle_TRG20_F', 850,1),
(13, '5.56mm 30rnd Reload Tracer (Green) Mag', '30Rnd_556x45_Stanag_green',5,0);

INSERT INTO lockeritem (uid, itemid)
VALUES
(1111111111, 1), (2222222222, 1), (3333333333, 1),
(1111111111, 2), (2222222222, 2), (3333333333, 2),
(1111111111, 3), (2222222222, 3), (3333333333, 3),
(1111111111, 4), (2222222222, 4), (3333333333, 4),
(1111111111, 5), (2222222222, 5), (3333333333, 5),
(1111111111, 5), (2222222222, 5), (3333333333, 5),
(1111111111, 5), (2222222222, 5), (3333333333, 5),
(1111111111, 5), (2222222222, 5), (3333333333, 5);
