--
-- Author: Shane
-- Date: 2016-07-19 20:35:11
--
local Panel = import("app.ui.Panel")
local UIEditor = class("UIEditor", function()
    return display.newScene("UIEditor")
end)
local PACKAGE = "app.ui.view"
local LAYER_NAME = "TestUI"
local BG = "UILogin/cc.jpg"

function UIEditor:ctor()
    self.panel = Panel.new(PACKAGE,LAYER_NAME)
    self:addChild(self.panel)
    self.objects = self.panel.objects

    self.panel:setTouchEnabled(true)
    self.panel:addNodeEventListener(cc.NODE_TOUCH_EVENT,handler(self,self.onTouch))
    -- self:initUI()
end

function UIEditor:initUI()
	local d = {
        '←','→','↑','↓'
    }
    local button_pos = {}
    local top = display.top-100
    button_pos[1] = {50,top}
    button_pos[2] = {170,top}
    button_pos[3] = {110,top+50}
    button_pos[4] = {110,top-50}
    
    local i = 1
    for k,v in ipairs(d) do 
        layer:addChild(createMenuItem("UIButton/btn_2.png","UIButton/btn_1.png",button_pos[i][1],button_pos[i][2],function() tomove(k) end),1024)
        local direct = CreateLabel(v,nil,20,ccc3(255,0,0))
        direct:setPosition(button_pos[i][1],button_pos[i][2])
        layer:addChild(direct,1024)
        i = i + 1
    end
end

local chosenSprite
local preChosenSprite 
local touchBeginPoint = nil  
function UIEditor:onTouch(event)
	if event.name == "began" then
		for k,v in pairs(self.objects) do
			local touchInSprite = v:getCascadeBoundingBox():containsPoint(cc.p(event.x,event.y))
			print(k,v,touchInSprite)
			if touchInSprite then
				chosenSprite = v
				touchBeginPoint = {x=event.x, y=event.y}
			end
		end
		if chosenSprite then
		   chosenSprite:setColor(cc.c3b(0,255,0)) 	
		end
		if preChosenSprite then 
		   if preChosenSprite ~= chosenSprite then
              preChosenSprite:setColor(cc.c3b(255,255,255))
              preChosenSprite = chosenSprite
           end
		else
			preChosenSprite = chosenSprite
		end	
	elseif event.name == "moved" then
		if touchBeginPoint then
		   local cx,cy = chosenSprite:getPosition()
		   chosenSprite:setPosition(cx + event.x - touchBeginPoint.x,
                                    cy + event.y - touchBeginPoint.y)
           touchBeginPoint = {x=event.x, y=event.y} 
		end
	else
		touchBeginPoint = nil
	end
	return true
end

function UIEditor:onSave()
	-- body
end

function UIEditor:onEnter()
end

function UIEditor:onExit()
end

return UIEditor
