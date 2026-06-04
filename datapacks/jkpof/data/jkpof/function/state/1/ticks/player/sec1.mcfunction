# 动作栏倒计时
execute if score #ctrl_actionbar jkpof.int matches 1 run title @s actionbar [{storage: "jk:pof", interpret: true, nbt: "txt.game.item_give", color: "yellow"}, {score: {name: "#time_res", objective: "jkpof.int"}, color: "gold"}, {storage: "jk:pof", interpret: true, nbt: "txt.event.global.seconds"}]

# 原谅
scoreboard players remove @s[scores={jkpof.damage.forgive=1..}] jkpof.damage.forgive 1
execute as @s[scores={jkpof.damage.forgive=..0, jkpof.damage.source.real=1..}] run function jkpof:state/1/hurt/sub/forgive

# 死亡笔记倒计时
scoreboard players remove @s[scores={jkpof.death_note.cd=1..}] jkpof.death_note.cd 1
kill @s[scores={jkpof.death_note.cd=0}]

# 鞘翅
execute if predicate jkpof:is_sneaking if items entity @s armor.chest #chest_armor if items entity @s weapon.* elytra at @s run function jkpof:state/1/special_item/elytra

# 复活信标
execute if predicate jkpof:is_sneaking if items entity @s weapon.mainhand beacon if items entity @s weapon.offhand player_head at @s run function jkpof:state/1/special_item/respawn/global

# 普通附魔书修改
execute if items entity @s weapon.mainhand enchanted_book[!consumable] run item modify entity @s weapon.mainhand [{function: "set_components", components: {consumable: {consume_seconds: 1000000, animation: "none"}, max_stack_size: 64}}, {function: "set_lore", entity: "this", mode: "replace_all", lore: [[{storage: "jk:pof", interpret: true, nbt: "txt.lobby.item.global.press", color: "white", italic: false}, {text: " [", color: "gold"}, {keybind: "key.use", color: "gold"}, {text: "] ", color: "gold"}, {storage: "jk:pof", interpret: true, nbt: "txt.lobby.item.enchanted_book"}]]}]
