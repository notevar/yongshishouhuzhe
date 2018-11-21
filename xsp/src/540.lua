
local t = {}

t["选择难度"]={{608,295},{755,298},{899,294},{1041,296}}
t["哥布林难度"]={{338,157},{338,245},{336,345}}
t["选择卡牌奖励1"]={{196,162}, {452,166}, {704,167},{954,172}}
t["选择卡牌奖励2"]={{200,501}, {446,501}, {708,519},{953,502}}
t["关卡地图坐标"]={{1072,289,0xdec979,"银叶林地(1-7)"},{269,491,0xc3a657,"暮光森林(7-20)"},{842,181,0xdfc883,"悬空塔(21-30)"},{332,93,0xcabf99,"贝希摩斯(30-31)"},{69,130,0xe5d47d,"冰封雪域(31-40)"},{1049,562,0xdbc476,"幽暗走廊(41-49)"},{672,80,0x94743f,"诺曼达(49-)"}}
t["关卡坐标"]={
	--{585,443,1,0xa29343,"港口郊外(1-3)"},{971,470,1,0x31734b,"修炼之地(3-5)"},{974,210,1,0x315035,"静谧丛林(5-7)"},
	--{306,538,2,0x224435,"丛林深处(7-9)"},
	--{437,212,2,0x19302e,"荧光沼泽(9-11)"},
	--{693,149,2,0x382419,"恶毒湿地(11-14)"},
	--{804,302,2,0x758aa8,"幽寒林地(13-16)"},
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
	{806,189,7,0x855a3e,"厄运之地(51-53)"},--第7章
}

t["角色列表"]=
{
	{279,183,1,188,55,359,289},
	{476,187,2,392,55,557,289},
	{677,185,3,596,55,755,289},
	{871,180,4,800,55,959,289},
	{275,397,5,188,291,359,520},
	{474,410,6,392,291,559,520},
	{676,405,7,596,291,759,520},
	{874,402,8,800,291,959,520},
	
	isUserList=function()
		mSleep(500);
		x, y = findColor({874, 3, 1034, 50},
			"0|0|0xd9ce79",
			95, 0, 1, 0)
		if x > -1 then
			return true;
		else
			return false;
		end
	end
}

t["地图"]={
	openMap = function ()
		isfind=false;
		begintime = mTime();
		while mTime()-begintime<=3000 do
			keepScreen(true);
			x, y = findColor({899, 0, 1132, 184},
				"0|0|0x46a2ff,0|1|0x4ea7ff,0|2|0x55b3ff,0|3|0x61afe1,0|4|0x70b6da",
				80, 0, 0, 0)
			if x > -1 then
				huds("打开地图");
				tap(1041,86);
				isfind=true;
				keepScreen(false)
				break;
			else
				mSleep(100);
			end
			keepScreen(false)
		end
		
		if(not isfind) then
			huds("未找到地图,自动退出辅助");
			mSleep(1000)
			lua_exit();
		end
	end,
	close =	function()
		mSleep(1000);
		x, y = findColor({1046,9,1129,84},
			"0|0|0xe8cb9c,16|1|0xccaf83,10|9|0xbe9c6b,2|16|0xb18b56,14|15|0xa27b45",
			95, 0, 0, 0)
		if x > -1 then
			huds("关闭地图")
			tap(x,y);
			return true;
		else
			return false;
		end
	end
}

