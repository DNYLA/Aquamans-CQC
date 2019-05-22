class TAG_AQUAMANHUD
{
	idd = -1;
    duration = 1e+1000;
    fadeIn = 0;
    fadeOut = 0;
	onLoad = "uiNamespace setVariable ['TAG_AQUAMAN_display', _this select 0];";

	class Controls
	{
		class Background
		{
			type = 0;
			idc = 0;
			x = 1.53000028;
			y = 1.16000023;
			w = 0.18;
			h = 0.05000011;
			style = 128;
			text = "";
			colorBackground[] = {0,0,0,0.7936};
			colorText[] = {0,0,0,1};
			font = "PuristaMedium";
			sizeEx = (((((safezoneW / safezoneH) min 1.2) / 1.2) / 25) * 1);

		};
		class Health
		{
			type = 0;
			idc = 15002;
			x = 1.56000012;
			y = 1.17000009;
			w = 0.12000003;
			h = 0.03000012;
			style = 2;
			text = "100%";
			colorBackground[] = {1,1,1,0};
			colorText[] = {0.302,1,0.302,1};
			font = "PuristaBold";
			sizeEx = (((((safezoneW / safezoneH) min 1.2) / 1.2) / 25) * 1);

		};
		class HealthImage : RscPicture
		{
			type = 0;
			idc = 0;
			x = 1.5400002;
			y = 1.17000018;
			w = 0.02727273;
			h = 0.03232325;
			text = "images\health.paa";
			sizeEx = (((((safezoneW / safezoneH) min 1.2) / 1.2) / 25) * 1);

		};

	};

};
