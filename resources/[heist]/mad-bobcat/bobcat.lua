



-- 1 criado por !fms
Config.DoorList['bobcat-1'] = {
    locked = true,
    doors = {
        {objName = -2023754432, objYaw = 84.999885559082, objCoords = vec3(914.558960, -2123.137695, 31.395027)},
        {objName = -2023754432, objYaw = 264.99993896484, objCoords = vec3(914.785645, -2120.547363, 31.395027)}
    },
    authorizedJobs = { ['police'] = 0 },
    distance = 2,
    doorType = 'double',
    doorLabel = '1',
    doorRate = 1.0,
}

-- 2 criado por !fms
Config.DoorList['bobcat-2'] = {
    objName = -2023754432,
    authorizedJobs = { ['police'] = 0 },
    distance = 2,
    doorLabel = '2',
    fixText = false,
    locked = true,
    objYaw = 84.999885559082,
    doorType = 'door',
    doorRate = 1.0,
    objCoords = vec3(908.440430, -2121.276123, 31.380991),
}

-- 3 criado por !fms
Config.DoorList['bobcat-3'] = {
    locked = true,
    doors = {
        {objName = 1438783233, objYaw = 264.99996948242, objCoords = vec3(904.913635, -2119.686279, 31.380224)},
        {objName = 1438783233, objYaw = 84.999885559082, objCoords = vec3(904.687012, -2122.276123, 31.380224)}
    },
    authorizedJobs = { ['police'] = 0 },
    distance = 2,
    doorType = 'double',
    doorLabel = '3',
    doorRate = 1.0,
}

-- garage criado por !fms
Config.DoorList['bobcat-garage'] = {
    objName = -1514454788,
    authorizedJobs = { ['police'] = 0 },
    distance = 2,
    doorLabel = 'garage',
    fixText = false,
    locked = true,
    objYaw = 175.00158691406,
    doorType = 'garage',
    doorRate = 1.0,
    objCoords = vec3(889.914307, -2107.780762, 30.235733),
}