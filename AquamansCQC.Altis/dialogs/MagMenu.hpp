class Aqua_Mags
{
	idd = 2;
	movingEnable = true;
	enableSimulation = true;

	class ControlsBackground
	{
		class Background
		{
			type = 0;
			idc = -1;
			x = 0.30909091;
			y = 0.1919192;
			w = 0.41212122;
			h = 0.68464649;
			style = 0;
			text = "";
			colorBackground[] = {0.1137,0.1137,0.1137,1};
			colorText[] = {0.9294,0.1137,0.7608,1};
			font = "PuristaMedium";
			sizeEx = (((((safezoneW / safezoneH) min 1.2) / 1.2) / 25) * 1);

		};
		class Title
		{
			type = 0;
			idc = -1;
			x = 0.30803043;
			y = 0.19000017;
			w = 0.41149628;
			h = 0.06000005;
			style = 2;
			text = "Magazines";
			colorBackground[] = {0.102,0.2,0.6,1};
			colorText[] = {1,1,1,1};
			font = "PuristaMedium";
			sizeEx = (((((safezoneW / safezoneH) min 1.2) / 1.2) / 25) * 1);
		};

	};
	class Controls
	{
		class Mags_762 : Aqua_RscButton
		{
			type = 1;
			idc = -1;
			x = 0.37090915;
			y = 0.28959607;
			w = 0.27878788;
			h = 0.05454546;
			text = "7.62";
			borderSize = 0;
			action = [] execVM "scripts\Mags\Mags_762.sqf";
		};
		class Mags_AK762 : Aqua_RscButton
		{
			type = 1;
			idc = -1;
			x = 0.37090914;
			y = 0.36959603;
			w = 0.27878788;
			h = 0.05454546;
			text = "AK 7.62";
			borderSize = 0;
			action = [] execVM "scripts\Mags\Mags_AK762.sqf";
		};
		class Mags_65Casless : Aqua_RscButton
		{
			type = 1;
			idc = -1;
			x = 0.37090915;
			y = 0.44959606;
			w = 0.27878788;
			h = 0.05454546;
			text = "6.5 Caseless";
			borderSize = 0;
			action = [] execVM "scripts\Mags\Mags_65CaselessGreen.sqf";
		};
		class mags_65STANAG : Aqua_RscButton
		{
			type = 1;
			idc = -1;
			x = 0.37090914;
			y = 0.52959599;
			w = 0.27878788;
			h = 0.05454546;
			text = "6.5";
			borderSize = 0;
			action = [] execVM "scripts\Mags\Mags_65.sqf";
		};
		class mags_556 : Aqua_RscButton
		{
			type = 1;
			idc = -1;
			x = 0.37090915;
			y = 0.60959606;
			w = 0.27878788;
			h = 0.05454546;
			text = "5.56";
			borderSize = 0;
			action = [] execVM "scripts\Mags\Mags_556.sqf";
		};
		class ReturnSpawn : Aqua_RscButton
		{
			type = 1;
			idc = -1;
			x = 0.34151519;
			y = 0.70000017;
			w = 0.3387879;
			h = 0.05464649;
			text = "Spawn";
			borderSize = 0;
			action = [] execVM "scripts\ReturnSpawn.sqf";
		};
		class Cancel : Aqua_RscButton
		{
			type = 1;
			idc = -1;
			x = 0.34151519;
			y = 0.78000017;
			w = 0.3387879;
			h = 0.05464649;
			text = "Cancel";
			borderSize = 0;
			action = closeDialog 2;
		};
		
	};
	
};