t["每日地下城"]={
	isComplate=function()--斗牛节和哥布林宝藏是否完成
		huds("自动战斗中...")
		mSleep(15000);
		flag=true;
		while (flag) do
			keepScreen(true);
			x, y = findColor({587, 356, 826, 492},
				"0|0|0x00d70a",
				95, 0, 0, 0)
			if x > -1 then
				flag=false;
				keepScreen(false);
				mSleep(1000);
				huds("战斗完成")
				mSleep(1000);
				tap(559,594);
			else
				keepScreen(false);
				mSleep(2000);
			end
		end
	end,
	OpenRiChang=function()
		x, y = findColor({0, 0, 1135, 639},
			"0|0|0xcfb78e,6|1|0xa28e6a,6|2|0x988664,-8|-1|0xd6bf99,-8|0|0xcfb78e,-8|1|0xbfa67d",
			95, 0, 0, 0)
		if x > -1 then
			huds("打开日常")
			mSleep(500)
			tap(1091,411);
		else
			huds("未找到日常,自动退出..")
			mSleep(1000)
			lua_exit();
		end
	end,
	openMeiRiDiXiaCheng=function()
		x, y = findColor({4,5,125,79},
			"0|0|0xb69561,3|0|0xb3925e,9|0|0xaf8e5a,14|0|0xab8a57,21|0|0xa68552",
			95, 1, 0, 0)
		if x > -1 then
			huds("点击每日地下城")
			mSleep(500);
			tap(470,88);
		end
	end,
	GebuLin=function(level)
		x, y = findColor({215, 340, 670, 545},
			"0|0|0x1f4d86,12|-28|0x3ba7f8,11|-28|0x3ba8f8",
			95, 0, 0, 1)
		if x > -1 then
			huds("哥布林宝藏")
			tap(x,y);--前进570,485
			mSleep(500);
			huds("选择难度")
			tap(t["哥布林难度"][level][1],t["哥布林难度"][level][2]);
			return true;
		else
			return false;
		end
	end,
	DouNiu=function()
		x, y = findColor({673,140,1122,319},
			"0|0|0x1f4d86,12|-28|0x3ba7f8,11|-28|0x3ba8f8",
			95, 0, 0, 1)
		if x > -1 then
			huds("国际斗牛节")
			mSleep(500)
			tap(x,y);--1029,284
			return true;
		else
			return false;
		end
	end,
	YongZheZhiTa=function()
		x, y = findColor({535,281,771,373},
			"0|0|0x1559c1,41|1|0x3192e7,111|3|0x1f6ac9,8|28|0x173975,121|24|0x163e80",
			95, 0, 0, 1)
		if x > -1 then
			x, y = findColor({292, 156, 780, 376}, --判断是否有未领取奖励
				"0|0|0xff0000,1|3|0xff0000",
				95, 0, 0, 0)
			if x > -1 then
				huds("前往勇者之塔")
				tap(668,331);
				mSleep(500);
				huds("返回")
				tap(61,50);--返回一次
				mSleep(500);
			end
			
			huds("前往勇者之塔")
			tap(668,331);
			mSleep(1000)
			x, y = findColor({540, 598, 1309, 720}, --小红点证明未重置
				"0|0|0xff0000",
				95, 0, 0, 0)
			if x > -1 then
				huds("重置层数")
				tap(815,647);
				mSleep(1000)
				huds("确认重置")
				tap(790,472);--确认重置
				mSleep(1000)
				huds("开始挑战")
				tap(1183,649);--开始挑战
				t.waitLoading();
				t.Next();--下一步
				x, y = findColor({983, 4, 1326, 120},
					"0|0|0xa19587,21|17|0x7b7d79,28|36|0x809285,11|31|0x7d867f",
					95, 0, 0, 0)
				if x > -1 then
					huds("点击设置")
					tap(1078,40);--设置按钮
					mSleep(1000)
					huds("离开副本")
					tap(622,418);--离开副本
					t.waitLoading();
					huds("进入勇者之塔")
					tap(668,331);--进入勇者之塔
					mSleep(1000)
					huds("扫荡")
					tap(970,651);--进入勇者之塔
					mSleep(1000);
					huds("确认扫荡")
					tap(787,473);--确认扫荡
					mSleep(1000);
					t.goHome();
				end
			else
				t.goHome();
				return false;
			end
		end
		return false;
		
	end,
	StartChange=function()
		x, y = findColor({620, 490, 1113, 604},
			"0|0|0xfacf36,4|0|0xfad037,11|0|0xfad138,-55|25|0xc47110",
			95, 0, 0, 0)
		if x > -1 then
			tap(x+90,y+30);
		end
	end
}


