/* 
* @Author:  DnA
* @Profile: http://steamcommunity.com/id/dna_uk
* @Date:    2014-04-24 09:20:06
* @Last Modified by:   DnA
* @Last Modified time: 2014-05-26 19:12:24
*/
 
#include "scripts\define.inc"

class NMD_RscDisplayMenu
{
	idd = IDD_RSCDISPLAYMENU;
	onLoad = "[ _this, ""NMD_RscDisplayMenu"" ] call NMD_fnc_initDisplay";
	enableSimulation = 0;
			
	class ControlsBackground 
	{

		class Vignette: NMD_RscVignette
		{
			idc = 114998;
		};

		class TileGroup: NMD_RscControlsGroupNoScrollbars
		{
			idc = 115099;
			x = "safezoneX";
			y = "safezoneY";
			w = "safezoneW";
			h = "safezoneH";
			disableCustomColors = 1;

			class Controls
			{
				
				class TileFrame: NMD_RscFrame
				{
					idc = 114999;
					x = 0;
					y = 0;
					w = "safezoneW";
					h = "safezoneH";
					colortext[] = { 0,0,0,1 };
				};

				class Tile_0_0: NMD_RscText
				{
					idc = 115000;
					x = "( 0 * 1/6 ) * safezoneW";
					y = "( 0 * 1/6 ) * safezoneH";
					w = "1/6 * safezoneW";
					h = "1/6 * safezoneH";
					colorBackground[] = { 0,0,0,0.1 };
				};

				class Tile_0_1: NMD_RscText
				{
					idc = 115001;
					x = "( 0 * 1/6 ) * safezoneW";
					y = "( 1 * 1/6 ) * safezoneH";
					w = "1/6 * safezoneW";
					h = "1/6 * safezoneH";
					colorBackground[] = { 0,0,0,0.1 };
				};

				class Tile_0_2: NMD_RscText
				{
					idc = 115002;
					x = "( 0 * 1/6 ) * safezoneW";
					y = "( 2 * 1/6 ) * safezoneH";
					w = "1/6 * safezoneW";
					h = "1/6 * safezoneH";
					colorBackground[] = { 0,0,0,0.1 };
				};

				class Tile_0_3: NMD_RscText
				{
					idc = 115003;
					x = "( 0 * 1/6 ) * safezoneW";
					y = "( 3 * 1/6 ) * safezoneH";
					w = "1/6 * safezoneW";
					h = "1/6 * safezoneH";
					colorBackground[] = { 0,0,0,0.1 };
				};

				class Tile_0_4: NMD_RscText
				{
					idc = 115004;
					x = "( 0 * 1/6 ) * safezoneW";
					y = "( 4 * 1/6 ) * safezoneH";
					w = "1/6 * safezoneW";
					h = "1/6 * safezoneH";
					colorBackground[] = { 0,0,0,0.1 };
				};

				class Tile_0_5: NMD_RscText
				{
					idc = 115005;
					x = "( 0 * 1/6 ) * safezoneW";
					y = "( 5 * 1/6 ) * safezoneH";
					w = "1/6 * safezoneW";
					h = "1/6 * safezoneH";
					colorBackground[] = { 0,0,0,0.1 };
				};

				class Tile_1_0: NMD_RscText
				{
					idc = 115010;
					x = "( 1 * 1/6 ) * safezoneW";
					y = "( 0 * 1/6 ) * safezoneH";
					w = "1/6 * safezoneW";
					h = "1/6 * safezoneH";
					colorBackground[] = { 0,0,0,0.1 };
				};

				class Tile_1_1: NMD_RscText
				{
					idc = 115011;
					x = "( 1 * 1/6 ) * safezoneW";
					y = "( 1 * 1/6 ) * safezoneH";
					w = "1/6 * safezoneW";
					h = "1/6 * safezoneH";
					colorBackground[] = { 0,0,0,0.1 };
				};

