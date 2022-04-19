#define GUI_GRID_X	(0)
#define GUI_GRID_Y	(0)
#define GUI_GRID_W	(0.025)
#define GUI_GRID_H	(0.04)
#define GUI_GRID_WAbs	(1)
#define GUI_GRID_HAbs	(1)

class CHSA_rscButton
{
	type=16;
	style="0x02 + 0xC0";
	default=0;
	shadow=0;
	x=0;
	y=0;
	w=0.095588997;
	h=0.039216001;
	animTextureNormal="#(argb,8,8,3)color(1,1,1,1)";
	animTextureDisabled="#(argb,8,8,3)color(1,1,1,1)";
	animTextureOver="#(argb,8,8,3)color(1,1,1,1)";
	animTextureFocused="#(argb,8,8,3)color(1,1,1,1)";
	animTexturePressed="#(argb,8,8,3)color(1,1,1,1)";
	animTextureDefault="#(argb,8,8,3)color(1,1,1,1)";
	colorBackground[]={0,0,0,0.80000001};
	colorBackgroundFocused[]={1,1,1,1};
	colorBackground2[]={0.75,0.75,0.75,1};
	color[]={1,1,1,1};
	colorFocused[]={0,0,0,1};
	color2[]={0,0,0,1};
	colorText[]={1,1,1,1};
	colorDisabled[]={1,1,1,0.25};
	period=1.2;
	periodFocus=1.2;
	periodOver=1.2;
	size="(			(			(			((safezoneW / safezoneH) min 1.2) / 1.2) / 25) * 1)";
	sizeEx="(			(			(			((safezoneW / safezoneH) min 1.2) / 1.2) / 25) * 1)";
	tooltipColorText[]={1,1,1,1};
	tooltipColorBox[]={1,1,1,1};
	tooltipColorShade[]={0,0,0,0.64999998};
	font="PuristaLight";
	class TextPos
	{
		left="0.25 * 			(			((safezoneW / safezoneH) min 1.2) / 40)";
		top="(			(			(			((safezoneW / safezoneH) min 1.2) / 1.2) / 25) - 		(			(			(			((safezoneW / safezoneH) min 1.2) / 1.2) / 25) * 1)) / 2";
		right=0.0049999999;
		bottom=0;
	};
	class Attributes
	{
		font="PuristaLight";
		color="#E5E5E5";
		align="left";
		shadow="false";
	};
	class ShortcutPos
	{
		left="(6.25 * 			(			((safezoneW / safezoneH) min 1.2) / 40)) - 0.0225 - 0.005";
		top=0.0049999999;
		w=0.022500001;
		h=0.029999999;
	};
	soundEnter[]=
	{
		"\A3\ui_f\data\sound\RscButtonMenu\soundEnter",
		0.090000004,
		1
	};
	soundPush[]=
	{
		"\A3\ui_f\data\sound\RscButtonMenu\soundPush",
		0.090000004,
		1
	};
	soundClick[]=
	{
		"\A3\ui_f\data\sound\RscButtonMenu\soundClick",
		0.090000004,
		1
	};
	soundEscape[]=
	{
		"\A3\ui_f\data\sound\RscButtonMenu\soundEscape",
		0.090000004,
		1
	};
	textureNoShortcut="#(argb,8,8,3)color(0,0,0,0)";
	class HitZone
	{
		left=0;
		top=0;
		right=0;
		bottom=0;
	};
	class AttributesImage
	{
		font="PuristaMedium";
		color="#E5E5E5";
		align="left";
	};
};
class CHSA_rscText
{
	type = 0;
	x=0;
	y=0;
	h=0.037;
	w=0.30000001;
	style=0;
	shadow=0;
	colorShadow[]={0,0,0,0.5};
	font="PuristaMedium";
	size="(			(			(			((safezoneW / safezoneH) min 1.2) / 1.2) / 25) * 1)";
	SizeEx="(			(			(			((safezoneW / safezoneH) min 1.2) / 1.2) / 25) * 1)";
	colorText[]={1,1,1,1};
	colorBackground[]={0,0,0,0};
	linespacing=1;
	tooltipColorText[]={1,1,1,1};
	tooltipColorBox[]={1,1,1,1};
	tooltipColorShade[]={0,0,0,0.64999998};
	text = "";
};
class CHSA_rscFrame
{
	type = 0;
	idc = -1;
	style = 0;
	shadow = 1;
	colorBackground[] = 
	{
		0,
		0,
		0,
		0.7
	};
	colorText[] = 
	{
		1,
		1,
		1,
		1
	};
	font = "PuristaMedium";
	sizeEx = 0.02;
	text = "";
};
class CHSA_RscListNBox 
{
	deletable = 0;
	fade = 0;
	access = 0;
	type = 102;
	w = 0.4;
	h = 0.4;
	rowHeight = 0;
	colorText[] = {1, 1, 1, 1};
	colorScrollbar[] = {0.95, 0.95, 0.95, 1};
	colorSelect[] = {0, 0, 0, 1};
	colorSelect2[] = {0, 0, 0, 1};
	colorSelectBackground[] = {0.95, 0.95, 0.95, 1};
	colorSelectBackground2[] = {1, 1, 1, 0.5};
	colorBackground[] = {0, 0, 0, 1};
	maxHistoryDelay = 1;
	soundSelect[] = {"", 0.1, 1};
	autoScrollSpeed = -1;
	autoScrollDelay = 5;
	autoScrollRewind = 0;
	arrowEmpty = "#(argb,8,8,3)color(1,1,1,1)";
	arrowFull = "#(argb,8,8,3)color(1,1,1,1)";
	drawSideArrows = 0;
	columns[] = {0.3, 0.6, 0.7};
	idcLeft = -1;
	idcRight = -1;
	class ListScrollBar {
	    color[] = {1, 1, 1, 0.6};
        colorActive[] = {1, 1, 1, 1};
        colorDisabled[] = {1, 1, 1, 0.3};
        thumb = "\A3\ui_f\data\gui\cfg\scrollbar\thumb_ca.paa";
        arrowEmpty = "\A3\ui_f\data\gui\cfg\scrollbar\arrowEmpty_ca.paa";
        arrowFull = "\A3\ui_f\data\gui\cfg\scrollbar\arrowFull_ca.paa";
        border = "\A3\ui_f\data\gui\cfg\scrollbar\border_ca.paa";
        shadow = 0;
        scrollSpeed = 0.06;
        width = 0;
        height = 0;
        autoScrollEnabled = 0;
        autoScrollSpeed = -1;
        autoScrollDelay = 5;
        autoScrollRewind = 0;
	};
	style = 16;
	shadow = 0;
	font = "PuristaMedium";
	sizeEx = "(			(			(			((safezoneW / safezoneH) min 1.2) / 1.2) / 25) * 1)";
	color[] = {0.95, 0.95, 0.95, 1};
	colorDisabled[] = {1, 1, 1, 0.25};
	period = 1.2;
	class ScrollBar {
	    color[] = {1, 1, 1, 0.6};
        colorActive[] = {1, 1, 1, 1};
        colorDisabled[] = {1, 1, 1, 0.3};
        thumb = "\A3\ui_f\data\gui\cfg\scrollbar\thumb_ca.paa";
        arrowEmpty = "\A3\ui_f\data\gui\cfg\scrollbar\arrowEmpty_ca.paa";
        arrowFull = "\A3\ui_f\data\gui\cfg\scrollbar\arrowFull_ca.paa";
        border = "\A3\ui_f\data\gui\cfg\scrollbar\border_ca.paa";
        shadow = 0;
        scrollSpeed = 0.06;
        width = 0;
        height = 0;
        autoScrollEnabled = 0;
        autoScrollSpeed = -1;
        autoScrollDelay = 5;
        autoScrollRewind = 0;
	};
};
class CHSA_RscStructuredText
{
	deletable = 0;
	fade = 0;
	access = 0;
	type = 13;
	idc = -1;
	style = 0;
	colorText[] = {1, 1, 1, 1};
	class Attributes {
		font = "PuristaMedium";
		color = "#ffffff";
		align = "left";
		shadow = 1;
	};
	x = 0;
	y = 0;
	h = 0.035;
	w = 0.1;
	text = "";
	size = "(			(			(			((safezoneW / safezoneH) min 1.2) / 1.2) / 25) * 1)";
	SizeEx="(			(			(			((safezoneW / safezoneH) min 1.2) / 1.2) / 25) * 1)";
	shadow = 1;
};
class CHSA_dialog
{
	idd = 2900;
	movingEnable = false;
	moving = 1; 
	onLoad = "['main',_this] call CHSA_fnc_localize";
	onUnload = "";
	
