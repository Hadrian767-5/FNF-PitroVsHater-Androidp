function onUpdate(elapsed)

    local songPos = getSongPosition() -- pra pegar a posição atual da música
    local currentBeat = (songPos / 1000) * (bpm / 200) -- pra pegar o beat atual, tipo curBeat só que é uma variável lua

    if curStep >= 640 and curStep < 1152 then
	
		for i = 0, 7 do -- toda as notas
        -- e começa o tween.
        noteTweenY("Wave" .. i, i, defaultPlayerStrumY0 + 20 * math.cos((currentBeat * 2 + i * 1) * math.pi), 0.000001)
		--SLK essa merda ta muito foda valeu ai BEastlyGhost beastly
		end
		
	else
		for i = 0, 7 do
		noteTweenY("Wave" .. i, i, defaultPlayerStrumY0 + 0 * math.cos((currentBeat * 2 + i * 0) * math.pi), 1)
		end
		
	end
	
end