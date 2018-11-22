---------------------------
--取色库
--------------------------
require "lib"
local t = {}

t["选择难度"]={{608,295},{755,298},{899,294},{1041,296}}
t["哥布林难度"]={{247,126},{243,215},{253,297}}
t["深渊远古难度"]={{255,125},{267,226},{268,325},{273,422}}
t["选择卡牌奖励1"]={{196,162}, {452,166}, {704,167},{954,172}}
t["选择卡牌奖励2"]={{200,501}, {446,501}, {708,519},{953,502}}
t["关卡地图坐标"]={{1071,395,0xdec979,"银叶林地(1-7)"},{271,588,0xc3a657,"暮光森林(7-20)"},{845,283,0xdfc883,"悬空塔(21-30)"},{333,197,0xcabf99,"贝希摩斯(30-31)"},{67,238,0xe5d47d,"冰封神殿(31-40)"},{1052,460,0xdbc476,"幽暗走廊(41-49)"},{665,181,0x94743f,"诺曼达(49~)"},{837,310,0x94743f,"幕府风云(55~)"}}
t["关卡坐标"]={
	--{585,443,1,0xa29343,"港口郊外(1-3)"},{971,470,1,0x31734b,"修炼之地(3-5)"},{974,210,1,0x315035,"静谧丛林(5-7)"},
	--{306,538,2,0x224435,"丛林深处(7-9)"},
	--{437,212,2,0x19302e,"荧光沼泽(9-11)"},
	--{693,149,2,0x382419,"恶毒湿地(11-14)"},
	--{804,302,2,0x758aa8,"幽寒林地(13-16)"},
	{691,262,2,0x758aa8,"幽寒林地(13-16)"},
	--{797,594,2,0x2e201c,"黄昏丛林(16-19)"},
	--{1098,485,2,0x5e2920,"灼热峡谷(18-21)"},
	--港口郊外(1-3),修炼之地(3-5),静谧丛林(5-7),丛林深处(7-9),荧光沼泽(9-11),恶毒湿地(11-14),幽寒林地(13-16),黄昏丛林(16-19),灼热峡谷(18-21),
	{924,117,2,0x6a4e38,"魅影遗迹(20-23)"},--第二章完
	{186,523,3,0x53aaa3,"矿脉外围(21-24)"},--第三章234,612
	{673,514,3,0x60503e,"失落的大陆(22-25)"},--792,602
	{258,431,3,0x5b5d66,"龙族兵团(23-26)"},--306,506
	{638,389,3,0x4a434f,"幽暗监狱(24-27)"},--745,457
	{927,379,3,0x162732,"玩具的复仇(25-27)"},
	{304,329,3,0x4e5263,"罪恶之地(26-29)"},
	{601,294,3,0x503038,"天空之海(27-30)"},
	{944,214,3,0x563e2f,"元素回廊(28-30)"},
	{250,238,3,0x5e5b5c,"冰火极地(28-31)"},
	{627,208,3,0x774640,"光之宫殿(29-32)"},
	{601,112,3,0x774640,"幽暗影牢(29-32)"},--第三章完
	{150,252,4,0xcaaf8a,"诡变之森(30-35)"},{282,374,4,0x000000,"安息之地(30-35)"},{405,498,4,0x000000,"遗迹研究所(32-35)"},--第四章完
	{866,513,5,0xb7938e,"祖灵部落(32-34)"},--第5章
	{666,526,5,0x000000,"雪山试炼(32-34)"},
	{450,528,5,0x000000,"冰雪猛兽(33-35)"},
	{246,449,5,0x000000,"冰霜宫殿(34-36)"},
	{194,298,5,0x000101,"女王史卡姬(35-37)"},
	{272,139,5,0x000000,"背后之地(36-38)"},
	{577,111,5,0x000201,"山脊之路(37-39)"},
	{882,216,5,0x000000,"秘密基地(39-41)"},--第5章完
	{121,239,6,0x010101,"邪恶洞窟(41-43)"},--第6章
	{244,349,6,0x010000,"育母基地(43-45)"},
	{368,480,6,0x191715,"魔炎之地(45-47)"},
	{554,436,6,0x2f2d28,"邪龙深渊(46-48)"},
	{765,382,6,0x000000,"迷雾峡谷(47-49)"},
	{1010,225,6,0x000000,"亡灵要塞(48-50)"},--第6章完
	{427,173,7,0x417177,"瘟疫之村(49-51)"},
	{806,189,7,0x855a3e,"厄运之地(51-53)"},--第7章完
	{240,285,8,0x855a3e,"人取桥之战(51-53)"},
	{311,167,8,0x855a3e,"川中岛之战(51-53)"},
	{662,127,8,0x855a3e,"越后之龙(57-59)"},
	{723,409,8,0x855a3e,"群雄争霸(58-60)"},
}

