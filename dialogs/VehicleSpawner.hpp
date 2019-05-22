class AquamanVVS
{
	idd = 18002;
	movingEnable = false;
	enableSimulation = true;
	fadein = 0;
	duration = 1e+011;
	fadeout = 0;
	onLoad = "";

	class ControlsBackground
	{
		class Background : Aqua_RscBackground
		{
			type = 0;
			idc = -1;
			x = 0;
			y = 0.18030305;
			w = 1;
			h = 0.57777779;
			text = "";

		};

		class LbBackground : Aqua_RscBackground
		{
			type = 0;
			idc = -1;
			x = 0.02000017;
			y = 0.21030316;
			w = 0.96000004;
			h = 0.4977778;
			text = "";
			colorBackground[] = {0.2392,0.2392,0.2392,1};

		};

		class TitleBackground : Aqua_RscTitleBackground
		{
		    moving = 1;
			type = 0;
			idc = -1;
			x = 0;
			y = 0.15000007;
			w = 1;
			h = 0.03666671;
			colorBackground[] = {0.133,0.541,0.216,1};
			colorText[] = {1,1,1,1};
			text = "Aquaman's Vehicle Spawner";
		};

	};
	class Controls
	{

		class VehicleList : RscListBox
		{
			type = 5;
			idc = 1;
			x = 0.03000004;
			y = 0.22000009;
			w = 0.94000003;
			h = 0.48000003;
			colorBackground[] = {0,0,0,0.1349};
			colorBackground2[] = {0,0,0,0.1349};
			colorDisabled[] = {0,0,0,1};
			colorSelect[] = {1,1,1,1};
			colorText[] = {1,1,1,1};
			colorSelectBackground[] = {0.3451,0.3451,0.3451,1};
			colorSelectBackground2[] = {0.3451,0.3451,0.3451,1};
			shadow = 0.75;
			onLBDblClick = "[] call Aquaman_VehicleCreate";
		};

		class BottomBar : Aqua_RscBottomBar
		{
			type = 0;
			idc = -1;
			x = 0;
			y = 0.71919192;
			w = 1;
			h = 0.03838386;

		};

        //Button Doesnt Show for some reason will fix it.
		/* class SpawnButton : Aqua_RscButton
		{
			type = 1;
			idc = 2;
            x = 0.85000001;
            y = 0.72727274;
            w = 13333334;
            h = 0.02424244;
            //Size = 1;
			text = "Spawn";
            colorBackground[] = {0,0,0,1};
            colorBorder[] = {0,0,0,0};
            colorDisabled[] = {1,1,1,0.2};
            colorFocused[] = {0.129,0.537,0.212,1};
            colorShadow[] = {0,0,0,0};
            colorText[] = {1,1,1,1};
            onButtonClick = "[] call Aquaman_VehicleCreate";
            borderSize = 0;
		}; */

        class SpawnButton : Aqua_RscButton
        {
            type = 1;
            idc = -1;
            x = 0.82000019;
            y = 0.70000014;
            w = 0.15000001;
            h = 0.07000006;
            style = 0+2;
            text = "Spawn";
            borderSize = 0;
            onButtonClick = "['You Can Double click the Vehicle Name to spawn vehicles quicker!', 'info'] call Aquaman_fnc_notification_system; [] call Aquaman_VehicleCreate";
            colorBackground[] = {0,0,0,1};
            colorBackgroundActive[] = {0.0635,0.0794,0.073,0.746};
            colorBackgroundDisabled[] = {0.0556,0.0635,0.0714,0.7698};
            colorBorder[] = {0,0,0,0};
            colorDisabled[] = {1,1,1,0.2};
            colorFocused[] = {0.129,0.537,0.212,1};
            colorShadow[] = {0,0,0,0};
            colorText[] = {1,1,1,1};
            font = "PuristaMedium";
            offsetPressedX = 0;
            offsetPressedY = 0;
            offsetX = 0;
            offsetY = 0;
            sizeEx = (((((safezoneW / safezoneH) min 1.2) / 1.2) / 25) * 1);
            soundClick[] = {"\A3\ui_f\data\sound\RscButton\soundClick",0.09,1.0};
            soundEnter[] = {"\A3\ui_f\data\sound\RscButton\soundEnter",0.09,1.0};
            soundEscape[] = {"\A3\ui_f\data\sound\RscButton\soundEscape",0.09,1.0};
            soundPush[] = {"\A3\ui_f\data\sound\RscButton\soundPush",0.09,1.0};

        };

	};

};
