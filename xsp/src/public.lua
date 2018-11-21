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


--对比多色保持
function cmpColorExKeep(array,s)
	s = s or 90
	s = math.floor(0xff*(100-s)*0.01)
	keepScreen(true)
	for var = 1, #array do
		local lr,lg,lb = getColorRGB(array[var][1],array[var][2])
		local rgb = array[var][3]
		
		local r = math.floor(rgb/0x10000)
		local g = math.floor(rgb%0x10000/0x100)
		local b = math.floor(rgb%0x100)
		if math.abs(lr-r) > s or math.abs(lg-g) > s or math.abs(lb-b) > s then
			keepScreen(false)
			return false
		end
	end
	keepScreen(false)
	return true
end

--点击
function tap(x, y)
	math.randomseed(tostring(os.time()):reverse():sub(1, 6))  --设置随机数种子
	local index = math.random(1,5)
	touchDown(index,x, y)
	mSleep(50)                                --某些情况可能要增大延迟
	touchUp(index, x, y)
	mSleep(200)
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

local id = createHUD()     --创建一个HUD
function huds(text,size,color)
	size = size or 22;
	if(type(size) ~="number") then
		size = 22;
	end
	color = color or "0xff00d70a";
	showHUD(id,text,size,color,"",0,200,0,300,32)      --显示HUD内容
	mSleep(150);
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

function 适配UI(ui,width)
  --UI自适应分辨率函数 适用于custom模式
  --作者：滨州IT疯子
  --调用方法 ---------------
  --  ui=适配UI('ui.json',640) 
  --  ret,results=showUI(ui);
  --参数---------------------
  --第一个参数是 json文件 
  --第二个参数是开发分辨率的宽 
  --返回值为改变后的json
  --注意事项 --------------------
  -- ui.json中不能有 // 这种注释
  -- 需要JSON.lua 支持
  --------------------------------
  local content
  local value
  local json=require "JSON"
  local w, h= getScreenSize() --获取设备分辨率
  sf=w/width --当前分辨率/开发分辨率
  local function split(szFullString, szSeparator)  
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
  local function bltb(t) --遍历table修改
    for k,v in pairs(t) do
       if type(v)=='table' then
        bltb(v) --递归调用到所有子table
       else
        if k=='size' then --字体按比例缩放
           t[k]=math.ceil(v*sf) 
        elseif k=='rect' then --位置和大小按比例缩放
          local arr={}
          arr=split(v,',')
          arr[1]=math.ceil(arr[1]*sf)
          arr[2]=math.ceil(arr[2]*sf)
          arr[3]=math.ceil(arr[3]*sf)
          arr[4]=math.ceil(arr[4]*sf)
          t[k]=arr[1]..','..arr[2]..','..arr[3]..','..arr[4]
        end
       end
    end
  end
  content=getUIContent(ui) 
  mSleep(1000)
  value=json:decode(content) 
  value.width=math.ceil(value.width*sf)
  value.height=math.ceil(value.height*sf)
  bltb(value)
  return json:encode(value)
end