t["角色列表"]={
	{279,183,1,188,55,359,289},
	{476,187,2,392,55,557,289},
	{677,185,3,596,55,755,289},
	{871,180,4,800,55,959,289},
	{275,397,5,188,291,359,520},
	{474,410,6,392,291,559,520},
	{676,405,7,596,291,759,520},
	{874,402,8,800,291,959,520},
	isUserList=function()
		x, y = findColor({485, 566, 647, 616},
			"0|0|0x750606,1|0|0x770604",
			90, 0, 0, 0)--进入游戏
		x1, y1 = findColor({578, 4, 752, 54},
			"0|0|0xfcfeff",
			90, 0, 0, 0)--角色选择
		x2, y2 = findColor({115, 43, 190, 143},
			"0|0|0x64665e,0|2|0x65665e",
			80, 0, 0, 0)--边框
		if x > -1 and x1>-1 and x2 >-1 then
			sysLog("isUserList")
			return true;
		else
			return false;
		end
	end,
	ChangeUser=function(userIndex)
		local uinfo=t["角色列表"][userIndex];
		tap(uinfo[1],uinfo[2]);--选择角色
		mSleep(500);
		tap(566,589)--开始游戏
	end
}

t["主界面"]={
	isFind=function()--是否是主界面
		--sysLog("find 主界面..")
		local begintime = mTime();
		while mTime()-begintime<100 do
			keepScreen(true);
			x, y = findColor({899, 0, 1132, 184},
				"0|0|0x46a2ff,0|1|0x4ea7ff,0|2|0x55b3ff,0|3|0x61afe1,0|4|0x70b6da",
				80, 0, 0, 0)
			x1, y1 = findColor({1110, 0, 1133, 25},
				"0|0|0xd6bf99,0|1|0xcfb78e,0|2|0xbfa67d",
				90, 0, 0, 0)
			if x > -1 and x1 > -1 then
				keepScreen(false)
				return true;
			end
			keepScreen(false)
			mSleep(20);
		end
		return fasle;
	end,
	openMap = function ()--打开地图
		--sysLog("打开地图");
		tap(1041,86);
	end,
	goUserList=function()
		mSleep(500)
		tap(46,60);--点击头像
		mSleep(1000);
		x, y = findColor({95, 42, 1044, 310}, --找弹窗
			"0|0|0xccb38a,0|1|0xcbb289",
			95, 0, 0, 0)
		if x > -1 then
			tap(778,540);--切换角色
		end
	end,
}

t["地图"]={
	isFind=function()--当前界面是否地图
		--sysLog("find  地图..")
		x, y = findColor({1046,9,1129,84},
			"0|0|0xe8cb9c,16|1|0xccaf83,10|9|0xbe9c6b,2|16|0xb18b56,14|15|0xa27b45",
			90, 0, 0, 0)
		x1, y1 = findColor({479, 154, 625, 203},
			"0|0|0x3d2c12",
			90, 0, 0, 0)
		if x > -1 and x1 > -1 then
			return true;
		end
		return false;
	end,
	isZhangGuo=function ()
		x, y = findColor({411, 221, 437, 258},
			"0|0|0xfae7fd,0|-2|0xd2baf8,0|-4|0xa69ef3,0|-7|0xc4c8fa",
			95, 0, 0, 0)
		if x > -1 then
			return true;
		else
			return false;
		end
	end,
	toUpsMap=function()
		mSleep(200);
		--swip()
	end,
	toDownMap=function()
		mSleep(200);
		--swip()
	end,
	closeMap =function()
		tap(1095,41);
	end,
	goGuanKa = function()-- 移动到关卡
		guankashuju=t["关卡坐标"][guanka];--关卡数据
		ditushuju= t["关卡地图坐标"][guankashuju[3]];--地图数据
		huds("移动到"..ditushuju[4]);
		if(guankashuju[3]==2) then
			tap(477,404);
			mSleep(300)
		end
		tap(ditushuju[1],ditushuju[2]);
	end
}


