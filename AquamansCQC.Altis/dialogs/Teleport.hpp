class Aqua_Teleport
{
	idd = 2000;
	movingEnable = true;
	enableSimulation = true;

	class ControlsBackground
	{
		class Background
		{
			type = 0;
			idc = -1;
			x = 0.30848486;
			y = 0.19212123;
			w = 0.41212122;
			h = 0.6647475;
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
			text = "Teleport";
			colorBackground[] = {0.102,0.2,0.6,1};
			colorText[] = {1,1,1,1};
			font = "PuristaMedium";
			sizeEx = (((((safezoneW / safezoneH) min 1.2) / 1.2) / 25) * 1);
		};

	};
	class Controls
	{
		class OGTP : Aqua_RscButton
		{
			type = 1;
			idc = -1;
			x = 0.34151519;
			y = 0.28000005;
			w = 0.3387879;
			h = 0.05464649;
			text = "OG Arms";
			borderSize = 0;
			action = [] execVM "scripts\TP\ogTP.sqf";

		};
		class AirportTP : Aqua_RscButton
		{
			type = 1;
			idc = -1;
			x = 0.34151519;
			y = 0.36000008;
			w = 0.3387879;
			h = 0.05464649;
			text = "Airport";
			borderSize = 0;
			action = [] execVM "scripts\TP\AirportTP.sqf";

		};
		class ChurchTP : Aqua_RscButton
		{
			type = 1;
			idc = -1;
			x = 0.34151519;
			y = 0.44000014;
			w = 0.3387879;
			h = 0.05464649;
			text = "Church";
			borderSize = 0;
			action = [] execVM "scripts\TP\ChurchTP.sqf";

		};
		class FedTP : Aqua_RscButton
		{
			type = 1;
			idc = -1;
			x = 0.34151519;
			y = 0.52000013;
			w = 0.3387879;
			h = 0.05464649;
			text = "Federal Reserve";
			borderSize = 0;
			action = [] execVM "scripts\TP\FedTP.sqf";

		};
		class ApdTP : Aqua_RscButton
		{
			type = 1;
			idc = -1;
			x = 0.34151519;
			y = 0.60000014;
			w = 0.3387879;
			h = 0.05464649;
			text = "APD";
			borderSize = 0;
			action = [] execVM "scripts\TP\ApdTP.sqf";

		};
		class LabTP : Aqua_RscButton
		{
			type = 1;
			idc = -1;
			x = 0.34151519;
			y = 0.68000015;
			w = 0.3387879;
			h = 0.05464649;
			text = "Laboratory";
			borderSize = 0;
			action = [] execVM "scripts\TP\LabTP.sqf";

		};
		class MushroomTP : Aqua_RscButton
		{
			type = 1;
			idc = -1;
			x = 0.34151519;
			y = 0.76000017;
			w = 0.3387879;
			h = 0.05464649;
			text = "Mushroom";
			borderSize = 0;
			action = [] execVM "scripts\TP\MushroomTP.sqf";

		};

	};

};
