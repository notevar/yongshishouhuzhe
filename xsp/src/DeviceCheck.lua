
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