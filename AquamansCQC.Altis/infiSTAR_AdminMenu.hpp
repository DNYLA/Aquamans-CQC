/*
Antihack & AdminTools - Christian Lorenzen - www.infiSTAR.de
#19125
*/
class RscListBox_infiSTAR {
	access=0;
	type=5;
	style=0;
	x = 0;
	y = 0;
	w = 0.1;
	h = 0.2;
	font="RobotoCondensedLight";
	sizeEx=0.032;
	rowHeight=0;
	colorText[]={1,1,1,1};
	colorScrollbar[]={1,1,1,1};
	colorSelect[]={0,0,0,1};
	colorSelect2[]={1,0.5,0,1};
	colorSelectBackground[]={0.6,0.6,0.6,1};
	colorSelectBackground2[]={0.2,0.2,0.2,1};
	colorBackground[]={0,0,0,0.8};
	maxHistoryDelay=1.0;
	soundSelect[]={"",0.1,1};
	period=1;
	autoScrollSpeed=-1;
	autoScrollDelay=5;
	autoScrollRewind=0;
	arrowEmpty="#(argb,8,8,3)color(1,1,1,1)";
	arrowFull="#(argb,8,8,3)color(1,1,1,1)";
	shadow=0;
	colorDisabled[]={1,1,1,0.25};
	border=false;
	borderSize=0;
	class ScrollBar
	{
		arrowEmpty="#(argb,8,8,3)color(1,1,1,1)";
		arrowFull="#(argb,8,8,3)color(1,1,1,1)";
		border="#(argb,8,8,3)color(1,1,1,1)";
		color[]={1,1,1,0.6};
		colorActive[]={1,1,1,1};
		colorDisabled[]={1,1,1,0.3};
		thumb="#(argb,8,8,3)color(1,1,1,1)";
	};
	class ListScrollBar:ScrollBar
	{
		color[]={1,1,1,0.6};
		colorActive[]={1,1,1,1};
		colorDisabled[]={1,1,1,0.3};
		thumb="#(argb,8,8,3)color(1,1,1,1)";
		arrowEmpty="#(argb,8,8,3)color(1,1,1,1)";
		arrowFull="#(argb,8,8,3)color(1,1,1,1)";
		border="#(argb,8,8,3)color(1,1,1,1)";
		shadow=0;
	};
};
class RscText_infiSTAR {
	access=0;
	idc=-1;
	type=0;
	style=0;
	linespacing=1;
	colorBackground[]={0,0,0,0.8};
	colorText[]={0.247,0.831,0.988,1};
	shadow=1;
	font="RobotoCondensed";
	sizeEx=0.032;
	fixedWidth=0;
};
class RscEdit_infiSTAR {
	access=0;
	type=2;
	style=0;
	colorBackground[]={0,0,0,0.8};
	colorText[]={1,1,1,1};
	colorSelection[]={1,1,1,0.25};
	colorDisabled[]={1,1,1,0};
	font="EtelkaMonospacePro";
	sizeEx=0.03;
	autocomplete="";
	text="";
	size=0.2;
	shadow=0;
};
class RscButton_infiSTAR {
	access=0;
	idc=-1;
	type=1;
	style=0;
	text="";
	action="";
	x=0;
	y=0;
	w=0;
	h=0;
	colorText[]={1,1,1,0.9};
	colorDisabled[]={0.6,0.1,0.3,0};
	colorBackground[]={0,0,0,1};
	colorBackgroundDisabled[]={0,0,0,1};
	colorBackgroundActive[]={0.15,0.35,0.55,0.7};
	colorFocused[]={0.58,0.05,0,0.7};
	colorShadow[]={0.023529,0,0.0313725,1};
	colorBorder[]={0.023529,0,0.0313725,1};
	soundEnter[]={"\A3\ui_f\data\sound\RscButtonMenu\soundEnter",0.09,1};
	soundPush[]={"\A3\ui_f\data\sound\RscButtonMenu\soundPush",0.09,1};
	soundClick[]={"\A3\ui_f\data\sound\RscButtonMenu\soundClick",0.09,1};
	soundEscape[]={"\A3\ui_f\data\sound\RscButtonMenu\soundEscape",0.09,1};
	shadow=0;
	font="RobotoCondensed";
	sizeEx=0.032;
	offsetX=0.003;
	offsetY=0.003;
	offsetPressedX=0.002;
	offsetPressedY=0.002;
	borderSize=0;
};
class RscHTML_infiSTAR {
	colorText[]={1,1,1,1};
	colorBold[]={1,1,1,0.75};
	colorLink[]={"63/255","212/255","252/255",1};
	colorLinkActive[]={"63/255","212/255","252/255",0.75};
	colorBackground[]={0,0,0,0.8};
	colorPicture[]={1,1,1,1};
	colorPictureBorder[]={0,0,0,0};
	colorPictureLink[]={1,1,1,1};
	colorPictureSelected[]={1,1,1,1};
	hppversion=3;
	filename="";
	sizeEx=0.04;
	type=9;
	style=0;
	prevPage="\ca\ui\data\arrow_left_ca.paa";
	nextPage="\ca\ui\data\arrow_right_ca.paa";
	shadow=2;
	class def {
		font="RobotoCondensed";
		fontBold="RobotoCondensedBold";
		align="left";
	};
	class H1:def {
		sizeEx="38 * pixelH";
	};
	class H2:def {
		sizeEx="32 * pixelH";
	};
	class H3:def {
		sizeEx="26 * pixelH";
	};
	class H4:def {
		sizeEx="20 * pixelH";
	};
	class H5:def {
		sizeEx="17 * pixelH";
	};
	class H6:def {
		sizeEx="15 * pixelH";
	};
	class P:def {
		sizeEx="18 * pixelH";
	};
};
class RscEdit_infiSTAR_multi:RscEdit_infiSTAR {
	idc=1339;
	x=0.1 * safeZoneW + safeZoneX;
	y=0.038 * safeZoneH + safeZoneY;
	w=0.658333 * safeZoneW;
	h=(0.143 * safeZoneH)*3;
	font="EtelkaMonospacePro";
	colorText[]={0.95,0.95,0.95,1};
	style=16;
	sizeEx=0.03;
	show=1;
};
class RscEdit_infiSTAR_ss:RscEdit_infiSTAR {
	x=0;
	y=(safeZoneY + 0.01)+1;
	w=1;
	h=0.05;
	idc=1380;
	font="EtelkaMonospacePro";
	colorText[]={0.95,0.95,0.95,1};
	sizeEx=0.03;
	show=1;
	autocomplete="scripting";
};
class infiSTAR_EDITBOX
{
	idd=-1341;
	movingenable=true;
	class controls
	{
		class RscEditMultiSTAR:RscEdit_infiSTAR_multi
		{
			idc=1336;
			x=0.25;
			y=0.25;
			w=0.5;
			h=0.5;
		};
	};
};
class infiSTAR_EDITBOX2
{
	idd=-1341;
	movingenable=true;
	class controls
	{
		class RscEditMultiSTAR:RscEdit_infiSTAR_multi{autocomplete="scripting";};
		class RscEditSingle1STAR:RscEdit_infiSTAR_ss{idc=1380;};
		class RscEditSingle2STAR:RscEdit_infiSTAR_ss{idc=1381;};
		class RscEditSingle3STAR:RscEdit_infiSTAR_ss{idc=1382;};
		class RscEditSingle4STAR:RscEdit_infiSTAR_ss{idc=1383;};
	};
};