t["刷图"]={
	isSelectGuanKa=function()--是否选择关卡
		x, y = findColor({430, 4, 698, 69},
			"0|0|0xceb08c,0|47|0x645439,33|27|0xe9de3e",
			90, 0, 0, 0)
		if x > -1 then
			return true;
		end
		return false;
	end,
	selectGuanKa=function()
		guankashuju=t["关卡坐标"][guanka];--关卡数据
		mSleep(200);
		tap(guankashuju[1],guankashuju[2]);
	end,
	isSelectGuanKaLevel = function()
		x, y = findColor({708,486,1121,603},
			"0|0|0xd58610,79|-20|0xfbd138,79|29|0xbf7117,-212|11|0x163e83,-136|28|0x1f477d",
			90, 0, 0, 0)
		if x > -1 then
			return true;
		end
		
		x1, y1 = findColor({742, 510, 1118, 588},
			"0|0|0xbab9b9,27|-1|0xd4bc93",
			90, 0, 0, 0)
		if x1 > -1 then
			return true;
		end
		return false;
	end,
	selectGuanKaLevelAndStart = function()
		tap(t["选择难度"][shuatuLevel][1],t["选择难度"][shuatuLevel][2]);
		mSleep(200)
		x, y = findColor({714, 479, 1123, 606},
			"0|0|0xfbd037,6|0|0xfcd339,-6|49|0xc07116,2|49|0xc17317",
			90, 0, 0, 0)
		if x > -1 then
			tap(1024,550);
			mSleep(500)
		else
			huds("未解锁");
			mSleep(1000)
			lua_exit();
		end
	end,
	isFightIng=function()--是否进图
		local begintime = mTime();
		while mTime()-begintime < 100 do
			keepScreen(true)
			x, y = findColor({985, 24, 1134, 165},
				"0|0|0xff9e03,0|1|0xfb8600,0|2|0xf45d00,0|4|0xd51600,0|5|0xdb2500",
				90, 0, 0, 0)
			x1, y1 = findColor({1046, 1, 1127, 25},
				"0|0|0xf4f4f4",
				90, 0, 0, 0)
			if x > -1 and x1>-1 then
				keepScreen(false)
				return true;
			else
				keepScreen(false)
				mSleep(20);
			end
		end
		return false;
	end,
	isFightEnd=function()
		x, y = findColor({704, 410, 963, 456}, --获得经验
			"0|0|0x73ada8,7|0|0x72ada7,15|0|0x73aea9,32|2|0x66999c",
			90, 0, 0, 0)
		x1, y1 = findColor({707, 9, 1121, 124}, --关卡结算框
			"0|0|0xc7af87,18|0|0xc7b088,18|46|0x4b4326",
			90, 0, 0, 0)
		
		if x > -1 or x1 > -1 then
			return true;
		end
		return false;
	end,
	isSelectPrize=function()
		local begintime = mTime();
		while mTime()-begintime < 300 do
			keepScreen(true);
			local x, y = findColor({381, 2, 760, 92}, --选择奖励
				"0|0|0xccb38a,259|1|0xc9b189,-7|0|0xcab189,-7|1|0xc9b189",
				80, 0, 0, 0)
			local x1, y1 = findColor({98, 119, 354, 263},
				"0|0|0xf3d460,0|1|0xf1d05f,0|2|0xffea83,0|4|0xe1b338,0|5|0xe8c55b",
				90, 0, 0, 0)
			if x > -1 and x1 > -1 then
				keepScreen(false);
				return true;
			else
				keepScreen(false);
				mSleep(25);
			end
		end
		return false;
	end,
	selectPrize=function()
		if(index2<=4) then
			tap(t["选择卡牌奖励2"][index2][1],t["选择卡牌奖励2"][index2][2])
		end
		mSleep(500)
		tap(t["选择卡牌奖励1"][index1][1],t["选择卡牌奖励1"][index1][2])
		
		while t["刷图"].isSelectPrize() do
			mSleep(500);
			tap(556,594);
		end
		mSleep(1000)
		tap(1021,34);
	end,
	selectPrizeFast=function()
		--sysLog("selectPrizeFast")
		if(index2<=4) then
			tap(t["选择卡牌奖励2"][index2][1],t["选择卡牌奖励2"][index2][2])
		end
		tap(t["选择卡牌奖励1"][index1][1],t["选择卡牌奖励1"][index1][2])
	end,
	IsDead=function()
		x, y = findColor({321, 260, 393, 301},
			"0|0|0x726448,0|1|0xe9cb9c,0|2|0x35383b",
			90, 0, 0, 0)
		if x > -1 then
			return true;
		end
		x, y = findColor({505, 355, 655, 411},
			"0|0|0xffffff,0|-4|0x124caf,0|-11|0x1254c1",
			90, 0, 0, 0)
		if x > -1 then
			return true;
		end
		
		return false;
	end,
	fuHuo=function()
		tap(578,383);
	end
}

