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
			x = 0.34848487;
			y = 0.26212126;
			w = 0.30212122;
			h = 0.3847475;
			style = 0;
			text = "";
			colorBackground[] = {0.1137,0.1137,0.1137,1};
			colorText[] = {0.9294,0.1137,0.7608,1};
			font = "PuristaMedium";
			sizeEx = (((((safezoneW / safezoneH) min 1.2) / 1.2) / 25) * 1);

		};
		class Title
		{
		    moving = 1;
			type = 0;
			idc = -1;
			x = 0.34803045;
			y = 0.26000018;
			w = 0.30149629;
			h = 0.04000005;
			style = 2;
			text = "Teleport";
			colorBackground[] = {0.133,0.541,0.216,1};
			colorText[] = {1,1,1,1};
			font = "PuristaMedium";
			sizeEx = (((((safezoneW / safezoneH) min 1.2) / 1.2) / 25) * 1);

		};

	};
	class Controls
	{
		class TPListBox: RscListBox
		{
			type = 5;
			idc = 1;
			x = 0.36363638;
			y = 0.32111115;
			w = 0.27272728;
			h = 0.26101011;
			colorBackground[] = {0,0,0,0.1349};
            colorBackground2[] = {0,0,0,0.1349};
            colorDisabled[] = {0,0,0,1};
            colorSelect[] = {1,1,1,1};
            colorSelect2[] = {1, 1, 1, 1};
            colorText[] = {1,1,1,1};
			font = "PuristaLight";
			sizeEx = (((((safezoneW / safezoneH) min 1.2) / 1.2) / 30) * 1);
			colorSelectBackground[] = {0.3451,0.3451,0.3451,1};
			colorSelectBackground2[] = {0.3451,0.3451,0.3451,1};
            shadow = 0.75;
            onLBDblClick = "[] call Aquaman_TeleportHandler";
		};
		class SpawnBtn
		{
			type = 1;
			idc = -1;
			x = 0.50000018;
			y = 0.60000053;
			w = 0.13000007;
			h = 0.035;
			style = 0+2;
			text = "Spawn";
			onButtonClick = "[] call Aquaman_TeleportHandler";
			borderSize = 0;
			colorBackground[] = {0,0,0,1};
			colorBackgroundActive[] = {0.2,0.2,0.2,1};
			colorBackgroundDisabled[] = {0.2,0.2,0.2,1};
			colorBorder[] = {0,0,0,0};
			colorDisabled[] = {0.2,0.2,0.2,1};
			colorFocused[] = {0,0,0,1};
			colorShadow[] = {0,0,0,1};
			colorText[] = {1,1,1,1};
			font = "PuristaMedium";
			offsetPressedX = 0;
			offsetPressedY = 0;
			offsetX = 0;
			offsetY = 0;
			sizeEx = (((((safezoneW / safezoneH) min 1.2) / 1.2) / 27) * 1);
			soundClick[] = {"\A3\ui_f\data\sound\RscButton\soundClick",0.09,1.0};
			soundEnter[] = {"\A3\ui_f\data\sound\RscButton\soundEnter",0.09,1.0};
			soundEscape[] = {"\A3\ui_f\data\sound\RscButton\soundEscape",0.09,1.0};
			soundPush[] = {"\A3\ui_f\data\sound\RscButton\soundPush",0.09,1.0};

		};
		class CancelButton
		{
			type = 1;
			idc = -1;
			x = 0.36000018;
			y = 0.60000053;
			w = 0.13000007;
			h = 0.035;
			style = 0+2;
			text = "Cancel";
			action = closeDialog 2000;
			borderSize = 0;
			colorBackground[] = {0,0,0,1};
            colorBackgroundActive[] = {0.2,0.2,0.2,1};
            colorBackgroundDisabled[] = {0.2,0.2,0.2,1};
            colorBorder[] = {0,0,0,0};
            colorDisabled[] = {0.2,0.2,0.2,1};
            colorFocused[] = {0,0,0,1};
            colorShadow[] = {0,0,0,1};
            colorText[] = {1,1,1,1};
			font = "PuristaMedium";
			offsetPressedX = 0;
			offsetPressedY = 0;
			offsetX = 0;
			offsetY = 0;
			sizeEx = (((((safezoneW / safezoneH) min 1.2) / 1.2) / 27) * 1);
			soundClick[] = {"\A3\ui_f\data\sound\RscButton\soundClick",0.09,1.0};
			soundEnter[] = {"\A3\ui_f\data\sound\RscButton\soundEnter",0.09,1.0};
			soundEscape[] = {"\A3\ui_f\data\sound\RscButton\soundEscape",0.09,1.0};
			soundPush[] = {"\A3\ui_f\data\sound\RscButton\soundPush",0.09,1.0};

		};

	};

};