Citizen.CreateThread(function()


	ElGordoBlip = AddBlipForCoord(Config.BoatSpawnLocation.ElGordo)
	SetBlipSprite(ElGordoBlip, 410)
	SetBlipDisplay(ElGordoBlip, 4)
	SetBlipScale(ElGordoBlip, 0.7)
	SetBlipColour(ElGordoBlip, 74)
    SetBlipAsShortRange(ElGordoBlip, true)
    BeginTextCommandSetBlipName("STRING")
    AddTextComponentSubstringPlayerName("Fishing")
    EndTextCommandSetBlipName(ElGordoBlip)

	ActDamBlip = AddBlipForCoord(Config.BoatSpawnLocation.ActDam)
	SetBlipSprite(ActDamBlip, 410)
	SetBlipDisplay(ActDamBlip, 4)
	SetBlipScale(ActDamBlip, 0.7)
	SetBlipColour(ActDamBlip, 74)
    SetBlipAsShortRange(ActDamBlip, true)
    BeginTextCommandSetBlipName("STRING")
    AddTextComponentSubstringPlayerName("Fishing")
    EndTextCommandSetBlipName(ActDamBlip)


	PearlsSellsBlip = AddBlipForCoord(Config.PearlsSellsBlip)
	SetBlipSprite(PearlsSellsBlip, 68)
	SetBlipDisplay(PearlsSellsBlip, 4)
	SetBlipScale(PearlsSellsBlip, 0.7)
	SetBlipColour(PearlsSellsBlip, 74)
    SetBlipAsShortRange(PearlsSellsBlip, true)
    BeginTextCommandSetBlipName("STRING")
    AddTextComponentSubstringPlayerName("Fish Sells")
    EndTextCommandSetBlipName(PearlsSellsBlip)
end)
