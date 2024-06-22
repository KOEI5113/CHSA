class CHSA_warning
{
	idd = -1;
	fadein = 0;
	fadeout = 0;
	duration = 300;
	onLoad = "['warn',_this] call CHSA_fnc_localize";
	
	class controlsBackground
	{	
		class RscText_1000: CHSA_rscText
		{
			idc = 1000;
			text = "警告"; //--- ToDo: Localize;
			x = 0.145 * safezoneW + safezoneX;
			y = 0.896 * safezoneH + safezoneY;
			w = 0.711563 * safezoneW;
			h = 0.022 * safezoneH;
			colorBackground[] = {"(profilenamespace getvariable ['GUI_BCG_RGB_R',0.3843])","(profilenamespace getvariable ['GUI_BCG_RGB_G',0.7019])","(profilenamespace getvariable ['GUI_BCG_RGB_B',0.8862])","(profilenamespace getvariable ['GUI_BCG_RGB_A',0.7])"};
		};
		class RscFrame_1800: CHSA_rscFrame
		{
			idc = 1800;
			x = 0.145 * safezoneW + safezoneX;
			y = 0.9202 * safezoneH + safezoneY;
			w = 0.711563 * safezoneW;
			h = 0.077 * safezoneH;
		};
		class RscText_1001: CHSA_rscText
		{
			idc = 1001;
			text = "別再軍火庫附近開啟裝備欄!"; //--- ToDo: Localize;
			x = 0.145 * safezoneW + safezoneX;
			y = 0.929 * safezoneH + safezoneY;
			w = 0.711563 * safezoneW;
			h = 0.055 * safezoneH;
			sizeEx = 2 * GUI_GRID_H;
			style=0x02;
		};
	};
};

class CHSA_warningCenter
{
	idd = -1;
	fadein = 0;
	fadeout = 0;
	duration = 3;
	onLoad = "['center',_this] call CHSA_fnc_localize";
	
	class controlsBackground
	{	
		class RscText_1030: CHSA_rscText
		{
			idc = 1030;
			text = "警告"; //--- ToDo: Localize;
			x = 0 * GUI_GRID_W + GUI_GRID_X;
			y = 6.9 * GUI_GRID_H + GUI_GRID_Y;
			w = 40 * GUI_GRID_W;
			h = 1 * GUI_GRID_H;
			colorBackground[] = {"(profilenamespace getvariable ['GUI_BCG_RGB_R',0.3843])","(profilenamespace getvariable ['GUI_BCG_RGB_G',0.7019])","(profilenamespace getvariable ['GUI_BCG_RGB_B',0.8862])","(profilenamespace getvariable ['GUI_BCG_RGB_A',0.7])"};
		};
		class RscFrame_1830: CHSA_rscFrame
		{
			idc = 1830;
			x = 0 * GUI_GRID_W + GUI_GRID_X;
			y = 8 * GUI_GRID_H + GUI_GRID_Y;
			w = 40 * GUI_GRID_W;
			h = 6.5 * GUI_GRID_H;
		};
		class RscText_1031: CHSA_rscText
		{
			idc = 1031;
			text = "你無法觀看軍火庫附近的物品欄!"; //--- ToDo: Localize;
			x = 0 * GUI_GRID_W + GUI_GRID_X;
			y = 9.5 * GUI_GRID_H + GUI_GRID_Y;
			w = 40 * GUI_GRID_W;
			h = 2 * GUI_GRID_H;
			sizeEx = 1.8 * GUI_GRID_H;
			style=0x02;
		};
		class RscText_1032: CHSA_rscText
		{
			idc = 1032;
			text = "如果你想要裝備 使用軍火庫拿取!"; //--- ToDo: Localize;
			x = 0 * GUI_GRID_W + GUI_GRID_X;
			y = 11.5 * GUI_GRID_H + GUI_GRID_Y;
			w = 40 * GUI_GRID_W;
			h = 1 * GUI_GRID_H;
			style=0x02;
		};
	};
};