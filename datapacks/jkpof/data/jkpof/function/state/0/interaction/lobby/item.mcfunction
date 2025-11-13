scoreboard players add #lobby_item jkpof.int 1
execute if score #lobby_item jkpof.int matches 9.. run scoreboard players set #lobby_item jkpof.int 0

execute if score #lobby_item jkpof.int matches 0 run data modify entity @e[type=item_display, tag=jkpof_display_lobby_item, limit=1] item.id set value "grass_block"
execute if score #lobby_item jkpof.int matches 0 run data modify entity @e[type=text_display, tag=jkpof_display_lobby_item, limit=1] text set value "原版修改\n无耐久物品最大堆叠个数均为 64，\n若发现有物品未堆叠则需丢出刷新。"
execute if score #lobby_item jkpof.int matches 1 run data modify entity @e[type=item_display, tag=jkpof_display_lobby_item, limit=1] item.id set value "fire_charge"
execute if score #lobby_item jkpof.int matches 1 run data modify entity @e[type=text_display, tag=jkpof_display_lobby_item, limit=1] text set value ["", {text: "可发射的", color: "gold"}, {translate: "entity.minecraft.fireball"}, "\n", {text: "按"}, {text: " [", color: "gold"}, {keybind: "key.use", color: "gold"}, {text: "] ", color: "gold"}, "来发射。"]
execute if score #lobby_item jkpof.int matches 2 run data modify entity @e[type=item_display, tag=jkpof_display_lobby_item, limit=1] item.id set value "blaze_rod"
execute if score #lobby_item jkpof.int matches 2 run data modify entity @e[type=text_display, tag=jkpof_display_lobby_item, limit=1] text set value ["", {text: "急救平台", color: "gold", italic: false}, "\n", {text: "按", color: "white", italic: false}, {text: " [", color: "gold"}, {keybind: "key.use", color: "gold"}, {text: "] ", color: "gold"}, "在脚下生成一层", {translate: "block.minecraft.slime_block", color: "gold"}, "平台。"]
execute if score #lobby_item jkpof.int matches 3 run data modify entity @e[type=item_display, tag=jkpof_display_lobby_item, limit=1] item.id set value "tnt"
execute if score #lobby_item jkpof.int matches 3 run data modify entity @e[type=text_display, tag=jkpof_display_lobby_item, limit=1] text set value ["", {text: "自燃", color: "red"}, {translate: "block.minecraft.tnt"}, "\n", "顾名思义，放下即自燃。"]
execute if score #lobby_item jkpof.int matches 4 run data modify entity @e[type=item_display, tag=jkpof_display_lobby_item, limit=1] item.id set value "end_crystal"
execute if score #lobby_item jkpof.int matches 4 run data modify entity @e[type=text_display, tag=jkpof_display_lobby_item, limit=1] text set value ["", {text: "可随处放置的", color: "light_purple", italic: false}, {translate: "item.minecraft.end_crystal"}, "\n", "顾名思义，可随处放置。"]
execute if score #lobby_item jkpof.int matches 5 run data modify entity @e[type=item_display, tag=jkpof_display_lobby_item, limit=1] item.id set value "stick"
execute if score #lobby_item jkpof.int matches 5 run data modify entity @e[type=text_display, tag=jkpof_display_lobby_item, limit=1] text set value ["", {text: "击退棒", color: "gold"}, "\n", {translate: "enchantment.minecraft.knockback"}, " ", {translate: "enchantment.level.5"}]
execute if score #lobby_item jkpof.int matches 6 run data modify entity @e[type=item_display, tag=jkpof_display_lobby_item, limit=1] item.id set value "netherite_ingot"
execute if score #lobby_item jkpof.int matches 6 run data modify entity @e[type=text_display, tag=jkpof_display_lobby_item, limit=1] text set value ["", {translate: "item.minecraft.netherite_ingot"}, "\n", "可直接用于合成下界合金制的武器/装备。"]
execute if score #lobby_item jkpof.int matches 7 run data modify entity @e[type=item_display, tag=jkpof_display_lobby_item, limit=1] item.id set value "ender_eye"
execute if score #lobby_item jkpof.int matches 7 run data modify entity @e[type=text_display, tag=jkpof_display_lobby_item, limit=1] text set value ["", {text: "折跃珍珠", color: "light_purple"}, "\n", "沿指针方向瞬移，最多 20 格。"]
execute if score #lobby_item jkpof.int matches 8 run data modify entity @e[type=item_display, tag=jkpof_display_lobby_item, limit=1] item.id set value "chest"
execute if score #lobby_item jkpof.int matches 8 run data modify entity @e[type=text_display, tag=jkpof_display_lobby_item, limit=1] text set value ["", {text: "战利品箱", color: "yellow"}, "\n", "来自原版的随机战利品。"]
