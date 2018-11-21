---------------------------
--初始化库
--------------------------
init("0", 1); --以当前应用 Home 键在右边初始化
math.randomseed(tostring(os.time()):reverse():sub(1, 6))  --设置随机数种子
width,height=getScreenSize()--获取当前分辨率
id = createHUD();
gebuLinLevel=1;--哥布林难度
guanka=24--24;
shuatuLevel=4;--刷图难度
jiangliLevel1=5;--奖励1
jiangliLevel2=5;--奖励2
isHavePower=1;--是否有体力
isCloseWindow=1;--是否第一次开始 用于判断弹窗
runCount=0;--运行次数
userCount=0;--角色个数
index1=1;--选择奖励1
index2=1;--选择奖励2
sleeptime=2000;--休息时间
jueseindex="";--角色序号
gongnengxuanze="";--功能选择
userList="";--需要自动角色序号
showMessage="";--显示信息
autofuhuo=0;--是否自动复活
isCheckAutoFight=0;