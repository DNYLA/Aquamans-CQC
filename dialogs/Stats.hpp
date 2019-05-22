//Most Likely Wont be used as its better to create one using a function/Script.

class PlayerStats
{
    idd = 19002;
    movingEnable = false;
    enableSimulation = true;
    fadein = 0;
    duration = 30;
    fadeout = 0;
    onLoad = "";

	class ControlsBackground
	{
		class Back
		{
			type = 0;
			idc = -1;
			x = -0.1078974;
			y = -0.30126247;
			w = 1.20905307;
			h = 0.16747485;
			style = 0;
			text = "";
			colorBackground[] = {0.8,0.2,0.2,0.9};
			colorText[] = {1,1,1,1};
			font = "PuristaMedium";
			sizeEx = (((((safezoneW / safezoneH) min 1.2) / 1.2) / 25) * 1);

		};

	};
	class Controls
	{
		class WelcomeTxt
		{
			type = 13;
			idc = -1;
			x = -0.06999992;
			y = -0.26999989;
			w = 1.15000001;
			h = 0.05000002;
			style = 2;
			text = "Here are your Current Stats Aquaman.";
			size = (((((safezoneW / safezoneH) min 1.2) / 1.2) / 25) * 1);
			colorBackground[] = {1,1,1,0};
			class Attributes
			{

			};

		};
		class PlayerKills
		{
			type = 13;
			idc = -1;
			x = 0.00000004;
			y = -0.2099999;
			w = 0.15000007;
			h = 0.05000005;
			style = 0;
			text = "Kills: 155";
			size = (((((safezoneW / safezoneH) min 1.2) / 1.2) / 25) * 1);
			colorBackground[] = {1,1,1,0};
			class Attributes
			{

			};

		};
		class PlayerDeaths
		{
			type = 13;
			idc = -1;
			x = 0.2000001;
			y = -0.2099999;
			w = 0.13000005;
			h = 0.05000005;
			style = 0;
			text = "Deaths: 155";
			size = (((((safezoneW / safezoneH) min 1.2) / 1.2) / 25) * 1);
			colorBackground[] = {1,1,1,0};
			class Attributes
			{

			};

		};
		class PlayerKD
		{
			type = 13;
			idc = -1;
			x = 0.37000013;
			y = -0.20999989;
			w = 0.13000005;
			h = 0.05000005;
			style = 0;
			text = "K/D: 0.5";
			size = (((((safezoneW / safezoneH) min 1.2) / 1.2) / 25) * 1);
			colorBackground[] = {1,1,1,0};
			class Attributes
			{

			};

		};

	};

};
