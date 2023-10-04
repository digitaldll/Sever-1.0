Config = {}

Config['OilRigHeist'] = {
    ['framework'] = {
        name = 'QB', -- Only ESX or QB.
        scriptName = 'qb-core', -- Framework script name work framework exports. (Example: qb-core or es_extended)
        eventName = 'esx:getSharedObject', -- If your framework using trigger event for shared object, you can set in here.
        targetScript = 'qb-target' -- Target script name (qtarget or qb-target or ox_target)
    },
    ['setjobForPolice'] = 'police', -- Setjob for check police count and police alert. If you want more, look editable files in script.
    ['requiredPoliceCount'] = 0, -- Required police count for start heist.
    ['requiredItems'] = { -- Add this items to database or shared. Don't change the order, you can change the item names.
        'hack_usb', 'security_card_02', 'weapon_crowbar'
    },
    ['nextRob'] = 18000, -- Seconds for next heist
    ['startHeist'] ={ -- Heist start coords
        pos = vector3(-2359.84, 3252.39, 101.45),
        peds = {
            {pos = vector3(-2360.31, 3252.66, 101.45), heading = 242.44, ped = 's_m_m_highsec_01'},
            {pos = vector3(-2359.53, 3253.25, 101.45), heading = 188.34, ped = 's_m_m_highsec_02'},
            {pos = vector3(-2360.43, 3251.85, 101.45), heading = 292.42, ped = 's_m_m_fiboffice_02'}
        }
    },
    ['requiredPlayersForHeist'] = 1, -- Required players for start heist.
    ['crateSettings'] = {
        ['crateCount'] = 3, -- Crate with items count for every heist. (Max 10)
        ['crateItems'] = { -- Items for every crate.
            {itemName = 'pistol_ammo',  itemCount = function() return math.random(5, 25) end, chance = 90},
            {itemName = 'weapon_combatpistol',  itemCount = function() return math.random(5, 25) end, chance = 80},
            {itemName = 'smg_ammo',  itemCount = function() return math.random(5, 25) end, chance = 70},
            {itemName = 'weapon_pistol_mk2',  itemCount = function() return math.random(5, 25) end, chance = 60},
            {itemName = 'armor',  itemCount = function() return math.random(1, 2) end, chance = 50},
            {itemName = 'heavyarmor',  itemCount = function() return math.random(5, 10) end, chance = 40},
            {itemName = 'bcssecuritycard',  itemCount = function() return math.random(1, 2) end, chance = 30},
            {itemName = 'weapon_specialcarbine',  itemCount = function() return math.random(1, 2) end, chance = 15},
            {itemName = 'weapon_carbinerifle',  itemCount = function() return math.random(1, 2) end, chance = 5},
            {itemName = 'weapon_combatmg',  itemCount = function() return math.random(1, 1) end, chance = 1},



        },
        ['lootTime'] =60, -- Seconds
    }
}

