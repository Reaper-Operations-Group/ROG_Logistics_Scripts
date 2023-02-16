class CfgPatches
{
   class ROG_Logistics_Scripts
   {
         units[] = {};
         weapons[] = {};
         requiredAddons[] = {};
   };
};

/*
	Calling the init script when a mission is loaded
*/
class CfgFunctions
{
	class ROG
	{
		class MyCategory
		{
			class MyInit
			{
				postInit=1;
	            file = "\ROG_Logistics_Scripts\scripts\fn_init.sqf";
	            description = "Initializing Scripts";
			};
		};
	};
};