				class Tile_1_2: NMD_RscText
				{
					idc = 115012;
					x = "( 1 * 1/6 ) * safezoneW";
					y = "( 2 * 1/6 ) * safezoneH";
					w = "1/6 * safezoneW";
					h = "1/6 * safezoneH";
					colorBackground[] = { 0,0,0,0.1 };
				};

				class Tile_1_3: NMD_RscText
				{
					idc = 115013;
					x = "( 1 * 1/6 ) * safezoneW";
					y = "( 3 * 1/6 ) * safezoneH";
					w = "1/6 * safezoneW";
					h = "1/6 * safezoneH";
					colorBackground[] = { 0,0,0,0.1 };
				};

				class Tile_1_4: NMD_RscText
				{
					idc = 115014;
					x = "( 1 * 1/6 ) * safezoneW";
					y = "( 4 * 1/6 ) * safezoneH";
					w = "1/6 * safezoneW";
					h = "1/6 * safezoneH";
					colorBackground[] = { 0,0,0,0.1 };
				};

				class Tile_1_5: NMD_RscText
				{
					idc = 115015;
					x = "( 1 * 1/6 ) * safezoneW";
					y = "( 5 * 1/6 ) * safezoneH";
					w = "1/6 * safezoneW";
					h = "1/6 * safezoneH";
					colorBackground[] = { 0,0,0,0.1 };
				};

				class Tile_2_0: NMD_RscText
				{
					idc = 115020;
					x = "( 2 * 1/6 ) * safezoneW";
					y = "( 0 * 1/6 ) * safezoneH";
					w = "1/6 * safezoneW";
					h = "1/6 * safezoneH";
					colorBackground[] = { 0,0,0,0.1 };
				};

				class Tile_2_1: NMD_RscText
				{
					idc = 115021;
					x = "( 2 * 1/6 ) * safezoneW";
					y = "( 1 * 1/6 ) * safezoneH";
					w = "1/6 * safezoneW";
					h = "1/6 * safezoneH";
					colorBackground[] = { 0,0,0,0.1 };
				};

				class Tile_2_2: NMD_RscText
				{
					idc = 115022;
					x = "( 2 * 1/6 ) * safezoneW";
					y = "( 2 * 1/6 ) * safezoneH";
					w = "1/6 * safezoneW";
					h = "1/6 * safezoneH";
					colorBackground[] = { 0,0,0,0.1 };
				};

				class Tile_2_3: NMD_RscText
				{
					idc = 115023;
					x = "( 2 * 1/6 ) * safezoneW";
					y = "( 3 * 1/6 ) * safezoneH";
					w = "1/6 * safezoneW";
					h = "1/6 * safezoneH";
					colorBackground[] = { 0,0,0,0.1 };
				};

				class Tile_2_4: NMD_RscText
				{
					idc = 115024;
					x = "( 2 * 1/6 ) * safezoneW";
					y = "( 4 * 1/6 ) * safezoneH";
					w = "1/6 * safezoneW";
					h = "1/6 * safezoneH";
					colorBackground[] = { 0,0,0,0.1 };
				};

				class Tile_2_5: NMD_RscText
				{
					idc = 115025;
					x = "( 2 * 1/6 ) * safezoneW";
					y = "( 5 * 1/6 ) * safezoneH";
					w = "1/6 * safezoneW";
					h = "1/6 * safezoneH";
					colorBackground[] = { 0,0,0,0.1 };
				};

				class Tile_3_0: NMD_RscText
				{
					idc = 115030;
					x = "( 3 * 1/6 ) * safezoneW";
					y = "( 0 * 1/6 ) * safezoneH";
					w = "1/6 * safezoneW";
					h = "1/6 * safezoneH";
					colorBackground[] = { 0,0,0,0.1 };
				};

				class Tile_3_1: NMD_RscText
				{
					idc = 115031;
					x = "( 3 * 1/6 ) * safezoneW";
					y = "( 1 * 1/6 ) * safezoneH";
					w = "1/6 * safezoneW";
					h = "1/6 * safezoneH";
					colorBackground[] = { 0,0,0,0.1 };
				};