Config['OilRigSetup'] = {
    ['middleArea'] = vector3(-2736.2, 6597.84, 29.1568),
    ['guards'] = { 
        ['peds'] = {-- These coords are for guard peds, you can add new guard peds.
            {coords = vector3(-2740.9, 6598.14, 29.6310),  heading = 270.87, model = 's_m_y_swat_01'},
            {coords = vector3(-2736.3, 6592.37, 29.6306),  heading = 177.93, model = 'u_m_y_juggernaut_01'},
            {coords = vector3(-2729.8, 6597.79, 29.6301),  heading = 354.93, model = 's_m_m_movalien_01'},
            {coords = vector3(-2736.7, 6604.00, 29.4214),  heading = 177.88, model = 's_m_y_swat_01'},
            {coords = vector3(-2740.2, 6598.62, 25.0534),  heading = 268.28, model = 'u_m_y_juggernaut_01'},
            {coords = vector3(-2735.0, 6592.12, 25.0534),  heading = 268.3,  model = 's_m_m_movalien_01'},
            {coords = vector3(-2730.2, 6596.66, 25.0534),  heading = 359.44, model = 's_m_y_swat_01'},
            {coords = vector3(-2733.3, 6589.02, 21.5044),  heading = 265.05, model = 's_m_m_movalien_01'},
            {coords = vector3(-2727.4, 6596.52, 21.5044),  heading = 174.77, model = 's_m_y_swat_01'},
            {coords = vector3(-2727.6, 6606.27, 21.5044),  heading = 180.79, model = 's_m_y_swat_01'},
            {coords = vector3(-2729.6, 6611.07, 15.2254),  heading = 180.79, model = 'u_m_y_juggernaut_01'},
            {coords = vector3(-2742.7, 6599.25, 15.2254),  heading = 180.79, model = 's_m_m_movalien_01'},
            {coords = vector3(-2744.3, 6586.42, 15.2254),  heading = 180.79, model = 'u_m_y_juggernaut_01'},
            {coords = vector3(-2730.9, 6587.61, 15.2254),  heading = 180.79, model = 's_m_y_swat_01'},
            {coords = vector3(-2730.1, 6598.66, 12.2224),  heading = 180.79, model = 's_m_m_movalien_01'},
            {coords = vector3(-2731.2, 6618.20, 25.8724),  heading = 180.79, model = 's_m_y_swat_01'},
            {coords = vector3(-2736.8, 6617.62, 25.8724),  heading = 180.79, model = 'u_m_y_juggernaut_01'},
            {coords = vector3(-2716.8, 6578.35, 29.1484),  heading = 180.79, model = 's_m_m_movalien_01'},
            {coords = vector3(-2718.0, 6584.74, 29.1484),  heading = 180.79, model = 'u_m_y_juggernaut_01'},
        },
        ['weapons'] = {'weapon_combatmg_mk2', 'weapon_carbinerifle_mk2', 'weapon_specialcarbine_mk2'} -- You can change this.
    },
    ['crates'] = {
        {coords = vector3(-2739.6, 6608.67, 15.0348), heading = 59.0},
        {coords = vector3(-2717.7, 6610.90, 21.7323), heading = 0.0},
        {coords = vector3(-2722.3, 6611.42, 21.7416), heading = 90.0},
        {coords = vector3(-2723.6, 6614.66, 21.7416), heading = 90.0},
        {coords = vector3(-2728.0, 6599.0,  21.7416), heading = 0.0},
        {coords = vector3(-2724.9, 6595.0,  21.7416), heading = 0.0},
        {coords = vector3(-2724.9, 6590.67, 21.9416), heading = 90.0},
        {coords = vector3(-2739.1, 6609.55, 21.7416), heading = 90.0},
        {coords = vector3(-2730.4, 6615.08, 25.9878), heading = 0.0},
        {coords = vector3(-2728.3, 6615.11, 25.9878), heading = 0.0},
    },
    ['laptop'] = {coords = vector3(-2732.5, 6621.41, 25.4206), heading = 0.0}
}

Strings = {
    ['wait_nextrob'] = 'Come back later and try again!',
    ['minute'] = 'minute.',
    ['need_this'] = 'You need this: ',
    ['need_police'] = 'Not enough police in the city.',
    ['total_money'] = 'You got this: ',
    ['police_alert'] = 'Oil rig robbery alert! Check your gps.',
    ['not_cop'] = 'You are not cop!',
    ['need_people'] = 'Count of people required for heist: ',
    ['oilrig_blip'] = 'Oil Rig',
    ['heist_info'] = 'Go to the location marked on the GPS with your crew. Take plenty of weapons and armor.',
    ['hack_info'] = 'Full boxes marked on GPS.',
    ['looting'] = 'LOOTING',

    --Target labels
    ['t_heist'] = 'Oil Rig Heist',
    ['t_search'] = 'Search Crate',
    ['t_laptop'] = 'Hack Laptop',

    --For minigame
    ['confirm'] = 'Confirm',
    ['change'] = 'Change vertical',
    ['change_slice'] = 'Change slice',
    ['exit'] = 'Exit',
}