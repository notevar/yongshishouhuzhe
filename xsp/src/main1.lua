require "DeviceCheck"
local w_,h_ = getScreenSize() --w < h
local h = w_
local w = h_

_device = getCurrentDevice()

local supportSize = (_device > 0) --检测是否支持该分辨率


if _device == 5 then
	-- toast("强制")
	setScreenScale(640,1136)
end

--------------------------------------------------------------
require "public"
local t = require "540"
local zd = require "autorun"

gebuLinLevel=1;--哥布林难度
guanka=1;
shuatuLevel=1;--刷图难度
jiangliLevel1=1;--奖励1
jiangliLevel2=1;--奖励2
sleeptime=5000;
jueseindex="0";
fighttime=2;--战斗时间 默认2分钟
--------------------------------------------------------------

自动刷图 = function()
	
	t.goHome();
	while true do
		mSleep(2000);
		t["地图"].openMap();
		mSleep(1000);
		t["刷图"].selectMap(guanka);
		mSleep(1000);
		t["刷图"].selectLevelAndStart(shuatuLevel);
		mSleep(200)
		if(t.IsHavePower()==false) then
			mSleep(500);
			huds("体力已用完")
			mSleep(500);
			t.goHome();
			mSleep(500);
			return;
		end
		
		t.waitLoading();		
		--t["刷图"].autoFight();
		--zd["自动跑图"].PaoTu(guanka)
		--t["刷图"].closeAutoFight();
		if(guanka>24) then
			t["刷图"].fightEnd(50000);
		else
			t["刷图"].fightEnd(30000);
		end
		t["刷图"].fightEnd(4000);
		--mSleep(3000)
		t["刷图"].selectPrize(jiangliLevel1,jiangliLevel2);
		t.waitLoading();
		huds("先休息一下~")
		mSleep(500)
		if(t.IsHavePower()==false) then
			huds("体力已用完")
			mSleep(500);
			return;
		end
		mSleep(sleeptime)
	end
end


自动加速刷图 = function()
	t.goHome();
	while true do
		mSleep(500);
		t["地图"].openMap();
		mSleep(500);
		t["刷图"].selectMap(guanka);
		mSleep(1500);
		t["刷图"].selectLevelAndStart(shuatuLevel);
		mSleep(200);
		if(t.IsHavePower()==false) then
			huds("体力已用完")
			mSleep(500);
			t.goHome();
			mSleep(500);
			return;
		end
		
		t.waitLoading();
		huds("自动战斗中..")
		--t["刷图"].autoFight();
		--zd["自动跑图"].PaoTu(guanka)
		--t["刷图"].closeAutoFight();
		if(guanka>24) then
			mSleep(3000)
		else
			mSleep(5000)
		end
		--t["刷图"].fightEnd(3000);
		t["刷图"].selectPrizeFast(jiangliLevel1,jiangliLevel2);
		t.waitLoading();
		huds("先休息一下~")
		mSleep(500)
		if(t.IsHavePower()==false) then
			huds("体力已用完")
			mSleep(500);
			return;
		end
		mSleep(sleeptime);
	end
end


每日地下城任务=function()
	
	t.goHome();
	mSleep(1000);
	t["每日地下城"].OpenRiChang();
	t["每日地下城"].openMeiRiDiXiaCheng();
	index=1;
	while (index==1) do
		mSleep(1000);
		if(t["每日地下城"].GebuLin(gebuLinLevel)==false) then
			mSleep(1000);
			if(t["每日地下城"].DouNiu()==false) then
				--mSleep(1000);
				--if(t["每日地下城"].YongZheZhiTa()==false) then
				--huds("每日地下城任务已完成");
				return;
				--end
			end
		end
		mSleep(1000);
		t["每日地下城"].StartChange();
		t.waitLoading();
		mSleep(1000);
		t["刷图"].autoFight();
		mSleep(1000)
		t["每日地下城"].isComplate();
		t.waitLoading();
		mSleep(1000);
	end
end
--------------------------------------------------------------
自动加速跑图 = function()
	t.goHome();
	while true do
		mSleep(500);
		t["地图"].openMap();
		mSleep(500);
		t["刷图"].selectMap(guanka);
		mSleep(500);
		t["刷图"].selectLevelAndStart(shuatuLevel);
		mSleep(200);
		if(t.IsHavePower()==false) then
			huds("体力已用完")
			mSleep(500);
			t.goHome();
			mSleep(500);
			return;
		end
		--t.waitLoading();
		--t["刷图"].autoFight();
		zd["自动加速跑图"].PaoTu(guanka)
		--t["刷图"].closeAutoFight();
		--t["刷图"].fightEnd();
		mSleep(200)
		t["刷图"].selectPrize(jiangliLevel1,jiangliLevel2);
		t.waitLoading();
		huds("先休息一下~")
		mSleep(500)
		if(t.IsHavePower()==false) then
			huds("体力已用完")
			mSleep(500);
			return;
		end
		mSleep(sleeptime)
	end
