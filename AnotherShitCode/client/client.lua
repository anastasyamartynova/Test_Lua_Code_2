CreateThread(function()
    local model = joaat('A_C_Beaver_01')
    RequestMidel(model)
    while not HasModelLoaded(model) do
        Wait(100)
    end


    for k, v in pairs(Config.PedLocations) do
        local createdPed = CreatePed(model, v.x, v.y, v.z, false, false)
        Citizen.InvokeNative(0x283978A15512B2FE, createdPed)
        SetPedScale(createdPed, 5.0)
    end
end)