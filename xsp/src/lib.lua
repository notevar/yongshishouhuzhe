---------------------------
--基础函数库
--------------------------
function getCurrentDevice()
	----- 安卓9:16   同iphone 5
	if  (width == 720 and height == 1280) or (width == 1080 and height == 1920) or (width == 1440 and height == 2560)then
		return 5
	end
	
	if  (width == 750 and height == 1334)  then --6
		return 5
	end
	
	
	if  (width == 1242 and height == 2208)  then--6p
		return 5
	end
	if  (width == 1125 and height == 2001)  then  -- 6p 放大
		return 5
	end
	if  (width == 640 and height == 1136)  then   --- 5s
		return 5
	end
	
	if  (width == 1536 and height == 2048)  then------ ipad 3,4,air, 高清mini
		return 1
	end
	
	return -1;
end

function F多点比色(array,s) --多点比色
	s = s or 95
	s = math.floor(0xff*(100-s)*0.01)
	for var = 1, #array do
		local lr,lg,lb = getColorRGB(array[var][1],array[var][2])
		local rgb = array[var][3]
		
		local r = math.floor(rgb/0x10000)
		local g = math.floor(rgb%0x10000/0x100)
		local b = math.floor(rgb%0x100)
		if math.abs(lr-r) > s or math.abs(lg-g) > s or math.abs(lb-b) > s then
			return false
		end
	end
	return true
end

function F多点找色(t)  --多点找色
	return findMultiColorInRegionFuzzy(t[1],t[2], t[3], t[4], t[5], t[6], t[7])
end

function F获取当前页面() --获取当前页面函数
	local res = '未知页面'
	keepScreen(true)
	if needScale then
		setScreenScale(_w,_h,0)
	end
	for _, v in pairs(界面列表) do
		if F多点比色(v[2]) then
			res = v[1]  --界面名称
			break
		end
	end
	if needScale then
		resetScreenScale()
	end
	keepScreen(false)
	sysLog(res)
	return res
end

function F点击页面元素(page,unit) --点击元素
	sysLog('点击模块当前页面：'..page.n)
	sysLog('点击模块当前元素：'..unit)
	local x,y
	local res=false
	keepScreen(true)
	if needScale then --缩放
		setScreenScale(_w,_h,0)
	end
	for _ , v in pairs(page) do
		if v.w=='CC' then
			  --sysLog('循环K：'..v[1])
			if F多点比色(v.c) and v[1]==unit then
				  sysLog('当前点击：'..v[1])
				F点击(v.tap[1],v.tap[2])
				res = true
				break
			end
		elseif v.w=='MSC' then
			x,y=F多点找色(v.c)
			sysLog('找:'..v[1]..'x='..x..'y='..y)
			if x>-1 and y>-1 and v[1]==unit then
				  F点击(x,y)
				res=true
				break
			end
		end
	end
	if needScale then
		--setScreenScale(_w,_h,0)
		resetScreenScale()
	end
	keepScreen(false)
	return res
end

function F运行(t) --运行任务函数
	B记录时间=mTime()
	while true do
		  if mTime()-B记录时间>B超时时间 then
			break
		end
		  B当前页面=F获取当前页面() --获取当前页面
		for k,v in pairs(t) do
			  --sysLog(v[1].n)
			if B当前页面==v[1].n then
				for _,_v in pairs(v[2]) do
					  sysLog('传入点击元素：'.._v)
					    if F点击页面元素(v[1],_v) then
						B记录时间=mTime()
						  break
					end
				end
			end
		end
		mSleep(1000)
	end
end

--公共库
function cmpColorEx(array,s)
	s = s or 90
	s = math.floor(0xff*(100-s)*0.01)
	for var = 1, #array do
		local lr,lg,lb = getColorRGB(array[var][1],array[var][2])
		
		
		local rgb = array[var][3]
		
		local r = math.floor(rgb/0x10000)
		local g = math.floor(rgb%0x10000/0x100)
		local b = math.floor(rgb%0x100)
		if math.abs(lr-r) > s or math.abs(lg-g) > s or math.abs(lb-b) > s then
			return false
		end
	end
	return true
end

function tap(x, y)
	local clickId = createHUD();
	local index = math.random(1,5)
	touchDown(index,x, y)
	showHUD(clickId,"",1,"0xffFF0000","click.png",0,x,y,48,48)
	mSleep(150)                                --某些情况可能要增大延迟
	touchUp(index, x, y)
	hideHUD(clickId);
	mSleep(100)
end


function swip(x1,y1,x2,y2,times)
	times = times or 500;
	touchDown(1, x1, y1)
	mSleep(50)
	touchMove(1, x2, y2)
	mSleep(times)
	touchUp(1, x2, y2)
	mSleep(150);
end

function huds(text,size,color)
	size = size or 22;
	if(type(size) ~="number") then
		size = 22;
	end
	color = color or "0xffff0000";
	showHUD(id,text,size,color,"",0,200,0,300,32)      --显示HUD内容
	mSleep(150)
end

function hideHuds()
	hideHUD(id);
end


function Split(szFullString, szSeparator)  
	local nFindStartIndex = 1  
	local nSplitIndex = 1  
	local nSplitArray = {}  
	while true do  
		local nFindLastIndex = string.find(szFullString, szSeparator, nFindStartIndex)  
		if not nFindLastIndex then  
			nSplitArray[nSplitIndex] = string.sub(szFullString, nFindStartIndex, string.len(szFullString))  
			break  
		end  
		nSplitArray[nSplitIndex] = string.sub(szFullString, nFindStartIndex, nFindLastIndex - 1)  
		nFindStartIndex = nFindLastIndex + string.len(szSeparator)  
		nSplitIndex = nSplitIndex + 1  
	end  
	return nSplitArray  
end  
