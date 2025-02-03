local allowCountdown = false
function onStartCountdown()
	-- Block the first countdown and start a timer of 0.8 seconds to play the dialogue
	if not allowCountdown and isStoryMode and not seenCutscene then
		setProperty('inCutscene', true);
		runTimer('startDialogue', 0.8);
		allowCountdown = true;
		return Function_Stop;
	end
	return Function_Continue;
end

function onTimerCompleted(tag, loops, loopsLeft)
	if tag == 'startDialogue' then -- Timer completed, play dialogue
		startDialogue('dialogue', 'breakfast');
	end
end

-- Dialogue (When a dialogue is finished, it calls startCountdown again)
function onNextDialogue(count)
	-- triggered when the next dialogue line starts, 'line' starts with 1
end

function onSkipDialogue(count)
	-- triggered when you press Enter and skip a dialogue line that was still being typed, dialogue line starts with 1
end

function onUpdate(elapsed)
    local songPos = getSongPosition() -- pra pegar a posição atual da música
    local currentBeat = (songPos / 1000) * (bpm / 200) -- pra pegar o beat atual, tipo curBeat só que é uma variável lua

    for i = 0, 7 do -- toda as notas
        -- e começa o tween.
        noteTweenY("Wave" .. i, i, defaultPlayerStrumY0 + 20 * math.cos((currentBeat + i * 8.25) * math.pi), 0.000001)
        -- no beat atual, faz um noteTweenY (faz as notas se moverem pra cima e baixo), "Wave" é o nome do efeito
        -- "i, i" são as notas, "defaultPlayerStrumY0" pega o Y das notas e dai aumenta pra 20, depois começa um calculo constante do beat atual
        -- 8.25 é o valor ideal, mas se você quiser mexer um pouco com como as notas pulam fica a vontade
        -- não recomendo mexer que tem depois do math.pi, mas é simplesmente a velocidade
        -- menos é mais aqui.
    end
	
	if mustHitSection == false then
		
		setProperty('defaultCamZoom',0.666) --0.666
		
		else
		
		setProperty('defaultCamZoom',0.85) --0.85
		
	end
	
end

