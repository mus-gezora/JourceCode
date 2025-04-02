
--How makeLuaSprite works:
--makeLuaSprite(<SPRITE VARIABLE>, <SPRITE IMAGE FILE NAME>, <X>, <Y>);
--"Sprite Variable" is how you refer to the sprite you just spawned in other methods like "setScrollFactor" and "scaleObject" for example

--so for example, i made the sprites "stagelight_left" and "stagelight_right", i can use "scaleObject('stagelight_left', 1.1, 1.1)"
--to adjust the scale of specifically the one stage light on left instead of both of them

function onCreate()
	-- background shit
	makeLuaSprite('stageback', 'joebg-old', -600, -300);
	setScrollFactor('stageback', 0.9, 0.9);
	scaleObject('stageback', 5, 5);

	-- sprites that only load if Low Quality is turned off
	if not lowQuality then
		makeLuaSprite('tree1', 'joetree-old', 200, 500);
		setScrollFactor('tree1', 0.9, 0.9);
		scaleObject('tree1', 1, 1);
		
		makeLuaSprite('tree2', 'joetree-old', 1225, 500);
		setScrollFactor('tree2', 0.9, 0.9);
		scaleObject('tree2', 1, 1);

		makeLuaSprite('house', 'joehouse-old', -500, 525);
		setScrollFactor('house', 0.9, 0.9);
		scaleObject('house', 1, 1);

	end

	addLuaSprite('stageback', false);
	addLuaSprite('tree1', false);
	addLuaSprite('tree2', false);
	addLuaSprite('house', false);
end