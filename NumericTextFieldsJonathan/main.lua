-----------------------------------------------------------------------------------------
-- Title: Numeric Textfield
-- Name: Jonathan Kene
-- Course ICS2O/3C
-- This program displays a math question and asks the user to answer in a numeric textfields\.
-- terminal.
-----------------------------------------------------------------------------------------

-- hide the status bar
display.setStatusBar(display.HiddenStatusBar)

-- sets the background colour
display.setDefault("background", 124/255, 249/255, 199/255)

local questionObject
local questionObject2
local correctObject
local incorrectObject
local numericField
local randomNumber1
local randomNumber2
local userAnswer
local correctAnswer
local pointsTextObject
local numberPoints = 0
local randomOperator




-- Correct sound
local correctSound = audio.loadSound( "Sounds/correctSound.mp3" ) -- Setting a variable to an mp3 file
local correctSoundChannel
local wrongSound = audio.loadSound( "Sounds/wrongSound.mp3" ) -- Setting a variable to an mp3 file
local correctSoundChannel
local wrongSoundChannel


 local function AskQuestion()
	-- generate 2 random numbers between a max. and a min. number
	randomOperator = math.random(1, 3)
	randomNumber1 = math.random(0, 12)
	randomNumber2 = math.random(0, 12)

	if (randomOperator == 1) then
		correctAnswer = randomNumber1 + randomNumber2


    	-- create question in the text object
    	questionObject.text = randomNumber1 .. " + " .. randomNumber2 .. " = "

	elseif (randomOperator == 2) then
		correctAnswer = randomNumber1 - randomNumber2


    	-- create question in the text object
    	questionObject.text = randomNumber1 .. " - " .. randomNumber2 .. " = "
   
 	
     elseif (randomOperator == 3) then
 		correctAnswer = randomNumber1 * randomNumber2


    	-- create question in the text object
    	questionObject.text = randomNumber1 .. " * " .. randomNumber2 .. " = "
    end
end


local function hideCorrect()
	correctObject.isVisible = false
	AskQuestion()
end 

local function hideIncorrect()
	incorrectObject.isVisible = false
	AskQuestion()
end

local function NumericFieldListener(event)

	-- User begins editing "numericField"
	if ( event.phase == "began" ) then

		-- clear text field
		event.target.text = ""

	elseif event.phase == "submitted" then

		-- when the answer is submitted (enter key is pressed) set user input to user's answer
		userAnswer = tonumber(event.target.text)

		-- if the user answer and the correct answer are the same:
		if (userAnswer == correctAnswer) then
			correctObject.isVisible = true
			incorrectObject.isVisible = false
			correctSoundChannel = audio.play(correctSound)
			timer.performWithDelay(2000, hideCorrect)
			numberPoints = numberPoints + 1
			 
			 -- create increasing points in the text object
			 pointsTextObject.text = "Points = ".. numberPoints
	    else
	    	correctObject.isVisible = false
	    	incorrectObject.isVisible = true
	    	wrongSoundChannel = audio.play(wrongSound)
	    	timer.performWithDelay(2000, hideIncorrect)
	    end

	    	event.target.text = ""

	end
end

-- create points box adn make it visible
pointsTextObject = display.newText( "Points = ".. numberPoints, 800, 385, nil, 50 )
pointsTextObject:setTextColor(155/255, 42/255, 198/255)


-- displays a question and sets the colour
questionObject = display.newText( "", display.contentWidth/3, display.contentHeight/2, nil, 50 )
questionObject:setTextColor(155/255, 42/255, 198/255)

-- create the correct text object and make it invisble
correctObject = display.newText( "Correct!", display.contentWidth/2, display.contentHeight*2/3, nil, 50 )
correctObject:setTextColor(155/255, 42/255, 198/255)
correctObject.isVisible = false

-- create the incorrect text object and make it invisble
incorrectObject = display.newText( "Incorrect!", display.contentWidth/2, display.contentHeight*2/3, nil, 50 )
incorrectObject:setTextColor(155/255, 42/255, 198/255)
incorrectObject.isVisible = false

-- Create numeric field
numericField = native.newTextField( 520, 380, 150, 90 )
numericField.inputType = "number"

-- add the event listener for the numeric field
numericField:addEventListener( "userInput", NumericFieldListener )

-- call the function to ask the question
AskQuestion()