	class controlsBackground
	{
		class CHSA_rscTitle: CHSA_rscText
		{
			idc = 1002;

			text = "更換職業"; //--- ToDo: Localize;
			x = 10.5 * GUI_GRID_W + GUI_GRID_X;
			y = 0.4 * GUI_GRID_H + GUI_GRID_Y;
			w = 20 * GUI_GRID_W;
			h = 1 * GUI_GRID_H;
			colorBackground[] = {"(profilenamespace getvariable ['GUI_BCG_RGB_R',0.3843])","(profilenamespace getvariable ['GUI_BCG_RGB_G',0.7019])","(profilenamespace getvariable ['GUI_BCG_RGB_B',0.8862])","(profilenamespace getvariable ['GUI_BCG_RGB_A',0.7])"};
		};
		class CHSA_mainBG: CHSA_rscFrame
		{
			idc = 1002;

			x = 10.5 * GUI_GRID_W + GUI_GRID_X;
			y = 1.5 * GUI_GRID_H + GUI_GRID_Y;
			w = 20 * GUI_GRID_W;
			h = 22 * GUI_GRID_H;
		};
		class CHSA_listboxBG: CHSA_rscFrame
		{
			idc = 1002;

			x = 11 * GUI_GRID_W + GUI_GRID_X;
			y = 2.99 * GUI_GRID_H + GUI_GRID_Y;
			w = 19 * GUI_GRID_W;
			h = 19 * GUI_GRID_H;
			colorBackground[] = {0,0,0,0.3};
		};
		class CHSA_leftColumnName: CHSA_rscText
		{
			idc = 1000;

