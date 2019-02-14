class Aqua_Teleport
{
	idd = 2000;
    movingEnable = 1;
    enableSimulation = 1;

	
	class ControlsBackground
	{
		class Background
		{
			type = 0;
			idc = -1;
			x = 0.26060607;
			y = 0.00000002;
			w = 0.51363637;
			h = 1;
			style = 0;
			text = "";
			colorBackground[] = {0.1137,0.1137,0.1137,1};
			colorText[] = {0.2588,0.9686,0.8118,1};
			font = "TahomaB";
			sizeEx = (((((safezoneW / safezoneH) min 1.2) / 1.2) / 25) * 1);
			
		};
		class Title
		{
			type = 0;
			idc = -1;
			x = 0.26060607;
			y = 0.00000002;
			w = safeZoneW * 0.211875;
			h = 0.05454546;
			style = 0;
			text = "";
			colorBackground[] = {0.102,0.2,0.6,1};
			colorText[] = {0.2314,0.3412,0.0902,1};
			font = "TahomaB";
			sizeEx = (((((safezoneW / safezoneH) min 1.2) / 1.2) / 25) * 1);
			
		};
		class txtTitle
		{
			type = 0;
			idc = -1;
			x = 0.26000003;
			y = 0.0000001;
			w = 0.51;
			h = 0.05000003;
			style = 2;
			text = "Teleport";
			colorBackground[] = {0.2039,0.6157,0.5804,0};
			colorText[] = {1,1,1,1};
			font = "TahomaB";
			sizeEx = (((((safezoneW / safezoneH) min 1.2) / 1.2) / 25) * 1);
		};
		
	};
	class Controls
	{
		class OGTP : Aqua_Button 
		{
			type = 1;
			idc = -1;
			x = 0.28000006;
			y = 0.13000001;
			w = 0.48000004;
			h = 0.09000006;
			style = 2;
			text = "OG Arms";
			borderSize = 0;
			action = [] execVM "scripts\TP\ogTP.sqf";
			
		};
		class AirportTP : Aqua_Button 
		{
			type = 1;
			idc = -1;
			x = 0.28000006;
			y = 0.26000007;
			w = 0.48000004;
			h = 0.09000006;
			style = 2;
			text = "Airport";
			borderSize = 0;
			action = [] execVM "scripts\TP\AirportTP.sqf";
			
		};
		class ChurchTP : Aqua_Button 
		{
			type = 1;
			idc = -1;
			x = 0.28000006;
			y = 0.39000011;
			w = 0.48000004;
			h = 0.09000006;
			style = 2;
			text = "Church";
			borderSize = 0;
			action = [] execVM "scripts\TP\ChurchTP.sqf";
			
		};
		class FedTP : Aqua_Button 
		{
			type = 1;
			idc = -1;
			x = 0.28000006;
			y = 0.52000008;
			w = 0.48000004;
			h = 0.09000006;
			style = 2;
			text = "Federal Reserve";
			borderSize = 0;
			action = [] execVM "scripts\TP\FedTP.sqf";
		};
		class APDTP : Aqua_Button
		{
			type = 1;
			idc = -1;
			x = 0.28000006;
			y = 0.65000009;
			w = 0.48000004;
			h = 0.09000006;
			style = 2;
			text = "APD";
			action = [] execVM "scripts\TP\ApdTP.sqf";
		};
		
	};
	
};
