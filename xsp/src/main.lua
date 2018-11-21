
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

