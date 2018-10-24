-----------------------------------------------------------------------------------------
-- Title: Buttons in Lua
-- Name: Ms Raffin
-- Course: ICS2O/3C
-- This program does something when I click on the button.
-----------------------------------------------------------------------------------------


-- hide status bar
display.setStatusBar(display.HiddenStatusBar)

-- set background colour
display.setDefault ("background", 153/255, 204/255, 255/255)


local popSound 
local popSound = audio.loadSound( "Sounds/PopSound.wav" ) -- Setting a variable to an mp3 file
local popSoundChannel


-- create blue button, set its position and make it visible
local blueButton = display.newImageRect("Images/Fast Button Inactive@2x.png",198, 96)
blueButton.x = display.contentWidth/2
blueButton.y = display.contentHeight/2
blueButton.isVisible = true

-- create red button, set its position and make it invisible
local redButton = display.newImageRect("Images/Fast Button Active@2x.png", 198, 96)
redButton.x = display.contentWidth/2
redButton.y = display.contentHeight/2
redButton.isVisible = false

-- create text object, set its position and make it invisible
local textObject = display.newText ("Clicked!", 0, 0, nil, 50)
textObject.x = display.contentWidth/2
textObject.y = display.contentHeight/3
textObject:setTextColor (1, 1, 0)
textObject.isVisible = false

-- create pikachu, set its position and make it invisible
local pikachu = display.newImageRect("Images/Pikachu.png", 300, 170)
pikachu.x = display.contentWidth/2
pikachu.y = display.contentHeight/3


-- Function: BlueButtonListener
-- Input: touch listener
-- Output: none
-- Description: when blue button is clicked, it will make the text appear with the red button.
-- and make the blue button disappear
local function BlueButtonListener(touch)
	if (touch.phase == "began") then
		blueButton.isVisible = false
		redButton.isVisible = true
		textObject.isVisible = true
		pikachu.isVisible = false
		popSoundChannel = audio.play(popSound)

	end

	if (touch.phase == "ended") then
	  blueButton.isVisible = true
	  redButton.isVisible = false
	  textObject.isVisible = false
	  pikachu = false
    end
end

-- Function: BlueButtonListener
-- Input: touch listener
-- Output: none
-- Description: when blue button is clicked, it will make the text appear with the red button.
-- and make the blue button disappear
local function BlueButtonListener(touch)
	if (touch.phase == "ended") then
	  blueButton.isVisible = true
	  redButton.isVisible = false
	  textObject.isVisible = false
	  pikachu = true 
    end
end



-- add the respective listeners to each object
blueButton:addEventListener("touch", BlueButtonListener)
