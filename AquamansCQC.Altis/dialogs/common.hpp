class Aqua_RscButton
{
	style = 2;
	colorBackground[] = {0.2,0.2,0.2,1};
	colorBackgroundActive[] = {0,0,0,1};
	colorBackgroundDisabled[] = {0,0,0,0};
	colorBorder[] = {0,0,0,0};
	colorDisabled[] = {0,0,0,0};
	colorFocused[] = {0.302,0.302,0.302,1};
	colorShadow[] = {0,0,0,0};
	colorText[] = {1,1,1,1};
	font = "PuristaMedium";
	offsetPressedX = 0.0;
	offsetPressedY = 0.0;
	offsetX = 0.01;
	offsetY = 0.01;
	soundClick[] = {"\A3\ui_f\data\sound\RscButton\soundClick",0.9,1.0};
	soundEnter[] = {"\A3\ui_f\data\sound\RscButton\soundEnter",0.9,1.0};
	soundEscape[] = {"\A3\ui_f\data\sound\RscButton\soundEscape",0.9,1.0};
	soundPush[] = {"\A3\ui_f\data\sound\RscButton\soundPush",0.9,1.0};
	shadow = 0;
    sizeEx = (((((safezoneW / safezoneH) min 1.2) / 1.2) / 20) * 1);
};

class Aqua_RscTitleBackground
{
	style = 2;
	colorBackground[] = {0.133,0.541,0.216,1};
	colorText[] = {1,1,1,1};
	font = "PuristaMedium";
	sizeEx = (((((safezoneW / safezoneH) min 1.2) / 1.2) / 25) * 1);

};

class Aqua_RscBackground
{
	style = 0;
	colorBackground[] = {0.204,0.204,0.204,1};
	colorText[] = {0,0,0,1};
	font = "PuristaLight";
	sizeEx = (((((safezoneW / safezoneH) min 1.2) / 1.2) / 25) * 1);

};

class Aqua_RscBottomBar
{
	style = 0;
	text = "";
	colorBackground[] = {0.145,0.145,0.145,1};
	colorText[] = {0,0,0,1};
	font = "PuristaMedium";
	sizeEx = (((((safezoneW / safezoneH) min 1.2) / 1.2) / 25) * 1);

};
class Aqua_Button
{
    type = 1;
	x = 0;
	y = 0;
	w = 0.095;
	h = 0.04;
	style = 2;
	text = "";
	colorBackground[] = {0,0,0,1};
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
	access = 0;
	shadow = 2;

};