t["每日地下城"]={
	OpenRiChang=function()
		huds("打开日常")
		tap(1091,411);
		mSleep(300);
		--tap(470,88);--切换每日地下城
		--mSleep(200);
	end,
	isFindRiChang=function()
		x, y = findColor({10, 78, 191, 296},
			"0|0|0x39a0f2,0|3|0x359dec,0|15|0xffffff",
			95, 0, 0, 0)
		if x > -1 then
			--sysLog("1123123123")
			return true;
		end
		return false;
	end,
	changeDXC=function()
		tap(99,116);
		mSleep(300);
		tap(470,88);--切换每日地下城
		mSleep(300);
	end,
	isComplate=function()--斗牛节和哥布林宝藏是否完成
		x, y = findColor({587, 356, 826, 492}, 
			"0|0|0x00d70a",
			95, 0, 0, 0)
		if x > -1 then
			huds("战斗完成")
			tap(559,594);
			return;
		end
		return false;
	end,
	isFindGBL=function()--是否可挑战哥布林
		x, y = findColor({503,464,634,506},
			"0|0|0x1f4d86,12|-28|0x3ba7f8,11|-28|0x3ba8f8",
			95, 0, 0, 1)
		if x > -1 then
			return true;
		else
			return false;
		end
	end,
	isDouNiu=function()--是否可挑战斗牛
		x, y = findColor({503,257,631,302},
			"0|0|0x1f4d86,12|-28|0x3ba7f8,11|-28|0x3ba8f8",
			95, 0, 0, 1)
		if x > -1 then
			return true;
		else
			return false;
		end
	end,
	GebuLin=function()
		huds("哥布林宝藏")
		tap(570,486);--前进570,485
		mSleep(300)
		tap(t["哥布林难度"][gebuLinLevel][1],t["哥布林难度"][gebuLinLevel][2]);
		mSleep(300);
		tap(947,536)--开始哥布林
		--mSleep(2000);
	end,
	DouNiu=function()
		huds("国际斗牛节")
		mSleep(300)
		tap(1029,284);
		mSleep(300);
		tap(870,556);--开始斗牛
	end,
	changeShenYuan30=function()
		tap(99,116);
		mSleep(300);
		tap(636,87);--切换深渊地下城
		mSleep(300);
		tap(567,284);
	end,
	changeShenYuan50=function()
		tap(99,116);
		mSleep(300);
		tap(636,87);--切换深渊地下城
		mSleep(300);
		tap(1028,283);
	end,
	changeShenYuan55=function()
		tap(99,116);
		mSleep(300);
		tap(636,87);--切换深渊地下城
		mSleep(300);
		tap(570,492);
	end,
	changeYiJi=function()
		tap(99,116);
		mSleep(300);
		tap(808,87);--远古
		mSleep(300);
		tap(567,284);
	end,
	changeYuanGu=function()
		tap(99,116);
		mSleep(300);
		tap(808,87);--远古
		mSleep(300);
		tap(1028,283);
	end,
	changeHeiAn=function()
		tap(99,116);
		mSleep(300);
		tap(808,87);--黑暗
		mSleep(300);
		tap(570,492);
	end,
	SelectLevel=function()
		tap(570,486);--前进570,485
		mSleep(300)
		tap(t["深渊远古难度"][shuatuLevel][1],t["深渊远古难度"][shuatuLevel][2]);
		mSleep(300);
	end,
	StartChange=function()
		tap(977,513)--开始挑战
		mSleep(500);
	end
}

t.back=function()
	x, y = findColor({4,5,125,79}, --返回
		"0|0|0xb69561,3|0|0xb3925e,9|0|0xaf8e5a,14|0|0xab8a57,21|0|0xa68552",
		90, 1, 0, 0)
	if x > -1 then
		--sysLog("返回");
		mSleep(200);
		tap(x,y);
	end
end

