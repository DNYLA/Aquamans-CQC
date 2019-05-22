class Aqua_Settings
{
	idd = 15003;

	class ControlsBackground
	{
		class Background
		{
			type = 0;
			idc = -1;
			x = safeZoneX + safeZoneW * 0.384375;
			y = safeZoneY + safeZoneH * 0.34111112;
			w = safeZoneW * 0.2625;
			h = safeZoneH * 0.27;
			style = 0;
			text = "";
			colorBackground[] = {0.1137,0.1137,0.1137,1};
			colorText[] = {1,1,1,1};
			font = "PuristaMedium";
			sizeEx = (((((safezoneW / safezoneH) min 1.2) / 1.2) / 25) * 1);

		};
		class Title
		{
			type = 0;
			idc = -1;
			x = safeZoneX + safeZoneW * 0.384375;
			y = safeZoneY + safeZoneH * 0.32111112;
			w = safeZoneW * 0.2625;
			h = safeZoneH * 0.02;
			style = 2;
			text = "Settings";
			colorBackground[] = {0.133,0.541,0.216,1};
			colorText[] = {1,1,1,1};
			font = "PuristaMedium";
			sizeEx = (((((safezoneW / safezoneH) min 1.2) / 1.2) / 25) * 1);

		};

	};
	class Controls
	{
		class AutoSpawnCheck: RscCheckBox
		{
			idc = 1;
			x = safeZoneX + safeZoneW * 0.39375;
			y = safeZoneY + safeZoneH * 0.35444445;
			w = safeZoneW * 0.0125;
			h = safeZoneH * 0.02;
			text = "Auto Spawn";
			onCheckedChanged = "['AutoSpawn',_this select 1] call Aquaman_fnc_UpdateSettings;";
			font = "PuristaMedium";
			sizeEx = (((((safezoneW / safezoneH) min 1.2) / 1.2) / 25) * 1);

		};
		class AutoSpawnText
		{
			type = 0;
			idc = -1;
			x = safeZoneX + safeZoneW * 0.409;
			y = safeZoneY + safeZoneH * 0.348;
			w = safeZoneW * 0.0625;
			h = safeZoneH * 0.03;
			style = 0;
			text = "Auto Spawn";
			colorBackground[] = {1,1,1,0};
			colorText[] = {1,1,1,1};
			font = "PuristaLight";
			sizeEx = (((((safezoneW / safezoneH) min 1.2) / 1.2) / 25) * 1);

		};
		class LowDetailCheck: RscCheckBox
		{
			idc = 2;
			x = safeZoneX + safeZoneW * 0.39375;
			y = safeZoneY + safeZoneH * 0.39444445;
			w = safeZoneW * 0.0125;
			h = safeZoneH * 0.02;
			text = "";
			onCheckedChanged = "['LowDetail',_this select 1] call Aquaman_fnc_UpdateSettings;";
			font = "PuristaMedium";
			sizeEx = (((((safezoneW / safezoneH) min 1.2) / 1.2) / 25) * 1);

		};
		class LowDetailText
		{
			type = 0;
			idc = -1;
			x = safeZoneX + safeZoneW * 0.409;
			y = safeZoneY + safeZoneH * 0.388;
			w = safeZoneW * 0.0725;
			h = safeZoneH * 0.03;
			style = 0;
			text = "Low Detail Mode";
			colorBackground[] = {1,1,1,0};
			colorText[] = {1,1,1,1};
			font = "PuristaLight";
			sizeEx = (((((safezoneW / safezoneH) min 1.2) / 1.2) / 25) * 1);

		};

	};

};