t["刷图"]={
	selectMap = function(gkindex)--关卡坐标 的index
		guankashuju=t["关卡坐标"][gkindex];--关卡数据
		ditushuju= t["关卡地图坐标"][guankashuju[3]];--地图数据
		huds("移动到"..ditushuju[4]);
		tap(ditushuju[1],ditushuju[2]);
		mSleep(2000);
		weiDaoDa = true;--未到达
		while (weiDaoDa) do
			keepScreen(true)
			--x, y = findColor({447, 0, 937, 97},
			--"0|0|0xfedc92,-58|5|0xceb38c,-61|59|0x5f4e35",
			--95, 0, 0, 0)
			x, y = findColor({4,5,125,79},
				"0|0|0xb69561,3|0|0xb3925e,9|0|0xaf8e5a,14|0|0xab8a57,21|0|0xa68552",
				95, 1, 0, 0)
			if x > -1 then
				weiDaoDa = false;
				mSleep(500);
				huds("选择地图");
				tap(guankashuju[1],guankashuju[2]);
				
			else
				mSleep(2000);
			end
			keepScreen(false)
		end
		
	end,
	selectLevelAndStart = function(level)
		level=level or 1;
		--x, y = findColor({23, 101, 99, 172},
		--"0|0|0x9890b1,15|7|0x8a84a7,32|14|0xa8a2c5,32|3|0xa59cbb,59|0|0x2a2530",
		--95, 0, 0, 0)
		x, y = findColor({708,486,1121,603},
			"0|0|0xd58610,79|-20|0xfbd138,79|29|0xbf7117,-212|11|0x163e83,-136|28|0x1f477d",
			90, 0, 0, 0)
		if x > -1 then
			tap(t["选择难度"][level][1],t["选择难度"][level][2]);
			mSleep(500)
			x, y = findColor({714, 479, 1123, 606},
				"0|0|0xfbd037,6|0|0xfcd339,-6|49|0xc07116,2|49|0xc17317",
				90, 0, 0, 0)
			if x > -1 then
				huds("开始挑战");
				tap(1024,550);
			else
				huds("未解锁");
				mSleep(1000)
				lua_exit();
			end
		end
	end,
	autoFight = function()
		begintime = mTime();
		isautofight=false;
		while mTime()-begintime<=2000 do --找2秒
			keepScreen(true);
			x, y = findColor({0, 155, 61, 222},
				"0|0|0xffa826,0|4|0xffab20,2|4|0xffab20",
				95, 0, 0, 0)
			if x > -1 then --以经打开自动战斗模式
				huds("已经是自动战斗模式")
				isautofight=true;
				keepScreen(false);
				break;
			else
				mSleep(20);
			end
			keepScreen(false);
		end
		
		if(not isautofight) then
			tap(31,190);
			huds("打开自动战斗模式..");
		end
		huds("自动战斗中...")
	end,
	fightEnd = function(times)
		times=times or 20000;
		mSleep(times)
		flag=true;
		begintime = mTime();
		while flag and mTime()-begintime<12000  do
			keepScreen(true)
			x, y = findColor({704, 410, 963, 456}, --获得经验
				"0|0|0x73ada8,7|0|0x72ada7,15|0|0x73aea9,32|2|0x66999c",
				95, 0, 0, 0)
			x1, y = findColor({707, 9, 1121, 124}, --关卡结算框
				"0|0|0xc7af87,18|0|0xc7b088,18|46|0x4b4326",
				95, 0, 0, 0)
			
			if x > -1 or x1 > -1 then
				huds("战斗完成")
				flag=false;
			else
				mSleep(1000)
			end
			keepScreen(false)
		end
		if(flag==false) then
			t.exitFight();
		end
	end,
	selectPrize=function(index1,index2)
		if(index1==5) then--随机
			index1=math.random(1,4);
		end
		if(index2==5) then--随机
			index2=math.random(1,4);
		end
		
		begintime = mTime();
		while mTime()-begintime<=6000 do
			x, y = findColor({381, 2, 760, 92},
				"0|0|0xccb38a,259|1|0xc9b189,-7|0|0xcab189,-7|1|0xc9b189",
				95, 0, 0, 0)
			if x > -1 then
				huds("选择奖励")
				mSleep(500)
				tap(t["选择卡牌奖励1"][index1][1],t["选择卡牌奖励1"][index1][2])
				mSleep(500);
				if(index2<=4) then
					tap(t["选择卡牌奖励2"][index2][1],t["选择卡牌奖励2"][index2][2])
					mSleep(1500);
					tap(556,594);
					mSleep(100);
					tap(556,594);
				else
					mSleep(4000)
				end
				huds("返回主城");
				tap(1021,34);
				break;
			else
				mSleep(500);
			end
		end
	end,
	selectPrizeFast=function(index1,index2)
		if(index1==5) then--随机
			index1=math.random(1,4);
		end
		if(index2==5) then--随机
			index2=math.random(1,4);
		end
		if(index2~=6) then
			flag=true;
			local begintime = mTime();
			while flag do
				keepScreen(true)
				x, y = findColor({381, 2, 760, 92}, --选择奖励
					"0|0|0xccb38a,259|1|0xc9b189,-7|0|0xcab189,-7|1|0xc9b189",
					95, 0, 0, 0)
				if x > -1 then
					tap(t["选择卡牌奖励1"][index1][1],t["选择卡牌奖励1"][index1][2])
					mSleep(50)
					tap(t["选择卡牌奖励2"][index2][1],t["选择卡牌奖励2"][index2][2]);
					mSleep(500)
					flag=false;
				else
					mSleep(20)
				end
				keepScreen(false);
				if(flag and mTime()-begintime>=fighttime) then
					t.exitFight();
					break;
				end
			end
		end
	end
}

