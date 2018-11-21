<<<<<<< HEAD
---------------------------
--main.lua
--------------------------
require "init" --初始化库
require "lib"--专用函数库
require "UI_lua"--UI库
local t = require "t640";

if getCurrentDevice()==5 then
	--toast("您的手机分辨率为"..width.."*"..height.."")
	setScreenScale(640,1136)
else
	toast("您的手机分辨率为".._fsh.."*".._fsw.."。很抱歉，不支持您的手机分辨率。")
	mSleep(1000)
	lua_exit()
end

每日地下城=function()
	isHavePower=1;
	runCount=0;
	showMessage="";
	while true do
--		if t.isLoading() then
--			--sysLog("isLoading");
--			mSleep(1000);
		if t["刷图"].IsDead() then
			t["刷图"].fuHuo();
		elseif t["主界面"].isFind() then
			t["每日地下城"].OpenRiChang();
			mSleep(500);
			if not t["每日地下城"].isFindRiChang() then
				break;
			end
		elseif t["每日地下城"].isFindRiChang() then
			if(runCount~=0) then
				huds(showMessage.."完成");
			end
			sysLog(guanka);
			if guanka == 37 then
				t["每日地下城"].changeYiJi();
			elseif guanka==38 then
				t["每日地下城"].changeYuanGu();
			elseif guanka==39 then
				t["每日地下城"].changeHeiAn();
			elseif guanka==40 then
				t["每日地下城"].changeShenYuan30();
			elseif guanka==41 then
				t["每日地下城"].changeShenYuan50();
			elseif guanka==42 then
				t["每日地下城"].changeShenYuan55();
			end
			mSleep(150);
			t["每日地下城"].SelectLevel();
			t["每日地下城"].StartChange();
			if(not t.IsHavePower()) then
				huds("体力已用完")
				isHavePower=0;
				mSleep(500)
				return;
			else
--				t["IGG1"].openIGGApp();
--				if t["IGG1"].isIGG() then
--					运行IGG修改器();
--				end
			
				runCount=runCount+1;
				showMessage="第"..runCount.."次自动刷图";
				huds(showMessage.."中..");
				
				if(jiangliLevel1==5) then--随机
					index1=math.random(1,4);
				else
					index1=jiangliLevel1;
				end
				if(jiangliLevel2==5) then--随机
					index2=math.random(1,4);
				else
					index2=jiangliLevel2;
				end
			end
		elseif t["刷图"].isSelectPrize() then--选择奖励
			t["刷图"].selectPrizeFast();
			mSleep(sleeptime)
		elseif isHavePower == 1 and t.closePopup() then
			mSleep(150)
		elseif t["刷图"].isFightIng() then--isCheckAutoFight==0 and
			mSleep(2000)
		elseif t.closePopup() then
			mSleep(500)
--		elseif t["IGG1"].isIGG() then
--			运行IGG修改器();
		else
			mSleep(150);
		end
	end
end

