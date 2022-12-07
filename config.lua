Config = {}

---- Магазин ( или да се крафват машините)
Config.shop = {
    name = "Магазин",
    coords = vector3(-562.4217, 227.63012, 74.890914),
}

Config.ShopItems = {
    label = "Машини",
    items = {
        [1] = {
            name = "standard_cpu",
            price = 250,
            amount = 500,
            info = {},
            type = "item",
            slot = 1,
        },
        [2] = {
            name = "e2_cpu",
            price = 250,
            amount = 500,
            info = {},
            type = "item",
            slot = 2,
        },
        [3] = {
            name = "quantum_cpu",
            price = 250,
            amount = 500,
            info = {},
            type = "item",
            slot = 3,
        },
    },
    slots = 3
}
---- Вход
Config.ExitCoords = vector4(739.39, 2579.4, 75.47, 23.57)

---- Изход и място за инсталация
Config.MiningLab = {
    coords = vector3(2155.0, 2921.08, -81.08),
    mining_time =
    {
        ["Standard CPU"] = 60, -- 1 мин
        ["E2 CPU"] = 120, -- 2 мин
        ["Quantum CPU"] = 180, -- мин
    }
}

---- Печалба
Config.Reward = {
    ["standard_cpu"] = 25,
    ["e2_cpu"] = 50,
    ["quantum_cpu"] = 80,
}