class infiSTAR_AdminMenu
{
	idd=-1338;
	movingenable=false;
	version=4;
	controls[]=
	{
		infi_TXT2,
		infi_BTN10,
		infi_BTN11,
		infi_BTN12,
		infi_LIST1500,
		infi_LIST1501,
		infi_BTN20,
		infi_BTN21,
		infi_BTN23,
		infi_BTN24,
		infi_EDIT1,
		infi_EDIT2,
		infi_BTN36,
		infi_BTN37,
		infi_BTN38
	};
	class infi_LIST1500:RscListBox_infiSTAR
	{
		idc=1500;
		x=safeZoneX;
		y=safeZoneY + 0.14 * safeZoneH;
		w=0.19 * safeZoneW;
		h=0.855 * safeZoneH;
	};
	class infi_LIST1501:RscListBox_infiSTAR
	{
		idc=1501;
		x=safeZoneX + 0.192 * safeZoneW;
		y=safeZoneY + 0.06 * safeZoneH;
		w=0.335 * safeZoneW;
		h=0.935 * safeZoneH;
	};
	class infi_EDIT1:RscEdit_infiSTAR
	{
		idc=100;
		x=0.1964 * safeZoneW + safeZoneX;
		y=0.125933 * safeZoneH + safeZoneY;
		w=0.326563 * safeZoneW;
		h=0.044 * safeZoneH;
	};
	class infi_EDIT2:RscEdit_infiSTAR_multi
	{
		idc=103;
		show=0;
	};
	class infi_TXT2:RscText_infiSTAR
	{
		idc=2;
		text="infiSTAR.de";
		x=-5.31323e-005 * safeZoneW + safeZoneX;
		y=-7.50085e-005 * safeZoneH + safeZoneY;
		w=1 * safeZoneW;
		h=0.0341667 * safeZoneH;
		colorText[]={1,1,1,0.9};
		colorBackground[]={0.56,0.04,0.04,1};
	};
	class infi_BTN10:RscButton_infiSTAR
	{
		idc=10;
		text="Alphabet";
		x=0.005 + safeZoneX;
		y=0.0379694 * safeZoneH + safeZoneY;
		w=0.06 * safeZoneW;
		h=0.02 * safeZoneH;
		action="SortRangePlease=nil;SortAlphaPlease=true;SortGroupsPlease=nil;[] call fn_infiSTARAdmin_fillPlayer;[] call fn_infiSTARAdmin_setFocus;";
	};
	class infi_BTN11:RscButton_infiSTAR
	{
		idc=11;
		text="Groups";
		x=0.01 + safeZoneX + (0.06 * safeZoneW);
		y=0.0379694 * safeZoneH + safeZoneY;
		w=0.06 * safeZoneW;
		h=0.02 * safeZoneH;
		action="SortAlphaPlease=nil;SortRangePlease=nil;SortGroupsPlease=true;[] call fn_infiSTARAdmin_fillPlayer;[] call fn_infiSTARAdmin_setFocus;";
	};
	class infi_BTN12:RscButton_infiSTAR
	{
		idc=12;
		text="Range";
		x=0.015 + safeZoneX + (0.06 * safeZoneW)*2;
		y=0.0379694 * safeZoneH + safeZoneY;
		w=0.06 * safeZoneW;
		h=0.02 * safeZoneH;
		action="SortAlphaPlease=nil;SortRangePlease=true;SortGroupsPlease=nil;[] call fn_infiSTARAdmin_fillPlayer;[] call fn_infiSTARAdmin_setFocus;";
	};
	class infi_BTN20:RscButton_infiSTAR
	{
		idc=20;
		default="true";
		text="MainMenu";
		x=0.202072 * safeZoneW + safeZoneX;
		y=0.0379694 * safeZoneH + safeZoneY;
		w=0.0625001 * safeZoneW;
		h=0.02 * safeZoneH;
	};
	class infi_BTN21:RscButton_infiSTAR
	{
		idc=21;
		text="SpawnMenu";
		x=0.287975 * safeZoneW + safeZoneX;
		y=0.0379694 * safeZoneH + safeZoneY;
		w=0.0625001 * safeZoneW;
		h=0.02 * safeZoneH;
	};
	class infi_BTN23:RscButton_infiSTAR
	{
		idc=23;
		text="AHLog";
		x=0.373981 * safeZoneW + safeZoneX;
		y=0.0379694 * safeZoneH + safeZoneY;
		w=0.0625001 * safeZoneW;
		h=0.02 * safeZoneH;
	};
	class infi_BTN24:RscButton_infiSTAR
	{
		idc=24;
		text="AdminLog";
		x=0.459884 * safeZoneW + safeZoneX;
		y=0.0379694 * safeZoneH + safeZoneY;
		w=0.0625001 * safeZoneW;
		h=0.02 * safeZoneH;
	};
	class infi_BTN36:RscButton_infiSTAR
	{
		idc=36;
		text="Items";
		x=0.219294 * safeZoneW + safeZoneX;
		y=0.0819514 * safeZoneH + safeZoneY;
		w=0.0916667 * safeZoneW;
		h=0.0329999 * safeZoneH;
	};
	class infi_BTN37:RscButton_infiSTAR
	{
		idc=37;
		text="Vehicles";
		x=0.316644 * safeZoneW + safeZoneX;
		y=0.0819514 * safeZoneH + safeZoneY;
		w=0.0916667 * safeZoneW;
		h=0.0329999 * safeZoneH;
	};
	class infi_BTN38:RscButton_infiSTAR
	{
		idc=38;
		text="Trader";
		x=0.414097 * safeZoneW + safeZoneX;
		y=0.0819514 * safeZoneH + safeZoneY;
		w=0.0916667 * safeZoneW;
		h=0.0329999 * safeZoneH;
	};
};



class CfgCommands
{
	allowedHTMLLoadURIs[]={"https://*","http://*"};
};