				class Tile_3_2: NMD_RscText
				{
					idc = 115032;
					x = "( 3 * 1/6 ) * safezoneW";
					y = "( 2 * 1/6 ) * safezoneH";
					w = "1/6 * safezoneW";
					h = "1/6 * safezoneH";
					colorBackground[] = { 0,0,0,0.1 };
				};

				class Tile_3_3: NMD_RscText
				{
					idc = 115033;
					x = "( 3 * 1/6 ) * safezoneW";
					y = "( 3 * 1/6 ) * safezoneH";
					w = "1/6 * safezoneW";
					h = "1/6 * safezoneH";
					colorBackground[] = { 0,0,0,0.1 };
				};

				class Tile_3_4: NMD_RscText
				{
					idc = 115034;
					x = "( 3 * 1/6 ) * safezoneW";
					y = "( 4 * 1/6 ) * safezoneH";
					w = "1/6 * safezoneW";
					h = "1/6 * safezoneH";
					colorBackground[] = { 0,0,0,0.1 };
				};

				class Tile_3_5: NMD_RscText
				{
					idc = 115035;
					x = "( 3 * 1/6 ) * safezoneW";
					y = "( 5 * 1/6 ) * safezoneH";
					w = "1/6 * safezoneW";
					h = "1/6 * safezoneH";
					colorBackground[] = { 0,0,0,0.1 };
				};

				class Tile_4_0: NMD_RscText
				{
					idc = 115040;
					x = "( 4 * 1/6 ) * safezoneW";
					y = "( 0 * 1/6 ) * safezoneH";
					w = "1/6 * safezoneW";
					h = "1/6 * safezoneH";
					colorBackground[] = { 0,0,0,0.1 };
				};

				class Tile_4_1: NMD_RscText
				{
					idc = 115041;
					x = "( 4 * 1/6 ) * safezoneW";
					y = "( 1 * 1/6 ) * safezoneH";
					w = "1/6 * safezoneW";
					h = "1/6 * safezoneH";
					colorBackground[] = { 0,0,0,0.1 };
				};

				class Tile_4_2: NMD_RscText
				{
					idc = 115042;
					x = "( 4 * 1/6 ) * safezoneW";
					y = "( 2 * 1/6 ) * safezoneH";
					w = "1/6 * safezoneW";
					h = "1/6 * safezoneH";
					colorBackground[] = { 0,0,0,0.1 };
				};

				class Tile_4_3: NMD_RscText
				{
					idc = 115043;
					x = "( 4 * 1/6 ) * safezoneW";
					y = "( 3 * 1/6 ) * safezoneH";
					w = "1/6 * safezoneW";
					h = "1/6 * safezoneH";
					colorBackground[] = { 0,0,0,0.1 };
				};

				class Tile_4_4: NMD_RscText
				{
					idc = 115044;
					x = "( 4 * 1/6 ) * safezoneW";
					y = "( 4 * 1/6 ) * safezoneH";
					w = "1/6 * safezoneW";
					h = "1/6 * safezoneH";
					colorBackground[] = { 0,0,0,0.1 };
				};

				class Tile_4_5: NMD_RscText
				{
					idc = 115045;
					x = "( 4 * 1/6 ) * safezoneW";
					y = "( 5 * 1/6 ) * safezoneH";
					w = "1/6 * safezoneW";
					h = "1/6 * safezoneH";
					colorBackground[] = { 0,0,0,0.1 };
				};

				class Tile_5_0: NMD_RscText
				{
					idc = 115050;
					x = "( 5 * 1/6 ) * safezoneW";
					y = "( 0 * 1/6 ) * safezoneH";
					w = "1/6 * safezoneW";
					h = "1/6 * safezoneH";
					colorBackground[] = { 0,0,0,0.1 };
				};

