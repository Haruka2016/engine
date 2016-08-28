function TestUIData()
	local spriteList={
		{pic='PanelSetting/PanelSetting_Panelbg.png',offset={y=0,x=0,},comment='背景',name='bg',hide=0,},
		{pic='PanelSetting/PanelSetting_InnerPanelbg.png',offset={y=0,x=0,},comment='背景',name='ddbg',hide=0,},
	}
	local txtList={
	}
	return spriteList,txtList
end


-- function TestUIData()
-- 	local spriteList={
-- 		{pic='UICommon/bg_450_322.png',offset={y=4,x=-2,},comment='背景',name='bg',hide=0,},
-- 		{pic='UICommon/title_164_61.png',offset={y=133,x=-3,},comment='标题背景',name='bg',hide=0,},
-- 		{pic='UISetting/title.png',offset={y=133,x=-3,},comment='标题',name='bg',hide=0,},
-- 		{pic='UIButton/button_32_31_normal.png',offset={y=77,x=-124,},comment='音乐按钮',name='music_btn',hide=0,},
-- 		{pic='UISetting/music.png',offset={y=74,x=-75,},comment='音乐',name='music',hide=0,},
-- 		{pic='UIButton/button_32_31_normal.png',offset={y=75,x=72,},comment='音效按钮',name='sound_btn',hide=0,},
-- 		{pic='UISetting/sound.png',offset={y=73,x=119,},comment='音效',name='sound',hide=0,},
-- 		{pic='',offset={y=139,x=180,},comment='关闭',name='close',btn={d='',p='',n='UIButton/close_44_45_btn.png',},},
-- 		{pic='UISetting/notice.png',offset={y=11,x=-1,},comment='最新公告',name='notice',btn={d='',p='',n='UIButton/blue_190_47_nor.png',},},
-- 		{pic='UISetting/gift.png',offset={y=-44,x=-2,},comment='礼包兑换',name='gift',btn={d='',p='',n='UIButton/blue_190_47_nor.png',},},
-- 		{pic='UISetting/exit.png',offset={y=-98,x=-2,},comment='退出游戏',name='exit',btn={d='',p='',n='UIButton/blue_190_47_nor.png',},hide=1},
-- 	}
-- 	local txtList={
-- 		{offset={y=-152,x=-137,},txt='充血的棒棒糖',size=14,stroke=1,item=1,name='name',align=0,},
-- 		{offset={y=-153,x=22,},txt='发送时间：6月27日 00:24',size=16,stroke=1,item=1,name='time',align=0,},
-- 		{size=14,offset={y=-189,x=-136,},align=0,dimension={w=230,h=34,},item=1,name='content',txt='盆友，来嘛~让我们干了这杯友谊的酒嘛~',},
-- 	}
-- 	local scroll_info={x=180,item_h=90,y=26,direction=1,item_bg='listItem_bg',grid={line_count=1,},view_w=410,view_h=320,item_w=410,} 
-- 	return spriteList,txtList,scroll_info
-- end