t.closePopup = function ()--是否是弹出窗口
	--sysLog("find弹窗")
	x, y = findColor({767, 117, 880, 216},
		"0|0|0xcaa97a,0|3|0xc39f6e,0|7|0xb3915d",
		95, 0, 0, 0)--战斗失败
	if x > -1 then
		mSleep(200)
		tap(x,y);
		--tap(814,168);
		return true;
	end
	
	x, y = findColor({861,37,1121,254},
		"0|0|0xd3b383,9|0|0xc7a778,5|4|0xc2a170,0|8|0xbf9c69,9|8|0xb38f5c,5|5|0xc09e6c",
		95, 0, 0, 0)--弹窗
	if x > -1 then
		mSleep(200)
		tap(x,y);
		return true;
	end
	
	x, y = findColor({394, 374, 561, 431},
		"0|0|0xffffff,-11|0|0x164288",
		95, 0, 0, 0)
	if x > -1 then
		mSleep(200);
		tap(x,y);
		return true;
	end
	
	x, y = findColor({482, 543, 656, 614}, --赛季开始弹窗
		"0|0|0x144495,0|1|0x144393,9|1|0xffffff",
		90, 0, 0, 0)
	if x > -1 then
		--sysLog("赛季开始弹窗");
		mSleep(500)
		tap(567,575);
		return true;
	end
	return false;
end

t.isLoading=function ()
	--sysLog("find isLoading")
	--if getColor(276,118) == 0x000000 and  getColor(961,158) == 0x000000 and
	--getColor(611,370) == 0x000000 and  getColor(245,651) == 0x000000 then
	--return true;
	--end
	local x, y = findColor({78, 485, 368, 559},
		"0|0|0xfff6ab,0|1|0xece3a1,90|3|0xceaf6e",
		93, 0, 0, 0)
	
	local x1, y1 = findColor({402, 363, 511, 398},
		"0|0|0xfff5a3,0|1|0xfff39f,0|2|0xfef5a7",
		93, 0, 0, 0)
	if x > -1 or x1 > -1 then
		return true;
	end
	return false;
end

t.IsHavePower=function()
	x, y = findColor({386, 224, 747, 325}, --刷图弹窗
		"0|0|0x72e9ff,0|7|0xffffff,84|0|0xc375ff,84|4|0x502a54",
		90, 0, 0, 0)
	if x > -1 then
		mSleep(500)
		tap(686,542);
		return false;
	end
	
	x, y = findColor({408,104,716,168}, --体力弹出窗
		"0|0|0xccb38a,0|1|0xcbb289,0|48|0xab8f5e",
		80, 0, 0, 0)
	x1, y1 = findColor({698,392,843,450},
		"0|0|0xffe340,1|0|0xffe33f",
		90, 0, 0, 0)
	if x > -1 and x1 > -1 then
		mSleep(500);
		tap(819,164);
		return false;
	end
	return true;
end

t["IGG1"]={--横屏
	openIGGApp=function()
		--mSleep(600);
		mSleep(1000);
		doublePressHomeKey();
		mSleep(1000);
		--init("0", 0);
		--setScreenScale(750,1334)
		tap(616,332);
		mSleep(1000);
	end,
	isIGG=function()
		x, y = findColor({109, 174, 145, 622},
			"0|0|0xaaaaaa,0|100|0xaaaaaa,0|200|0xaaaaaa",
			95, 0, 0, 0)
		if x > -1 then
			return true;
		end
		return false;
	end,
	search=function(number)
		mSleep(300);
		tap(523,196);--i32
		mSleep(500);
		tap(579,512);--value
		inputText("#CLEAR#") --删除输入框中的文字（假设输入框中已存在文字）
		mSleep(300);
		inputText(number);
		mSleep(500);
		tap(482,205);--搜索
		
		if(number~=number3) then
			mSleep(1300)
			while true do
				x, y = findColor({548,218,587,301},
					"0|0|0x0a0a0a,1|0|0xf9f9f9",
					95, 0, 0, 0)
				if x > -1 then
					mSleep(500)
				else
					break;
				end
			end
		end
	end,
	backGame=function()
		mSleep(100)
		doublePressHomeKey();
		mSleep(1000)
		tap(608,299);--切换回去
		mSleep(200);
	end,
	open=function()
		mSleep(500);
		tap(72,51);
	end,
	close=function()
		mSleep(500);
		tap(72,88);
	end,
	clear=function()
		mSleep(500);
		tap(74,577);--清除
		mSleep(500);
		tap(637,203);--确认清除
	end,
	number=function()
		mSleep(500);
		tap(75,381);--number
	end,
	nearby=function()
		mSleep(600);
		tap(74,318);--nearby
	end,
	batch=function()
		mSleep(500)
		tap(72,573);--batch
	end
}

t.Next=function()
	flag=true;
	while flag do
		keepScreen(true);
		x, y = findColor({966, 540, 1330, 743},
			"0|0|0x94845a,2|0|0x94835a,5|0|0x95845a",
			90, 0, 0, 0)
		if x > -1 then
			huds("自动下一步")
			tap(x,y);
			mSleep(500);
		else
			flag=false;
		end
		keepScreen(false)
		mSleep(500);
	end
end

return t