				class Tile_5_1: NMD_RscText
				{
					idc = 115051;
					x = "( 5 * 1/6 ) * safezoneW";
					y = "( 1 * 1/6 ) * safezoneH";
					w = "1/6 * safezoneW";
					h = "1/6 * safezoneH";
					colorBackground[] = { 0,0,0,0.1 };
				};

				class Tile_5_2: NMD_RscText
				{
					idc = 115052;
					x = "( 5 * 1/6 ) * safezoneW";
					y = "( 2 * 1/6 ) * safezoneH";
					w = "1/6 * safezoneW";
					h = "1/6 * safezoneH";
					colorBackground[] = { 0,0,0,0.1 };
				};

				class Tile_5_3: NMD_RscText
				{
					idc = 115053;
					x = "( 5 * 1/6 ) * safezoneW";
					y = "( 3 * 1/6 ) * safezoneH";
					w = "1/6 * safezoneW";
					h = "1/6 * safezoneH";
					colorBackground[] = { 0,0,0,0.1 };
				};

				class Tile_5_4: NMD_RscText
				{
					idc = 115054;
					x = "( 5 * 1/6 ) * safezoneW";
					y = "( 4 * 1/6 ) * safezoneH";
					w = "1/6 * safezoneW";
					h = "1/6 * safezoneH";
					colorBackground[] = { 0,0,0,0.1 };
				};

				class Tile_5_5: NMD_RscText
				{
					idc = 115055;
					x = "( 5 * 1/6 ) * safezoneW";
					y = "( 5 * 1/6 ) * safezoneH";
					w = "1/6 * safezoneW";
					h = "1/6 * safezoneH";
					colorBackground[] = { 0,0,0,0.1 };
				};

			};
		};

		class Pause1: NMD_RscText
		{
			idc = 10000;
			x = "safezoneX + safezoneW - 2.2 * ( ( ( safezoneW / safezoneH ) min 1.2 ) / 40 )";
			y = "safezoneY + 1.4 * 		( ( ( ( safezoneW / safezoneH ) min 1.2 ) / 1.2 ) / 25 )";
			w = "0.7 * 					( ( ( safezoneW / safezoneH ) min 1.2 ) / 40 )";
			h = "2 * 					( ( ( ( safezoneW / safezoneH ) min 1.2 ) / 1.2 ) / 25 )";

			colorBackground[] = { 1, 1, 1, 1 };
			shadow = 2;
		};

		class Pause2: Pause1
		{
			idc = 1001;
			x = "safezoneX + safezoneW - 3.2 * ( ( ( safezoneW / safezoneH ) min 1.2 ) / 40 )";
		};

		class TitleBackground: NMD_RscText 
		{
			idc = IDC_RSCDISPLAYMENU_TITLEBACKGROUND;
			x = "1 * 					( ( ( safezoneW / safezoneH ) min 1.2 ) / 40 ) + ( safezoneX )";
			y = "14.2 * 				( ( ( ( safezoneW / safezoneH ) min 1.2 ) / 1.2 ) / 25 ) + ( safezoneY + safezoneH - ( ( ( safezoneW / safezoneH ) min 1.2 ) / 1.2 ) )";
			w = "15 * 					( ( ( safezoneW / safezoneH) min 1.2) / 40 )";
			h = "1 * 					( ( ( ( safezoneW / safezoneH ) min 1.2 ) / 1.2 ) / 25 )";

			colorBackground[] = { "( profileNamespace getVariable [ 'GUI_BCG_RGB_R', 0.69 ] )", "( profileNamespace getVariable [ 'GUI_BCG_RGB_G', 0.75 ] )", "( profileNamespace getVariable [ 'GUI_BCG_RGB_B', 0.5 ] )", "( profileNamespace getVariable [ 'GUI_BCG_RGB_A', 0.8 ] )" };
		};