			text = "類型"; //--- ToDo: Localize;
			x = 11 * GUI_GRID_W + GUI_GRID_X;
			y = 2 * GUI_GRID_H + GUI_GRID_Y;
			w = 13.5 * GUI_GRID_W;
			h = 1 * GUI_GRID_H;
			colorBackground[] = {0,0,0,1};
		};
		class CHSA_rightColumnName: CHSA_rscText
		{
			idc = 1001;

			text = "數量"; //--- ToDo: Localize;
			x = 24.5 * GUI_GRID_W + GUI_GRID_X;
			y = 2 * GUI_GRID_H + GUI_GRID_Y;
			w = 5.5 * GUI_GRID_W;
			h = 1 * GUI_GRID_H;
			colorBackground[] = {0,0,0,1};
		};
	};
	class controls
	{
		class CHSA_classesListNBox: CHSA_RscListNBox
		{
			idc = 1500;
			columns[] = {-0.01,0.699};
			rowHeight = 0.05;
			onLBDblClick = "call CHSA_fnc_onApply";

			x = 11 * GUI_GRID_W + GUI_GRID_X;
			y = 2.99 * GUI_GRID_H + GUI_GRID_Y;
			w = 19 * GUI_GRID_W;
			h = 19 * GUI_GRID_H;
		};
		class CHSA_bottomText: CHSA_RscStructuredText
		{
			idc = 1007;

			text = ""; //--- ToDo: Localize;
			x = 11 * GUI_GRID_W + GUI_GRID_X;
			y = 22.2 * GUI_GRID_H + GUI_GRID_Y;
			w = 19 * GUI_GRID_W;
			h = 1 * GUI_GRID_H;
		};
		class CHSA_applyButton: CHSA_rscButton
		{
			idc = 1600;
			onButtonClick = "call CHSA_fnc_onApply";

			text = "設置"; //--- ToDo: Localize;
			x = 10.5 * GUI_GRID_W + GUI_GRID_X;
			y = 23.6 * GUI_GRID_H + GUI_GRID_Y;
			w = 7 * GUI_GRID_W;
			h = 1 * GUI_GRID_H;
		};
		class CHSA_cancelButton: CHSA_rscButton
		{
			idc = 1601;
			onButtonClick = "closeDialog 2900";

			text = "取消"; //--- ToDo: Localize;
			x = 23.5 * GUI_GRID_W + GUI_GRID_X;
			y = 23.6 * GUI_GRID_H + GUI_GRID_Y;
			w = 7 * GUI_GRID_W;
			h = 1 * GUI_GRID_H;
		};
	};
};

class RscTitles
{
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
};