function 自动加速刷图()
	isHavePower=1;
	runCount=0;
	showMessage="";
	mSleep(500)
	while true do
		if t.isLoading() then
			--sysLog("isLoading");
			mSleep(1000);
		elseif t["刷图"].IsDead() then
			t["刷图"].fuHuo();
		elseif t["主界面"].isFind() then
			--sysLog("主界面isFind");
			if(isHavePower==0) then
				--sysLog("No Power")
				return;
			else
				if(runCount~=0) then
					huds(showMessage.."完成");
				end
				t["主界面"].openMap();
			end
			mSleep(500);
		elseif t["地图"].isFind() then
			--sysLog("地图isFind");
			if(isHavePower==0) then
				t["地图"].closeMap();
			else
				t["地图"].goGuanKa();--移动到地图
				mSleep(500)
			end
		elseif t["刷图"].isSelectGuanKa() then--选择地图界面
			--sysLog("isFindChange");
			if(isHavePower==0) then
				t.back();
			else
				t["刷图"].selectGuanKa();
			end
			mSleep(150);
		elseif t["刷图"].isSelectGuanKaLevel() then--选择刷图等级
			--sysLog("isFindLevel");
			if(isHavePower==0) then
				t.back();
			else
				t["刷图"].selectGuanKaLevelAndStart();
				if(not t.IsHavePower()) then
					huds("体力已用完")
					isHavePower=0;
					mSleep(500)
				else
					t["IGG1"].openIGGApp();
					if t["IGG1"].isIGG() then
						运行IGG修改器();
					end
					
					runCount=runCount+1;
					if(userCount ~= 0) then
						showMessage="第"..userCount.."角色 第"..runCount.."次自动刷图";
					else
						showMessage="第"..runCount.."次自动刷图";
					end
					huds(showMessage.."中..");
					
					if(jiangliLevel1==5) then--随机
						index1=math.random(1,4);
					else
						index1=jiangliLevel1;
					end
					if(jiangliLevel2==5) then--随机
						index2=math.random(1,4);
					else
						index2=jiangliLevel2;
					end
				end
			end
			mSleep(150);
		elseif t["刷图"].isSelectPrize() then--选择奖励
			--sysLog("isSelectPrize");
			t["刷图"].selectPrizeFast();
			mSleep(3000)
			mSleep(sleeptime)
			--elseif t.IsHavePower() == false then
			--toast("无体力")
			--isHavePower=0;
			--mSleep(500)
		elseif isHavePower == 1 and t.closePopup() then
			mSleep(150)
		elseif t["IGG1"].isIGG() then
			运行IGG修改器();
		else
			--t.back();
			mSleep(150);
		end
	end
	
end

运行IGG修改器=function()
	t["IGG1"].close();
	t["IGG1"].clear();
	t["IGG1"].number();
	t["IGG1"].search(number1);
	t["IGG1"].open();
	t["IGG1"].nearby();
	t["IGG1"].search(number2);
	t["IGG1"].batch();
	t["IGG1"].search(number3);
	t["IGG1"].backGame();
end

--setScreenScale(750,1334)
ret,results = ui:show()  
if ret == 0 then lua_exit() end

shuatuLevel=tonumber(results["shuatunandu"])+1;--刷图等级
jiangliLevel1=tonumber(results["tongguanjiangli"])+1;--奖励1
jiangliLevel2=tonumber(results["huangjinkapai"])+1;--奖励2
guanka=tonumber(results["guankaditu"])+1;--关卡信息
if(results["sleeptime"]~="") then
	sleeptime=tonumber(results["sleeptime"]) * 1000;
end

number1=results["number1"];
number2=results["number2"];--奖励1
--number3=results["number3"];--奖励2

if(guanka>=37 and guanka<=42) then
	每日地下城();
	lockDevice();
	lua_exit();
else
	自动加速刷图();
	lockDevice();
	lua_exit();
end
=======

require "public";
local t = require "540";
require "init";



start=function()
	
	--ret,results=showUI("ui.json");
	
	
	
	--	math.randomseed(tostring(os.time()):reverse():sub(1, 7))  --设置随机数种子
	--	huds("启动中..");
	--	mSleep(500);
	--	huds("运行过程中请勿乱点..");
	--	mSleep(500);
	--	shuatuLevel=tonumber(results["shuatunandu"])+1;--刷图等级
	--	jiangliLevel1=tonumber(results["tongguanjiangli"])+1;--奖励1
	--	jiangliLevel2=tonumber(results["huangjinkapai"])+1;--奖励2
	--	guanka=tonumber(results["guankaditu"])+1;--关卡信息
	--	jueseindex=results["juesexuanze"];--角色信息
	--	if(results["sleeptime"]~="") then
	--		sleeptime=tonumber(results["sleeptime"]) * 1000;
	--	end
	
	--	if(results["fighttime"]~="") then
	--		fighttime=tonumber(results["fighttime"]) * 1000 * 60;
	--	end
	
end

--start();


if t["角色列表"].isUserList() then
	huds("123123");
end
mSleep(1000)

>>>>>>> dba9f7df9f39002467aa97c39b91e7cf9a23d1ba
