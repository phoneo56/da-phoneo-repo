function onCreate()
	for i = 0, getProperty('unspawnNotes.length')-1 do
		if getPropertyFromGroup('unspawnNotes', i, 'noteType') == 'phoneosword' then
			setPropertyFromGroup('unspawnNotes', i, 'texture', 'mechanics/phoneossword_assets')
			setPropertyFromGroup('unspawnNotes', i, 'noteSplashHue', 0)
			setPropertyFromGroup('unspawnNotes', i, 'noteSplashSat', -20);
			setPropertyFromGroup('unspawnNotes', i, 'noteSplashBrt', 1);

			if getPropertyFromGroup('unspawnNotes', i, 'mustPress') then
				setPropertyFromGroup('unspawnNotes', i, 'ignoreNote', false)
			end
		end
	end
end

function goodNoteHit(id, direction, noteType, isSustainNote)
	if noteType == 'phoneosword' then
		cameraShake('camGame', 0.01, 0.2)
        characterPlayAnim("dad", "attack", "true")
    end
end

function noteMiss(id, direction, noteType, isSustainNote)
	if noteType == 'phoneosword' then
		setProperty('health', getProperty('health')-0.5)
		playSound('bruh', 1);
        characterPlayAnim("dad", "attack", "true")
	end
end