t.goHome = function ()--关闭弹出窗口 回到主页面
	flag=true;
	while flag do
		keepScreen(true)
		x, y = findColor({4,5,125,79}, --返回
			"0|0|0xb69561,3|0|0xb3925e,9|0|0xaf8e5a,14|0|0xab8a57,21|0|0xa68552",
			95, 1, 0, 0)
		if x > -1 then
			huds("返回上一级")
			tap(x,y);
			mSleep(500);
		else
			flag=false;
		end
		keepScreen(false);
	end
	
	x, y = findColor({861,37,1121,254},
		"0|0|0xd3b383,9|0|0xc7a778,5|4|0xc2a170,0|8|0xbf9c69,9|8|0xb38f5c,5|5|0xc09e6c",
		95, 0, 0, 0)
	if x > -1 then
		huds("关闭弹窗");
		tap(x,y);
		return;
	end
	
	if(t["地图"].close()) then
		return;
	end
	
	x, y = findColor({482, 543, 656, 614}, --赛季开始弹窗
		"0|0|0x144495,0|1|0x144393,9|1|0xffffff",
		95, 0, 0, 0)
	if x > -1 then
		tap(567,575);
		mSleep(500)
		t.goHome();
	end
	--huds("当前窗口是主窗口")
end

t.exitFight = function()
	x, y = findColor({86, 23, 241, 57},
		"0|0|0x520e0d,0|-16|0x630a0e,8|-18|0xd8b983",
		90, 0, 1, 0)
	if x > -1 then
		tap(951,34);
		mSleep(1000)
		tap(529,357);
	end
end

