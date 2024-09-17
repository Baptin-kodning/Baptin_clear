-- Register the /clear command
RegisterCommand("clear", function()
    -- Clear the player's chat
    TriggerEvent('chat:clear')
end, false)

-- Event to clear the chat
RegisterNetEvent('chat:clear')
AddEventHandler('chat:clear', function()
    -- Use NUI message to clear the chat on the client-side
    TriggerEvent('chat:clear')
    TriggerEvent('chatMessage', "", {255, 255, 255}, "^1Chat cleared!")
end)
