-- Only reason i made this is because i see retards making these simple scripts in 300+ lines, waste of time, also i never tested this so might not even work properly
--- YOU WILL NEED RAGEUI FOR THIS

local Locations = {
    [1] = {Name = 'Location1' , x = 1 , y = 1, z = 1}, -- Change name and x,y,z
    [2] = {Name = 'Location1' , x = 1 , y = 1, z = 1},
    [3] = {Name = 'Location1' , x = 1 , y = 1, z = 1},
    [4] = {Name = 'Location1' , x = 1 , y = 1, z = 1},
    [5] = {Name = 'Location1' , x = 1 , y = 1, z = 1},

}





local TeleportLocationsMenu = RageUI.CreateMenu("Teleport Locations", "MAIN MENU", 1420, nil, "root_cause", "shopui_title_dynasty8") --- Last to parameters are just what texture dictionary and file name
_G.TeleportLocationsMenu = "Default"


TeleportLocationsMenu.EnableMouse = false
TeleportLocationsMenu.onIndexChange = function(Index)
end
local index = {
    checkbox = false,
    list = 2,
    heritage = 0.5,
    slider = 50,
    sliderprogress = 50,
    grid = {
        default = { x = 0.5, y = 0.5 },
        horizontal = { x = 0.5 },
        vertical = { y = 0.5 },
    },
    percentage = 0.5,
    color = {
        primary = { 1, 5 },
        secondary = { 1, 5 }
    },
}



Citizen.CreateThread(function()
    while (true) do
        Citizen.Wait(0)
        RageUI.IsVisible(TeleportLocationsMenu, function()
            for k, v in pairs(Locations) do
                RageUI.Button(Locations[k].Name, "", {}, true, { -- 5
                onSelected = function()
                    SetEntityCoords(GetPlayerPed(-1), Locations[k].x, Locations[k].y, Locations[k].z)
                end
                });
            end
        end)
    end
end)



--- If ur not braindead u will understand how this works

function OpenMenu() 
    RageUI.Visible(TeleportLocationsMenu, true)
end

function CloseMenu()
    RageUI.Visible(TeleportLocationsMenu, false)
end
