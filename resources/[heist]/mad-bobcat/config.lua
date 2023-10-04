Config = {}

Config.RequiredCops = 0

Config.PoliceJobType = "police"

Config.C4Item = "c4_bomb"

Config.CardItem = "bcssecuritycard"

Config.ThermiteItem = "thermite"

Config.Cooldown = 60 --minutes

Config.MinigameTime = 10

Config.GridSize = 5

Config.IncorrectBlocks = 3

Config.WeaponsTable= {

    "weapon_assaultrifle",
    "weapon_smg",
    "weapon_heavypistol",
    "weapon_machinepistol",
    "weapon_pistol",
    
}

Config.NpcWeapons = `WEAPON_CARBINERIFLE_MK2`

Config['bobguards'] = {
    ['npcguards1'] = {
        { coords = vector3(896.91, -2132.18, 32.23), heading = 2.6, model = 'u_m_y_juggernaut_01'},
        { coords = vector3(888.74, -2135.36, 32.23), heading = 289.34, model = 'u_m_y_juggernaut_01'},
        { coords = vector3(878.32, -2132.05, 32.23), heading = 110.91, model = 'u_m_y_juggernaut_01'},
        { coords = vector3(879.18, -2123.35, 32.23), heading = 18.9, model = 'u_m_y_juggernaut_01'},
        { coords = vector3(877.65, -2111.89, 32.23), heading = 352.57, model = 'u_m_y_juggernaut_01'},
        { coords = vector3(876.5, -2118.53, 32.23), heading = 309.68, model = 'u_m_y_juggernaut_01'},
        { coords = vector3(876.46, -2114.25, 32.23), heading = 108.55, model = 'u_m_y_juggernaut_01'},
        { coords = vector3(881.06, -2129.55, 32.23), heading = 66.19, model = 'u_m_y_juggernaut_01'},
        { coords = vector3(885.79, -2119.5, 32.23), heading = 176.84, model = 'u_m_y_juggernaut_01'},
        { coords = vector3(896.48, -2126.98, 32.23), heading = 336.73, model = 'u_m_y_juggernaut_01'},
        { coords = vector3(890.91, -2123.03, 31.23), heading = 157.13, model = 'u_m_y_juggernaut_01'},
        { coords = vector3(885.02, -2128.92, 31.23), heading = 303.57, model = 'u_m_y_juggernaut_01'},
        { coords = vector3(891.72, -2125.8, 31.23), heading = 129.79, model = 'u_m_y_juggernaut_01'},
        { coords = vector3(898.11, -2120.51, 31.23), heading = 261.29, model = 'u_m_y_juggernaut_01'},
        { coords = vector3(881.53, -2118.0, 31.23), heading = 172.06, model = 'u_m_y_juggernaut_01'},
        { coords = vector3(884.03, -2131.93, 31.23), heading = 262.14, model = 'u_m_y_juggernaut_01'},

    },
}

Config.AmountOfWeapons = math.random(1, 2)

-------------------------------dispatch--------------------------

AlertCops = function() --you can edit your dispatch code inside that function

    exports["ps-dispatch"]:CustomAlert({
        coords = GetEntityCoords(PlayerPedId()),
        message = "Bobcat",
        dispatchCode = "10-90 BobCat",
        description = "Someone is attempting to rob bobcat!",
        radius = 0,
        sprite = 64,
        color = 2,
        scale = 1.0,
        length = 3,
    })
    
end

----------------------------------Lang-----------------------------

Config.Lang = {
    ['success'] = 'Success!',
    ['fail'] = 'You Failed!',
    ['nocops'] = 'Not enough cops!',
    ['cooldown'] = 'Someone already did this!',
    ['noitem'] = 'Missing something!',
    ['dooropen'] = 'Door Open!',
    ['blow'] = 'Go away!',
    ['getgoods'] = 'Get Goods',
    ['explosive'] = 'Plant C4',
    ['opengate'] = 'Open Gate',
    ['thermite'] = 'Plant Thermite',
    ['card'] = 'Use Card',
    ['dooralreadyopen'] = 'Door already open!',
    ['boxopen'] = 'Crate looted!',
    

}