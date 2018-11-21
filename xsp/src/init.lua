local _fsw,_fsh = getScreenSize();
function getCurrentDevice()
	--9:16 同iphone 5
	if  (_fsw == 720 and _fsh == 1280) or (_fsw == 1080 and _fsh == 1920) or (_fsw == 1440 and _fsh == 2560)then
		return 5
	end
	
	if  (_fsw == 750 and _fsh == 1334)  then --6
		return 5
	end
	
	if  (_fsw == 1242 and _fsh == 2208)  then--6p
		return 5
	end
	if  (_fsw == 1125 and _fsh == 2001)  then  -- 6p 放大
		return 5
	end
	if  (_fsw == 640 and _fsh == 1136)  then   --- 5s
		return 5
	end
	
	if  (_fsw == 1536 and _fsh == 2048)  then------ ipad 3,4,air, 高清mini
		return 1
	end
	
	return -1;
end

function inition()	--初始化
	_device = getCurrentDevice();
	sysLog(_device)
	if _device == 5 then
		-- toast("强制")
		setScreenScale(640,1136);
		mSleep(100);
		init("0", 1); --以当前应用 Home 键在右边初始化touchDown(1, 100, 100)
		huds("分辨率:".._fsw..",".._fsh)	;	--展示分辨率
		mSleep(500);
		ret,results = showUI(适配UI("ui1.json",1080));
		--ret,results = showUI("ui.json")
		if ret==0 then
			toast("您选择了取消，脚本停止运行")
			mSleep(1000);
			lua_exit()
		end
	else
		dialog("不支持此机型,脚本退出", 5)
		lua_exit()
	end
	
	
end

inition();