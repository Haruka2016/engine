-- 一些UI控件
-- Author: Shane
-- Date: 2016-07-31 12:58:54
local ViewButton = class("ViewButton",function() return display.newNode() end)
function ViewButton:ctor(params)
	local btn = cc.ui.UIPushButton.new(params.btn)
	
end
