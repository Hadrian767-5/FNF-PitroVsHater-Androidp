function opponentNoteHit()
    health = getProperty('health')
    if getProperty('health') > 1 then
        setProperty('health', health -0.05);
    end
end