		class CopyrightBackground: NMD_RscText
		{
			idc = -1;
			x = "SafezoneX + 			( 1 * ( ( ( safezoneW / safezoneH ) min 1.2 ) / 40 ) )";
			y = "23 * 					( ( ( ( safezoneW / safezoneH ) min 1.2 ) / 1.2 ) / 25 ) + ( safezoneY + safezoneH - ( ( ( safezoneW / safezoneH ) min 1.2 ) / 1.2 ) )";
			w = "SafezoneW - 			( 2 * ( ( ( safezoneW / safezoneH ) min 1.2 ) / 40 ) )";
			h = "1 * 					( ( ( ( safezoneW / safezoneH ) min 1.2 ) / 1.2 ) / 25 )";

			colorBackground[] = { 0, 0, 0, 0.7 };
		};

	};

	class Controls 
	{

		class Logo: NMD_RscPicture
		{
			idc = 1202;
			x = "1.1 * 					( ( ( safezoneW / safezoneH ) min 1.2 ) / 40 ) + ( safezoneX )";
			y = "10.2 * 				( ( ( ( safezoneW / safezoneH ) min 1.2 ) / 1.2 ) / 25 ) + ( safezoneY + safezoneH - ( ( ( safezoneW / safezoneH ) min 1.2 ) / 1.2 ) )";
			w = "8 * 					( ( ( safezoneW / safezoneH) min 1.2) / 40 )";
			h = "4 * 					( ( ( ( safezoneW / safezoneH ) min 1.2 ) / 1.2 ) / 25 )";

			text = "nmd\data\logo.paa";
		};

		class Title: NMD_RscTitle {
			idc = IDC_RSCDISPLAYMENU_TITLE;
			x = "1 * 					( ( ( safezoneW / safezoneH ) min 1.2 ) / 40 ) + ( safezoneX )";
			y = "14.2 * 				( ( ( ( safezoneW / safezoneH ) min 1.2 ) / 1.2 ) / 25 ) + ( safezoneY + safezoneH - ( ( ( safezoneW / safezoneH ) min 1.2 ) / 1.2 ) )";
			w = "15 * 					( ( ( safezoneW / safezoneH) min 1.2) / 40 )";
			h = "1 * 					( ( ( ( safezoneW / safezoneH ) min 1.2 ) / 1.2 ) / 25 )";
			
			text = "NMD MENU";
		};

		class ButtonClose: NMD_RscButtonMenuOK
		{
			x = "1 * 					( ( ( safezoneW / safezoneH ) min 1.2 ) / 40 ) + ( safezoneX )";
			y = "15.3 * 				( ( ( ( safezoneW / safezoneH ) min 1.2 ) / 1.2 ) / 25 ) + ( safezoneY + safezoneH - ( ( ( safezoneW / safezoneH ) min 1.2 ) / 1.2 ) )";
			w = "15 * 					( ( ( safezoneW / safezoneH) min 1.2) / 40 )";
			h = "1 *	 				( ( ( ( safezoneW / safezoneH ) min 1.2 ) / 1.2 ) / 25 )";

			text = "Continue";
		};
		
		class ButtonMap: NMD_RscButtonMenu
		{
			idc = IDC_RSCDISPLAYMENU_BUTTONMAP;
			x = "1 * 					( ( ( safezoneW / safezoneH ) min 1.2 ) / 40 ) + ( safezoneX )";
			y = "16.4 * 				( ( ( ( safezoneW / safezoneH ) min 1.2 ) / 1.2 ) / 25 ) + ( safezoneY + safezoneH - ( ( ( safezoneW / safezoneH ) min 1.2 ) / 1.2 ) )";
			w = "15 * 					( ( ( safezoneW / safezoneH) min 1.2) / 40 )";
			h = "1 * 					( ( ( ( safezoneW / safezoneH ) min 1.2 ) / 1.2 ) / 25 )";

			text = "Map";
		};

