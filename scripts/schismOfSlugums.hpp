	
	
	/* Todo: Attaching Cost/Value to Weapons
	Hashmap Hashmap Hashmap Hashmap Hashmap Hashmap Hashmap Hashmap Hashmap AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA 
	I DONT KNOW WHAT THAT IS
	REGEX? YEAH LIKE YOUR MOM REGEXED YOU AT THE HOSPITAL
	DATABASE? I cant think of a funny line to put here
	
	Future plan: 
	Hashmap Snipers/Launchers/AssaultRifles/SMGs/MachineGuns/Pistols/Uniforms/Vests/Helmets/NVGs/Attachments 
	with their weapon IDs with a Cost for an ingame item shop.
	Make some kind of UI for purchasing or Aquiring what's already owned
	
	
	Example Hashmap: 
	
	private _sniperID = ["gun","gun2","gun3"];
	private _sniperVal = [4000,3000,5000];
	
	private _sniperHash = _sniperID createHashMapFromArray _sniperVal;
	
	should return something like: 
	
	_sniperHash = [["gun",4000],["gun2",3000],["gun3",5000],]; */
	
	/* Todo: Need work on something to write all these costs for me where weapons are functionally identical?
	I will kill myself if I have to do this individually for every weapon and item ID 3-12 times */
	
	/* List of all Items? Might be better to learn how to #include this from somewhere else
	
	private _equipmentIDs = [];
	private _uniformIDs = [];
	private _vestIDs = [];
	private _helmetIDs = [];
	
	private _launcherIDs = [];
	private _sniperRifleIDs = [];
	private _assaultRifleIDs = [];
	private _submachineGunIDs = [];
	private _machineGunIDs = [];
	private _pistolIDs = [];
	
	private _binocIDs = [];
	private _nvgIDs = [];
	
	*/
	
	
	public sponsoredEquipment = ["rhs_weap_m16a4_carryhandle","rhs_weap_m4a1_carryhandle","hlc_smg_mp5k_PDW","rhsusf_weap_glock17g4","RH_g17","rhsusf_weap_m1911a1","RH_m1911","rhs_weap_makarov_pm","RH_mak","hgun_Pistol_01_F","ROG_H_Guardian_Blk","ROG_H_Hammer_Blk","ROG_H_Titan_Blk","ROG_H_Guardian_OD","ROG_H_Guardian_Tan","ROG_H_Guardian_White","ROG_H_Hammer_OD","ROG_H_Hammer_Tan","ROG_H_Hammer_White","ROG_H_ReaperGeneral_OD","ROG_H_titan_OD","ROG_H_Titan_Tan","ROG_H_Titan_White","VSM_BackwardsHat_Peltor_black","VSM_BackwardsHat_Peltor_CMMG","VSM_BackwardsHat_Peltor_ION","VSM_BackwardsHat_Peltor_OD","VSM_BackwardsHat_Peltor_Sero","VSM_BackwardsHat_Peltor_tan","VSM_BackwardsHat_Peltor_US","VSM_Beanie_Black","VSM_Beanie_OD","VSM_Beanie_tan","rhssaf_bandana_digital","rhssaf_bandana_digital_desert","rhssaf_bandana_md2camo","rhssaf_bandana_oakleaf","rhssaf_bandana_smb","H_Bandanna_gry","H_Bandanna_blu","H_Bandanna_cbr","H_Bandanna_khk_hs","H_Bandanna_khk","H_Bandanna_mcamo","H_Bandanna_sgg","H_Bandanna_sand","H_Bandanna_surfer","H_Bandanna_surfer_blk","H_Bandanna_surfer_grn","H_Bandanna_camo","H_Booniehat_mgrn","H_Booniehat_khk","H_Booniehat_oli","H_Booniehat_tan","H_Booniehat_taiga","H_Booniehat_tna_F","H_Booniehat_wdl","rhs_Booniehat_m81","rhs_Booniehat_ocp","rhs_Booniehat_ucp","H_Booniehat_mcamo","rhssaf_booniehat_md2camo","rhssaf_booniehat_digital","rhssaf_helmet_m97_olive_nocamo","rhssaf_helmet_m97_black_nocamo","rhssaf_helmet_m97_digital","rhssaf_helmet_m97_md2camo","rhssaf_helmet_m97_oakleaf","rhssaf_helmet_m97_woodland","rhssaf_helmet_m97_veil_woodland","H_Cap_grn_BI","H_Cap_blk","H_Cap_blu","H_Cap_blk_CMMG","H_Cap_grn","H_Cap_blk_ION","H_Cap_oli","H_Cap_surfer","H_Cap_red","H_Cap_tan","H_Cap_khaki_specops_UK","H_Cap_usblack","Project_BJC_PCU_Cargo25","Project_BJC_Shirt_Cargo2","Project_BJC_Shirt_Cargo6","Project_BJC_Shirt_Cargo10","Project_BJC_Shirt_Cargo14","Project_BJC_Shirt_Cargo","Project_BJC_Shirt_Cargo4","Project_BJC_Shirt_Cargo8","Project_BJC_Shirt_Cargo12","Project_BJC_Shirt_Cargo1","Project_BJC_Shirt_Cargo5","Project_BJC_Shirt_Cargo9","Project_BJC_Shirt_Cargo13","Project_BJC_Shirt_Cut_Cargo2","Project_BJC_Shirt_Cut_Cargo6","Project_BJC_Shirt_Cut_Cargo10","Project_BJC_Shirt_Cut_Cargo14","Project_BJC_Shirt_Cut_Cargo","Project_BJC_Shirt_Cut_Cargo4","Project_BJC_Shirt_Cut_Cargo12","Project_BJC_Shirt_Cut_Cargo8","Project_BJC_Shirt_Cut_Cargo1","Project_BJC_Shirt_Cut_Cargo5","Project_BJC_Shirt_Cut_Cargo9","Project_BJC_Shirt_Cut_Cargo13","Project_BJC_Cargo2","Project_BJC_Cargo6","Project_BJC_Cargo14","Project_BJC_Cargo10","Project_BJC_Cargo","Project_BJC_Cargo4","Project_BJC_Cargo12","Project_BJC_Cargo8","Project_BJC_Cargo1","Project_BJC_Cargo5","Project_BJC_Cargo13","Project_BJC_Cargo9","Project_BJC_Shirt_Jean","Project_BJC_Shirt_Jean1","Project_BJC_Shirt_Jean2","Project_BJC_Shirt_Jean3","Project_BJC_Shirt_Cut_Jean","Project_BJC_Shirt_Cut_Jean1","Project_BJC_Shirt_Cut_Jean2","Project_BJC_Shirt_Cut_Jean3","Project_BJC","Project_BJC_2","Project_BJC_3","Project_BJC_1","Project_BJC_Shirt_Jean_blk2","Project_BJC_Shirt_Jean_blk1","Project_BJC_Shirt_Jean_blk","Project_BJC_Shirt_Jean_blk3","Project_BJC_blk_2","Project_BJC_blk","Project_BJC_blk_1","Project_BJC_Shirt_Cut_Jean_blk","Project_BJC_Shirt_Cut_Jean_blk1","Project_BJC_Shirt_Cut_Jean_blk2","Project_BJC_Shirt_Cut_Jean_blk3","tg_u_dadpat_floral","tg_u_dadpat_tacky","tg_u_dadpat_blue_hi","tg_u_dadpat_red_hi","tg_u_dadpat_grn_palm","tg_u_dadpat_prp_palm","tg_u_dadpat_blue_plaid","tg_u_dadpat_grn_plaid","tg_u_dadpat_orng_plaid","tg_u_dadpat_red_plaid","tg_u_dadpat_shorts_floral","tg_u_dadpat_shorts_tacky","tg_u_dadpat_shorts_blue_hi","tg_u_dadpat_shorts_red_hi","tg_u_dadpat_shorts_grn_palm","tg_u_dadpat_shorts_prp_palm","tg_u_dadpat_shorts_blue_plaid","tg_u_dadpat_shorts_grn_plaid","tg_u_dadpat_shorts_orng_plaid","tg_u_dadpat_shorts_red_plaid","TRYK_V_Bulletproof_BLK","V_TacChestrig_cbr_F","V_TacChestrig_grn_F","V_TacChestrig_oli_F","V_TacVest_blk","V_TacVest_brn","V_TacVest_camo","V_TacVest_khk","V_TacVest_oli","V_BandollierB_blk","V_BandollierB_cbr","V_BandollierB_khk","V_BandollierB_oli","V_BandollierB_rgr","rhsgref_chestrig","V_Chestrig_rgr","V_Chestrig_blk","V_Chestrig_khk","V_Chestrig_oli","V_Chestrig_Oli_Light_F","B_Messenger_Black_F","B_Messenger_Coyote_F","B_Messenger_Gray_F","B_Messenger_Olive_F","B_LegStrapBag_black_F","B_LegStrapBag_coyote_F","B_LegStrapBag_olive_F","V_LegStrapBag_black_F","V_LegStrapBag_coyote_F","V_LegStrapBag_olive_F","B_FieldPack_blk","B_FieldPack_cbr","B_FieldPack_green_F","B_FieldPack_khk","B_FieldPack_oli","B_FieldPack_taiga_F","B_AssaultPack_blk","B_AssaultPack_cbr","B_AssaultPack_rgr","B_AssaultPack_khk","B_AssaultPack_sgg","B_AssaultPack_wdl_F","B_AssaultPack_tna_F","ROG_Raven2","ROG_Raven1","TFAR_rt1523g_fabric","TFAR_rt1523g_black","TFAR_rt1523g_green","TFAR_rt1523g_sage","B_TacticalPack_rgr","B_TacticalPack_blk","B_TacticalPack_oli"
	]; 
	
	public playerEquipmentHashmap = 
	[ /* Only Example at the moment; use playerID (maybe playerUID) as a key to find what items the player already owns */
		["Waterloo"
		],
		["B.Dutch"
		],
		["Boomer"
		],
		["Doc"
		],
		["Ducky"
		],
		["Bane"
		],
		["JT"
		],
		["Keegan"
		],
		["Kieran"
		],
		["Miku"
		],
		["Primal","hlc_rifle_auga2carb_b","hlc_rifle_auga2_b","hlc_rifle_auga3_b","Tier1_SR16_CQB_Mod2_CTR_Black","Tier1_SR16_CQB_Mod2_IMOD_Black","Tier1_SR16_CQB_Mod2_LMT_Black","Tier1_SR16_CQB_Mod2_MFT_Black",
		],
		["Dwaid"
		],
		["Moose"
		],
		["Ajax","hlc_lmg_M60E4","hgun_Pistol_heavy_01_F","RH_fnp45","rhs_uniform_cu_ocp","rhs_uniform_acu_ocp","VSM_Mich2000_2_OCP","B_Bergen_dgtl_F","B_Bergen_hex_F","B_Bergen_mcamo_F","B_Bergen_tna_F"
		],
		["Static","hlc_rifle_auga2carb_b","hlc_rifle_auga2_b","hlc_rifle_auga3_b","Tier1_SR16_CQB_Mod2_CTR_Black","Tier1_SR16_CQB_Mod2_IMOD_Black","Tier1_SR16_CQB_Mod2_LMT_Black","Tier1_SR16_CQB_Mod2_MFT_Black",
		],
		["Azuki","hlc_rifle_auga2carb_b","hlc_rifle_auga2_b","hlc_rifle_auga3_b","Tier1_SR16_CQB_Mod2_CTR_Black","Tier1_SR16_CQB_Mod2_IMOD_Black","Tier1_SR16_CQB_Mod2_LMT_Black","Tier1_SR16_CQB_Mod2_MFT_Black","arifle_AKM_F","rhs_weap_akm","rhs_weap_akmn","rhs_weap_akms","hlc_rifle_akm","Tier1_P320","VSM_OGA_Crye_grey_Camo","VSM_Multicam_od_shirt_Camo","VSM_Multicam_tan_pants_Camo","VSM_FAPC_MG_OGA_OD","VSM_FAPC_Operator_OGA_OD","VSM_OGA_OD_Helmet1","G_AirPurifyingRespirator_01_F","VSM_OGA_carryall","VSM_OGA_OD_carryall","VSM_OGA_Backpack_Compact","VSM_OGA_OD_Backpack_Compact"
		],
		["Hun","hlc_rifle_auga2carb_b","hlc_rifle_auga2_b","hlc_rifle_auga3_b","Tier1_SR16_CQB_Mod2_CTR_Black","Tier1_SR16_CQB_Mod2_IMOD_Black","Tier1_SR16_CQB_Mod2_LMT_Black","Tier1_SR16_CQB_Mod2_MFT_Black","hlc_lmg_mk46mod1","hlc_lmg_mk46","Tier1_P320","VSM_OGA_Backpack_Compact","VSM_OGA_OD_Backpack_Compact","VSM_OGA_OD_carryall","VSM_OGA_carryall","VSM_FAPC_MG_OGA_OD","VSM_FAPC_Operator_OGA_OD","VSM_Multicam_od_shirt_Camo","VSM_Multicam_tan_pants_Camo_SS","VSM_OGA_OD_Helmet1","G_AirPurifyingRespirator_01_F"
		],
		["Momo","hgun_Pistol_Signal_F","rhsusf_weap_MP7A2_folded","rhsusf_weap_MP7A2","rhsusf_hgu56p_visor_mask_green_mo","dr_BLKfacp_op","flb_mappack_Medical_BLK","O_NVGoggles_grn_F"
		],
		["Gulagmann","Tier1_SR16_CQB_Mod2_CTR_Black","Tier1_SR16_CQB_Mod2_IMOD_Black","Tier1_SR16_CQB_Mod2_LMT_Black","Tier1_SR16_CQB_Mod2_MFT_Black","Tier1_P320","VSM_OGA_Backpack_Compact","VSM_OGA_OD_Backpack_Compact","VSM_OGA_OD_carryall","VSM_OGA_carryall","VSM_FAPC_Operator_OGA_OD","VSM_Multicam_od_shirt_Camo","VSM_Multicam_tan_pants_Camo_SS","VSM_OGA_OD_Helmet1","G_AirPurifyingRespirator_01_F","rhs_weap_m38_rail"
		],
		["Red"
		],
		["Stick"
		]
	];
	
	
	
	private playerID = (getPlayerID player); /* probably needs to be this or _this */
	private amountOfIDs = (count playerEquipmentHashmap); /* counting the current amount in the Array to check later if a new one was added */
	
	
	public retrieveInfo = playerEquipmentHashmap getOrDefault[playerID, [], true];
	
	playerEquipmentHashmap pushBack playerID;
		
	if (amountOfIDs <= (count playerEquipmentHashmap))
		{
			systemChat "User ID does not exist.";
			systemChat format ["Saved ID:%1 to User Database.",playerID];
		};
	
		
		
		
		
		