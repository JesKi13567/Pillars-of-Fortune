execute as @e[type=item_display, tag=jkpof_display_lobby_item, tag=!-1] run data modify entity @s Glowing set value false

execute as @s[tag=0] run scoreboard players set #lobby_item jkpof.int 0
execute as @s[tag=1] run scoreboard players set #lobby_item jkpof.int 1
execute as @s[tag=2] run scoreboard players set #lobby_item jkpof.int 2
execute as @s[tag=3] run scoreboard players set #lobby_item jkpof.int 3
execute as @s[tag=4] run scoreboard players set #lobby_item jkpof.int 4
execute as @s[tag=5] run scoreboard players set #lobby_item jkpof.int 5
execute as @s[tag=6] run scoreboard players set #lobby_item jkpof.int 6
execute as @s[tag=7] run scoreboard players set #lobby_item jkpof.int 7
execute as @s[tag=8] run scoreboard players set #lobby_item jkpof.int 8
execute as @s[tag=9] run scoreboard players set #lobby_item jkpof.int 9
execute as @s[tag=10] run scoreboard players set #lobby_item jkpof.int 10
execute as @s[tag=11] run scoreboard players set #lobby_item jkpof.int 11
execute as @s[tag=12] run scoreboard players set #lobby_item jkpof.int 12
execute as @s[tag=13] run scoreboard players set #lobby_item jkpof.int 13
execute as @s[tag=14] run scoreboard players set #lobby_item jkpof.int 14
execute as @s[tag=15] run scoreboard players set #lobby_item jkpof.int 15
execute as @s[tag=16] run scoreboard players set #lobby_item jkpof.int 16
execute as @s[tag=17] run scoreboard players set #lobby_item jkpof.int 17
execute as @s[tag=18] run scoreboard players set #lobby_item jkpof.int 18
execute as @s[tag=19] run scoreboard players set #lobby_item jkpof.int 19
execute as @s[tag=20] run scoreboard players set #lobby_item jkpof.int 20

execute if score #lobby_item jkpof.int matches 0 run function jkpof:state/0/interaction/lobby/item/order {n: 0}
execute if score #lobby_item jkpof.int matches 1 run function jkpof:state/0/interaction/lobby/item/order {n: 1}
execute if score #lobby_item jkpof.int matches 2 run function jkpof:state/0/interaction/lobby/item/order {n: 2}
execute if score #lobby_item jkpof.int matches 3 run function jkpof:state/0/interaction/lobby/item/order {n: 3}
execute if score #lobby_item jkpof.int matches 4 run function jkpof:state/0/interaction/lobby/item/order {n: 4}
execute if score #lobby_item jkpof.int matches 5 run function jkpof:state/0/interaction/lobby/item/order {n: 5}
execute if score #lobby_item jkpof.int matches 6 run function jkpof:state/0/interaction/lobby/item/order {n: 6}
execute if score #lobby_item jkpof.int matches 7 run function jkpof:state/0/interaction/lobby/item/order {n: 7}
execute if score #lobby_item jkpof.int matches 8 run function jkpof:state/0/interaction/lobby/item/order {n: 8}
execute if score #lobby_item jkpof.int matches 9 run function jkpof:state/0/interaction/lobby/item/order {n: 9}
execute if score #lobby_item jkpof.int matches 10 run function jkpof:state/0/interaction/lobby/item/order {n: 10}
execute if score #lobby_item jkpof.int matches 11 run function jkpof:state/0/interaction/lobby/item/order {n: 11}
execute if score #lobby_item jkpof.int matches 12 run function jkpof:state/0/interaction/lobby/item/order {n: 12}
execute if score #lobby_item jkpof.int matches 13 run function jkpof:state/0/interaction/lobby/item/order {n: 13}
execute if score #lobby_item jkpof.int matches 14 run function jkpof:state/0/interaction/lobby/item/order {n: 14}
execute if score #lobby_item jkpof.int matches 15 run function jkpof:state/0/interaction/lobby/item/order {n: 15}
execute if score #lobby_item jkpof.int matches 16 run function jkpof:state/0/interaction/lobby/item/order {n: 16}
execute if score #lobby_item jkpof.int matches 17 run function jkpof:state/0/interaction/lobby/item/order {n: 17}
execute if score #lobby_item jkpof.int matches 18 run function jkpof:state/0/interaction/lobby/item/order {n: 18}
execute if score #lobby_item jkpof.int matches 19 run function jkpof:state/0/interaction/lobby/item/order {n: 19}
execute if score #lobby_item jkpof.int matches 20 run function jkpof:state/0/interaction/lobby/item/order {n: 20}

