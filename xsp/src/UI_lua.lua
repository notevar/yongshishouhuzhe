ui = require "Gui"
--主ui界面
ui:new(width,heigth)
local p = ui:newPage("功能设置") --另一个页面

p:newLine()
p:addLebel(0.2,1.2,"") 
p:addLebel(8,1.2,"使用前 请开启自动战斗功能;多角色切换刷图请在角色列表界面运行脚本",24,"left","230,46,46") 

p:newLine()
p:addLebel(0.2,1.1,"") 
p:addLebel(2,1.1,"功能选择:") 
p:addCheckBoxGroup(6,1.1,"gongnengxuanze","1@2@3","自动刷图","斗牛","哥布林") 

p:newLine()
p:addLebel(0.2,1.1,"") 
p:addLebel(2,1.1,"哥布林难度:") 
p:addRadioBoxGroup(4,1.1,"gebulinnandu","0","普通  ","冒险  ","勇士  ") 

p:newLine()
p:addLebel(0.2,1.3,"") 
p:addLebel(2,1.3,"自动复活:") 
p:addRadioBoxGroup(2,1.3,"zidongfuhuo","0","关闭","开启")  --单选框

p:newLine()
p:addLebel(0.2,1.5,"") 
p:addLebel(2,1.5,"选择角色:") 
p:addCheckBoxGroup(7,1.5,"juesexuanze","1","1","2","3","4","5","6","7","8")  --编辑框

local p = ui:newPage("刷图设置") --页面标题
p:newLine()  --换行
p:addLebel(0.2,1.5,"") 
p:addLebel(2,1.5,"刷图位置:")   		 --文字标签
p:addComboBox(3.5,1.5,"guankaditu","1","幽寒林地(13-16)","魅影遗迹(20-23)","矿脉外围(21-24)","失落的大陆(22-25)","龙族兵团(23-26)","幽暗监狱(24-27)","玩具的复仇(25-27)","罪恶之地(26-29)","天空之海(27-30)","元素回廊(28-30)","冰火极地(28-31)","光之宫殿(29-32)","幽暗影牢(30-33)","诡变之森(30-35)","安息之地(30-35)","遗迹研究所(32-35)","祖灵部落(32-34)","雪山试炼(32-34)","冰雪猛兽(33-35)","冰霜宫殿(34-36)","女王史卡姬(35-37)","背后之地(36-38)","山脊之路(37-39)","秘密基地(39-41)","邪恶洞窟(41-43)","育母基地(43-45)","魔炎之地(45-47)","邪龙深渊(46-48)","迷雾峡谷(47-49)","亡灵要塞(48-50)","瘟疫之村(49-51)","厄运之地(51-53)","人取桥之战(55-57)","川中岛之战(56-58)","越后之龙(57-59)","群雄争霸(58-60)","远古(遗迹)","远古(牛)","黑暗之巢(牛)","深渊(30)","深渊(50~)","深渊(55~)") --下拉框
p:addComboBox(2,1.5,"shuatunandu","3","普通    ","冒险    ","勇士    ","王者    ")
--p:addComboBox(1.7,1.2,"Difficult","0","普通","困难")

p:newLine()  --换行
p:addLebel(0.2,1.5,"") 
p:addLebel(2,1.5,"通关奖励:")  --文字标签
p:addRadioBoxGroup(6,1.5,"tongguanjiangli","4","1","2","3","4","随机")

p:newLine()
p:addLebel(0.2,1.5,"") 
p:addLebel(2,1.5,"黄金卡牌:") 
p:addRadioBoxGroup(7,1.5,"huangjinkapai","4","1","2","3","4","随机","不选")
--p:addCheckBoxGroup(5,1,"Retire","0@1@2","白皮","蓝皮","紫皮") --多选框

p:newLine()
p:addLebel(0.2,1.5,"") 
p:addLebel(2,1.5,"休息时间:") 
p:addEdit(4,1.5,"sleeptime","")  --编辑框
p:addLebel(0.5,1.5,"秒")