-- 
-- Author: Shane
-- Date: 2016-07-31 13:01:32
--
import(".View")
Panel = class("PanelInner",function()  
	return display.newLayer()
end)

local layerName
function Panel:ctor(package,layerName)
   self.layerName = layerName
   require(package.."."..layerName)
   self.objects = {}
   self:readConfig()
end

function Panel:readConfig()
	local panelName = self.layerName.."Data"
    local spriteList,txtList,scroll_info,batch = loadstring("return "..panelName.."()")()
    self:initSprite(spriteList)
end

function Panel:initBg()
	-- body
end

function Panel:initSprite(config)
	dump(config,"=====config======")
	for k,v in pairs(config) do
		local sp = display.newSprite(v.pic)
		sp.name = v.name
		self:addChild(sp,v.zorder or 0)
		sp:setPosition(display.cx+v.offset.x,display.cy+v.offset.y)
		self.objects[v.name] = sp
		print("======33333333333=====",display.width,display.height)
		print("=======44444444444====",sp:getContentSize().width,sp:getContentSize().height)
	end
end

return Panel