end

自动跑图 = function()
	t.goHome();
	while true do
		mSleep(500);
		t["地图"].openMap();
		mSleep(1000);
		t["刷图"].selectMap(guanka);
		mSleep(1000);
		t["刷图"].selectLevelAndStart(shuatuLevel);
		mSleep(200);
		if(t.IsHavePower()==false) then
			huds("体力已用完")
			mSleep(500);
			t.goHome();
			mSleep(500);
			return;
		end
		--t.waitLoading();
		--t["刷图"].closeAutoFight();
		--t["刷图"].autoFight();
		zd["自动跑图"].PaoTu(guanka)
		t["刷图"].fightEnd(4000);
		t["刷图"].selectPrize(jiangliLevel1,jiangliLevel2);
		t.waitLoading();
		huds("先休息一下~")
		mSleep(500)
		if(t.IsHavePower()==false) then
			huds("体力已用完")
			mSleep(500);
			return;
		end
		mSleep(sleeptime)
	end
end


自动切换角色加速刷图=function()
	if(string.find(jueseindex,"0") == 1) then
		自动加速刷图();
	else
		x, y = findColor({874, 3, 1034, 50}, 
			"0|0|0xd9ce79",
			95, 0, 1, 0)
		if x > -1 then
			local list = Split(jueseindex, "@");
			for key, value in pairs(list) do
				mSleep(1000);
				t.ChangeUser(tonumber(value))
				t.waitLoading();
				mSleep(2000);	
				自动加速刷图();
				huds("切换角色...")
				mSleep(1000)
				t.goUserList()
				mSleep(6000)
			end
		else
			huds("未找到角色列表");
			mSleep(1000)
			return;
		end
	end
end

自动切换角色跑图=function()
	if(string.find(jueseindex,"0") == 1) then
		自动跑图();
	else
		x, y = findColor({874, 3, 1034, 50}, --角色数量框
			"0|0|0xd9ce79",
			95, 0, 1, 0)
		x1, y1 = findColor({487, 3, 655, 45}, --中间白点
			"0|0|0xffffff",
			95, 0, 0, 0)
		if x > -1 and x1 > -1 then
			local list = Split(jueseindex, "@");
			for key, value in pairs(list) do
				mSleep(1000);
				t.ChangeUser(tonumber(value))
				t.waitLoading();
				mSleep(2000);	
				自动跑图();
				huds("切换角色...")
				mSleep(1000)
				t.goUserList()
				mSleep(6000)
			end
		else
			huds("未找到角色列表");
			mSleep(1000)
			return;
		end
	end
end

start=function()
	init("0", 1); --以当前应用 Home 键在右边初始化touchDown(1, 100, 100)
	ret,results=showUI("ui.json");
	
	if ret==0 then        
		toast("您选择了取消，停止脚本运行")
		mSleep(1000);
		lua_exit()
	end
	
	math.randomseed(tostring(os.time()):reverse():sub(1, 7))  --设置随机数种子
	huds("启动中..");
	mSleep(500);
	huds("运行过程中请勿乱点..");
	mSleep(500);
	shuatuLevel=tonumber(results["shuatunandu"])+1;--刷图等级
	jiangliLevel1=tonumber(results["tongguanjiangli"])+1;--奖励1
	jiangliLevel2=tonumber(results["huangjinkapai"])+1;--奖励2
	guanka=tonumber(results["guankaditu"])+1;--关卡信息
	jueseindex=results["juesexuanze"];--角色信息
	if(results["sleeptime"]~="") then
		sleeptime=tonumber(results["sleeptime"]) * 1000;
	end
	
	if(results["fighttime"]~="") then
		fighttime=tonumber(results["fighttime"]) * 1000 * 60;
	end
	
end

msgStart=function()
	init("0", 1); --以当前应用 Home 键在右边初始化touchDown(1, 100, 100)
	ret,results=showUI("msg.json");
	huds("启动中..");
	mSleep(1000);
	huds("运行过程中请勿乱点..");
	mSleep(500);
end


mSleep(1000);
--start();

--t.getUsetCount();
--ucount= t.getUsetCount();
--自动刷图();
--自动跑图()
--自动加速刷图();
--自动加速跑图()
--每日地下城任务()
--moveSwip(170,607,224,554,4000,1)--斜上  图一
--moveUp(3000)

--自动切换角色加速刷图()
--自动切换角色跑图()

lua_exit();



--moveRight(3000)--图二
--moveLeft(3000)
--guanqia=retuserui["CheckBoxGroup1"];