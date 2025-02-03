function onEvent(name, value1, value2)
	if name == 'NoteSpin' then
		noteTweenAngle('A', 0, value2, value1, 'quadOut')
		noteTweenAngle('B', 1, value2, value1, 'quadOut')
		noteTweenAngle('C', 2, value2, value1, 'quadOut')
		noteTweenAngle('D', 3, value2, value1, 'quadOut')
		noteTweenAngle('E', 4, value2, value1, 'quadOut')

		noteTweenAngle('F', 5, value2, value1, 'quadOut')
		noteTweenAngle('J', 6, value2, value1, 'quadOut')
		noteTweenAngle('H', 7, value2, value1, 'quadOut')
		noteTweenAngle('I', 8, value2, value1, 'quadOut')
		if difficulty == 2 then
			noteTweenAngle('J', 9, value2, value1, 'quadOut') --tf is this? shaggy mod LMAO?!
			noteTweenAngle('K', 16, value2, value1, 'quadOut')
		end
	end
end

function onTweenCompleted(tag)
	if tag == 'A' then
		setPropertyFromGroup('opponentStrums', 0, 'angle', 0)
		setPropertyFromGroup('opponentStrums', 1, 'angle', 0)
		setPropertyFromGroup('opponentStrums', 2, 'angle', 0)
		setPropertyFromGroup('opponentStrums', 3, 'angle', 0)
		setPropertyFromGroup('opponentStrums', 4, 'angle', 0)

		setPropertyFromGroup('playerStrums', 0, 'angle', 0)
		setPropertyFromGroup('playerStrums', 1, 'angle', 0)
		setPropertyFromGroup('playerStrums', 2, 'angle', 0)
		setPropertyFromGroup('playerStrums', 3, 'angle', 0)
		setPropertyFromGroup('playerStrums', 4, 'angle', 0)
	end
end