execute if score #lobby_item jkpof.int matches 0 run data modify entity @e[type=text_display, tag=jkpof_display_lobby_item, tag=-1, limit=1] text set value [{storage: "jk:pof", nbt: "txt.lobby.item.stack.name"}, "\n", {storage: "jk:pof", nbt: "txt.lobby.item.stack.lore", color: "aqua"}]
execute if score #lobby_item jkpof.int matches 1 run data modify entity @e[type=text_display, tag=jkpof_display_lobby_item, tag=-1, limit=1] text set value ["", {storage: "jk:pof", nbt: "txt.lobby.item.global.shootable", color: "gold"}, {translate: "entity.minecraft.fireball"}, "\n", {storage: "jk:pof", nbt: "txt.lobby.item.global.press"}, {text: " [", color: "aqua"}, {keybind: "key.use", color: "aqua"}, {text: "] ", color: "aqua"}, {storage: "jk:pof", nbt: "txt.lobby.item.global.to_shoot"}]
execute if score #lobby_item jkpof.int matches 2 run data modify entity @e[type=text_display, tag=jkpof_display_lobby_item, tag=-1, limit=1] text set value ["", {storage: "jk:pof", nbt: "txt.lobby.item.global.shootable", color: "gold"}, {translate: "entity.minecraft.dragon_fireball"}, "\n", {storage: "jk:pof", nbt: "txt.lobby.item.global.press"}, {text: " [", color: "aqua"}, {keybind: "key.use", color: "aqua"}, {text: "] ", color: "aqua"}, {storage: "jk:pof", nbt: "txt.lobby.item.global.to_shoot"}]
execute if score #lobby_item jkpof.int matches 3 run data modify entity @e[type=text_display, tag=jkpof_display_lobby_item, tag=-1, limit=1] text set value ["", {storage: "jk:pof", nbt: "txt.lobby.item.platform.name", color: "gold"}, "\n", {storage: "jk:pof", nbt: "txt.lobby.item.global.press"}, {text: " [", color: "aqua"}, {keybind: "key.use", color: "aqua"}, {text: "] ", color: "aqua"}, {storage: "jk:pof", nbt: "txt.lobby.item.platform.p1"}, {translate: "block.minecraft.slime_block", color: "aqua"}, {storage: "jk:pof", nbt: "txt.lobby.item.platform.p2"}]
execute if score #lobby_item jkpof.int matches 4 run data modify entity @e[type=text_display, tag=jkpof_display_lobby_item, tag=-1, limit=1] text set value ["", {storage: "jk:pof", nbt: "txt.lobby.item.global.self_igniting", color: "red"}, {translate: "block.minecraft.tnt"}, "\n", {storage: "jk:pof", nbt: "txt.lobby.item.tnt.lore"}]
execute if score #lobby_item jkpof.int matches 5 run data modify entity @e[type=text_display, tag=jkpof_display_lobby_item, tag=-1, limit=1] text set value ["", {storage: "jk:pof", nbt: "txt.lobby.item.global.place_anywhere", color: "light_purple"}, {translate: "item.minecraft.end_crystal"}]
execute if score #lobby_item jkpof.int matches 6 run data modify entity @e[type=text_display, tag=jkpof_display_lobby_item, tag=-1, limit=1] text set value ["", {storage: "jk:pof", nbt: "txt.lobby.item.knockback_stick", color: "gold"}, "\n", {translate: "enchantment.minecraft.knockback"}, " ", {translate: "enchantment.level.5"}]
execute if score #lobby_item jkpof.int matches 7 run data modify entity @e[type=text_display, tag=jkpof_display_lobby_item, tag=-1, limit=1] text set value ["", {translate: "item.minecraft.netherite_ingot"}, "\n", {storage: "jk:pof", nbt: "txt.lobby.item.netherite", color: "aqua"}]
execute if score #lobby_item jkpof.int matches 8 run data modify entity @e[type=text_display, tag=jkpof_display_lobby_item, tag=-1, limit=1] text set value ["", {storage: "jk:pof", nbt: "txt.lobby.item.ender_eye.name", color: "light_purple"}, "\n", {storage: "jk:pof", nbt: "txt.lobby.item.ender_eye.lore"}]
execute if score #lobby_item jkpof.int matches 9 run data modify entity @e[type=text_display, tag=jkpof_display_lobby_item, tag=-1, limit=1] text set value ["", {storage: "jk:pof", nbt: "txt.lobby.item.loot_chest.name", color: "yellow"}, "\n", {storage: "jk:pof", nbt: "txt.lobby.item.loot_chest.lore"}]
execute if score #lobby_item jkpof.int matches 10 run data modify entity @e[type=text_display, tag=jkpof_display_lobby_item, tag=-1, limit=1] text set value ["", {translate: "block.minecraft.player_head", color: "yellow"}, "\n", {storage: "jk:pof", nbt: "txt.lobby.item.player_head"}]
execute if score #lobby_item jkpof.int matches 11 run data modify entity @e[type=text_display, tag=jkpof_display_lobby_item, tag=-1, limit=1] text set value ["", {storage: "jk:pof", nbt: "txt.lobby.item.void_charm.name", color: "light_purple"}, "\n", {storage: "jk:pof", nbt: "txt.lobby.item.void_charm.lore"}]
execute if score #lobby_item jkpof.int matches 12 run data modify entity @e[type=text_display, tag=jkpof_display_lobby_item, tag=-1, limit=1] text set value [{translate: "item.minecraft.bow"}, " / ", {translate: "item.minecraft.crossbow"}, "\n", {storage: "jk:pof", nbt: "txt.lobby.item.bow", color: "aqua"}]
execute if score #lobby_item jkpof.int matches 13 run data modify entity @e[type=text_display, tag=jkpof_display_lobby_item, tag=-1, limit=1] text set value ["", {storage: "jk:pof", nbt: "txt.lobby.item.death_note.name", color: "dark_red"}, "\n", {storage: "jk:pof", nbt: "txt.lobby.item.death_note.lore", color: "aqua"}, {translate: "item.minecraft.apple"}, " : ", {translate: "item.minecraft.golden_apple"}, " : ", {translate: "item.minecraft.enchanted_golden_apple"}, " = 10% : 20% : 50%"]
execute if score #lobby_item jkpof.int matches 14 run data modify entity @e[type=text_display, tag=jkpof_display_lobby_item, tag=-1, limit=1] text set value [{storage: "jk:pof", nbt: "txt.lobby.item.spawn_egg.name"}, "\n", {translate: "item.minecraft.creeper_spawn_egg", color: "aqua"}, {storage: "jk:pof", nbt: "txt.char.colon"}, {storage: "jk:pof", nbt: "txt.lobby.item.spawn_egg.lore.p1"}, {storage: "jk:pof", nbt: "txt.lobby.item.global.self_igniting", color: "red"}, {translate: "entity.minecraft.creeper", color: "yellow"}, {storage: "jk:pof", nbt: "txt.char.dot"}, "\n", {translate: "item.minecraft.ender_dragon_spawn_egg", color: "aqua"}, {storage: "jk:pof", nbt: "txt.char.colon"}, {translate: "entity.minecraft.ender_dragon", color: "yellow"}, {storage: "jk:pof", nbt: "txt.lobby.item.spawn_egg.lore.p2"}, "\n", {translate: "entity.minecraft.wolf", color: "yellow"}, {storage: "jk:pof", nbt: "txt.char.comma", color: "aqua"}, {translate: "entity.minecraft.cat", color: "yellow"}, {storage: "jk:pof", nbt: "txt.char.and", color: "aqua"}, {translate: "entity.minecraft.parrot", color: "yellow"}, {storage: "jk:pof", nbt: "txt.char.colon"}, {storage: "jk:pof", nbt: "txt.lobby.item.spawn_egg.lore.p3"}]
execute if score #lobby_item jkpof.int matches 15 run data modify entity @e[type=text_display, tag=jkpof_display_lobby_item, tag=-1, limit=1] text set value [{translate: "block.minecraft.beacon"}, "\n", {storage: "jk:pof", nbt: "txt.lobby.item.respawn_device.lore.p1", color: "aqua"}, {translate: "block.minecraft.beacon"}, {storage: "jk:pof", nbt: "txt.lobby.item.respawn_device.lore.p2", color: "aqua"}, {translate: "block.minecraft.player_head"}, {storage: "jk:pof", nbt: "txt.lobby.item.respawn_device.lore.p3", color: "aqua"}, {translate: "block.minecraft.copper_block"}, {storage: "jk:pof", nbt: "txt.lobby.item.respawn_device.lore.p4", color: "aqua"}]
execute if score #lobby_item jkpof.int matches 16 run data modify entity @e[type=text_display, tag=jkpof_display_lobby_item, tag=-1, limit=1] text set value ["", {storage: "jk:pof", nbt: "txt.lobby.item.cage.name", color: "yellow"}, "\n", {storage: "jk:pof", nbt: "txt.lobby.item.cage.lore.p1", color: "aqua"}, {translate: "block.minecraft.glass"}, {storage: "jk:pof", nbt: "txt.lobby.item.cage.lore.p2", color: "aqua"}]
execute if score #lobby_item jkpof.int matches 17 run data modify entity @e[type=text_display, tag=jkpof_display_lobby_item, tag=-1, limit=1] text set value ["", {storage: "jk:pof", nbt: "txt.lobby.item.clock.name", color: "gold"}, "\n", {storage: "jk:pof", nbt: "txt.lobby.item.clock.lore", color: "yellow"}]
execute if score #lobby_item jkpof.int matches 18 run data modify entity @e[type=text_display, tag=jkpof_display_lobby_item, tag=-1, limit=1] text set value ["", {translate: "item.minecraft.elytra", color: "light_purple"}, "\n", {storage: "jk:pof", nbt: "txt.lobby.item.elytra"}]
execute if score #lobby_item jkpof.int matches 19 run data modify entity @e[type=text_display, tag=jkpof_display_lobby_item, tag=-1, limit=1] text set value ["", {storage: "jk:pof", nbt: "txt.lobby.item.super_star.name", color: "aqua"}, "\n", {storage: "jk:pof", nbt: "txt.lobby.item.super_star.lore"}]
execute if score #lobby_item jkpof.int matches 20 run data modify entity @e[type=text_display, tag=jkpof_display_lobby_item, tag=-1, limit=1] text set value ["", {storage: "jk:pof", nbt: "txt.lobby.item.gravity_device.name", color: "light_purple"}, "\n", {storage: "jk:pof", nbt: "txt.lobby.item.gravity_device.lore"}]