t.waitLoading = function()
	huds("等待加载...")
	mSleep(1000);
	isloading=true;
	while isloading do--找地下城盟约字体 左边或右边 找到在进入加载中
		keepScreen(true);
		x, y = findColor({96, 42, 170, 92},
			"0|0|0xff4b23,1|0|0xff4c24,14|0|0xff4a23,15|0|0xff4a22",
			90, 0, 0, 0)
		x1, y1 = findColor({832, 52, 897, 96},
			"0|0|0xff4b23,1|0|0xff4c24,14|0|0xff4a23,15|0|0xff4a22",
			90, 0, 0, 0)
		if x > -1 or x1 > -1 then
			isloading=false;
			huds("等待加载...")
		else
			mSleep(30);
		end
		keepScreen(false);
	end
	
	isloading=true;
	while isloading do--找地下城盟约字体 左边或右边 未找到加载完成
		keepScreen(true);
		x, y = findColor({96, 42, 170, 92},
			"0|0|0xff4b23,1|0|0xff4c24,14|0|0xff4a23,15|0|0xff4a22",
			90, 0, 0, 0)
		x1, y1 = findColor({832, 52, 897, 96},
			"0|0|0xff4b23,1|0|0xff4c24,14|0|0xff4a23,15|0|0xff4a22",
			90, 0, 0, 0)
		if x == -1 and x1 == -1 then
			isloading=false;
		else
			mSleep(250);
		end
		keepScreen(false);
	end
	huds("加载完成...");
end

t.IsHavePower=function()
	havePower=true;
	x, y = findColor({389,223,748,326}, --刷图弹窗
		"0|0|0x0fa3e1,120|0|0x8214e3",
		95, 0, 0, 0)
	if x > -1 then
		tap(686,542);
		havePower=false;
	end
	
	if havePower then
		x, y = findColor({408,104,716,168}, --体力弹出窗
			"0|0|0xccb38a,0|1|0xcbb289,0|48|0xab8f5e",
			95, 0, 0, 0)
		x1, y1 = findColor({698,392,843,450},
			"0|0|0xffe340,1|0|0xffe33f",
			95, 0, 0, 0)
		if x > -1 and x1 > -1 then
			tap(819,164);
			huds("没有体力了")
			havePower=false;
			mSleep(1000)
		end
	end
	return havePower;
end

t.Next=function()
	flag=true;
	while flag do
		keepScreen(true);
		x, y = findColor({966, 540, 1330, 743},
			"0|0|0x94845a,2|0|0x94835a,5|0|0x95845a",
			95, 0, 0, 0)
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

t.getUsetCount=function()
	usercount=0;
	for key, value in pairs(t["角色列表"]) do
		tap(value[1],value[2]);
		mSleep(200)
		x, y = findColor({value[4],value[5],value[6],value[7]},
			"0|0|0x03a2d7",
			95, 0, 0, 0)
		if x > -1 then
			usercount=usercount+1;
		else
			break;
		end
	end
	return usercount;
end

t.goUserList=function()
	mSleep(500)
	tap(46,60);--点击头像
	mSleep(1000);
	x, y = findColor({95, 42, 1044, 310}, --找弹窗
		"0|0|0xccb38a,0|1|0xcbb289",
		95, 0, 0, 0)
	if x > -1 then
		tap(778,540);--切换角色
		mSleep(3000)
		flag=true;
		while flag do
			keepScreen(true)
			x, y = findColor({4,5,125,79}, --返回
				"0|0|0xb69561,3|0|0xb3925e,9|0|0xaf8e5a,14|0|0xab8a57,21|0|0xa68552",
				95, 1, 0, 0)
			if x > -1 then
				flag=false;
			else
				mSleep(1000)
			end
			keepScreen(false)
		end
	end
end

t.ChangeUser=function(index1)
	uinfo=t["角色列表"][index1];
	tap(uinfo[1],uinfo[2]);--选择角色
	mSleep(500);
	tap(566,589)--开始游戏
end


return t