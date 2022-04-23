ESX = nil

Citizen.CreateThread(function()
    while ESX == nil do
      TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)
      Citizen.Wait(200)
    end
  end)  

RegisterNetEvent('TiroteoAlerta')
AddEventHandler('TiroteoAlerta', function()
    OpenMenu()
end)

function OpenMenu()
  ESX.UI.Menu.CloseAll()

  ESX.UI.Menu.Open('default', GetCurrentResourceName(), 'tiroteo', {
    title    = ('ENTORNOS DE TIROTEOS'),
    align    = 'top-right',
    elements = {
      {label = ('TIROTEO PISTOLAS'),     value = 't1'},
      {label = ('TIROTEO SUBFUSILES'),     value = 't2'},
      {label = ('TIROTEO FUSILES'), value = 't3'},
      {label = ('TIROTEO ESCOPETA'), value = 't4'},
      {label = ('TIROTEO MACHINEGUN'), value = 't5'},
      {label = ('TIROTEO CARABINA'), value = 't6'},
      {label = ('TIROTEO GRANADA'), value = 't7'},
  }}, function(data, menu)
    if data.current.value == 't1' then
        ExecuteCommand('entorno Acabo de ver unos sujetos con pistolas disparar a otros sujetos, ayuda!')

    elseif data.current.value == 't2' then
      ExecuteCommand('entorno Acabo de ver unos sujetos con subfusiles disparar a otros sujetos, ayuda!')

    elseif data.current.value == 't3' then
        ExecuteCommand('entorno Acabo de ver unos sujetos con fusiles disparar a otros sujetos, ayuda!')
     
    elseif data.current.value == 't4' then
        ExecuteCommand('entorno Acabo de ver unos sujetos con escopetas disparar a otros sujetos, ayuda!')

    elseif data.current.value == 't5' then
        ExecuteCommand('entorno Acabo de ver unos sujetos con machinengun disparar a otros sujetos, ayuda!')

    elseif data.current.value == 't6' then
        ExecuteCommand('entorno Acabo de ver unos sujetos con carabina disparar a otros sujetos, ayuda!')

    elseif data.current.value == 't7' then
        ExecuteCommand('entorno Acabo de ver unos sujetos con granada disparar a otros sujetos, ayuda!')

    end

    menu.close()
  end, function(data, menu)
    menu.close()
  end)
end