		class ButtonGarage: NMD_RscButtonMenu
		{
			idc = IDC_RSCDISPLAYMENU_BUTTONGARAGE;
			x = "1 * 					( ( ( safezoneW / safezoneH ) min 1.2 ) / 40 ) + ( safezoneX )";
			y = "17.5 * 				( ( ( ( safezoneW / safezoneH ) min 1.2 ) / 1.2 ) / 25 ) + ( safezoneY + safezoneH - ( ( ( safezoneW / safezoneH ) min 1.2 ) / 1.2 ) )";
			w = "15 * 					( ( ( safezoneW / safezoneH) min 1.2) / 40 )";
			h = "1 * 					( ( ( ( safezoneW / safezoneH ) min 1.2 ) / 1.2 ) / 25 )";

			text = "Garage";
		};
		
		class ButtonService: NMD_RscButtonMenu
		{
			idc = IDC_RSCDISPLAYMENU_BUTTONSERVICE;
			x = "1 * 					( ( ( safezoneW / safezoneH ) min 1.2 ) / 40 ) + ( safezoneX )";
			y = "18.6 * 				( ( ( ( safezoneW / safezoneH ) min 1.2 ) / 1.2 ) / 25 ) + ( safezoneY + safezoneH - ( ( ( safezoneW / safezoneH ) min 1.2 ) / 1.2 ) )";
			w = "15 * 					( ( ( safezoneW / safezoneH) min 1.2) / 40 )";
			h = "1 * 					( ( ( ( safezoneW / safezoneH ) min 1.2 ) / 1.2 ) / 25 )";

			text = "Service";
		};
		
		class ButtonArsenal: NMD_RscButtonMenu
		{
			idc = IDC_RSCDISPLAYMENU_BUTTONARSENAL;
			x = "1 * 					( ( ( safezoneW / safezoneH ) min 1.2 ) / 40 ) + ( safezoneX )";
			y = "19.7 * 				( ( ( ( safezoneW / safezoneH ) min 1.2 ) / 1.2 ) / 25 ) + ( safezoneY + safezoneH - ( ( ( safezoneW / safezoneH ) min 1.2 ) / 1.2 ) )";
			w = "15 * 					( ( ( safezoneW / safezoneH) min 1.2) / 40 )";
			h = "1 * 					( ( ( ( safezoneW / safezoneH ) min 1.2 ) / 1.2 ) / 25 )";

			text = "Arsenal";
		};

		class ButtonAdmin: NMD_RscButtonMenu
		{
			idc = IDC_RSCDISPLAYMENU_BUTTONADMIN;
			x = "1 * 					( ( ( safezoneW / safezoneH ) min 1.2 ) / 40 ) + ( safezoneX )";
			y = "20.8 * 				( ( ( ( safezoneW / safezoneH ) min 1.2 ) / 1.2 ) / 25 ) + ( safezoneY + safezoneH - ( ( ( safezoneW / safezoneH ) min 1.2 ) / 1.2 ) )";
			w = "15 * 					( ( ( safezoneW / safezoneH) min 1.2) / 40 )";
			h = "1 * 					( ( ( ( safezoneW / safezoneH ) min 1.2 ) / 1.2 ) / 25 )";

			text = "Administration";
		};

		class TextCopyright: NMD_RscText
		{
			idc = -1;
			x = "SafezoneX + 			( 1 * ( ( ( safezoneW / safezoneH ) min 1.2 ) / 40 ) )";
			y = "23 * 					( ( ( ( safezoneW / safezoneH ) min 1.2 ) / 1.2 ) / 25 ) + ( safezoneY + safezoneH - ( ( ( safezoneW / safezoneH ) min 1.2 ) / 1.2 ) )";
			w = "SafezoneW - 			( 12 * ( ( ( safezoneW / safezoneH ) min 1.2 ) / 40 ) )";
			h = "1 * 					( ( ( ( safezoneW / safezoneH ) min 1.2 ) / 1.2 ) / 25 )";

			font = "PuristaLight";
			shadow = 0;
			sizeEx = "( ( ( ( ( safezoneW / safezoneH ) min 1.2 ) / 1.2 ) / 25 )* 0.8 )";
			text = "© 2014 No Man Down. All rights reserved.";
		};
			
	};
};