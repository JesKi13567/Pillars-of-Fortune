summon lightning_bolt ~ ~ ~
tellraw @a[tag=!jkpof_lightning_player] [{storage: "jk:pof", interpret: true, nbt: "txt.POF", color: "yellow"}, {storage: "jk:pof", interpret: true, nbt: "txt.event.lightning.player.others.p1", color: "aqua"}, " ", {selector: "@s", color: "white"}, " ", {storage: "jk:pof", interpret: true, nbt: "txt.event.lightning.player.others.p2", color: "aqua"}]

# 遍历背包
data remove storage jk:pof data.lightning

execute if items entity @s player.cursor * run data modify storage jk:pof data.lightning.slot append value 'player.cursor'

execute if items entity @s player.crafting.0 * run data modify storage jk:pof data.lightning.slot append value 'player.crafting.0'
execute if items entity @s player.crafting.1 * run data modify storage jk:pof data.lightning.slot append value 'player.crafting.1'
execute if items entity @s player.crafting.2 * run data modify storage jk:pof data.lightning.slot append value 'player.crafting.2'
execute if items entity @s player.crafting.3 * run data modify storage jk:pof data.lightning.slot append value 'player.crafting.3'

execute if items entity @s weapon.offhand * run data modify storage jk:pof data.lightning.slot append value 'weapon.offhand'
execute if items entity @s armor.head * run data modify storage jk:pof data.lightning.slot append value 'armor.head'
execute if items entity @s armor.chest * run data modify storage jk:pof data.lightning.slot append value 'armor.chest'
execute if items entity @s armor.legs * run data modify storage jk:pof data.lightning.slot append value 'armor.legs'
execute if items entity @s armor.feet * run data modify storage jk:pof data.lightning.slot append value 'armor.feet'

execute if items entity @s container.0 * run data modify storage jk:pof data.lightning.slot append value 'container.0'
execute if items entity @s container.1 * run data modify storage jk:pof data.lightning.slot append value 'container.1'
execute if items entity @s container.2 * run data modify storage jk:pof data.lightning.slot append value 'container.2'
execute if items entity @s container.3 * run data modify storage jk:pof data.lightning.slot append value 'container.3'
execute if items entity @s container.4 * run data modify storage jk:pof data.lightning.slot append value 'container.4'
execute if items entity @s container.5 * run data modify storage jk:pof data.lightning.slot append value 'container.5'
execute if items entity @s container.6 * run data modify storage jk:pof data.lightning.slot append value 'container.6'
execute if items entity @s container.7 * run data modify storage jk:pof data.lightning.slot append value 'container.7'
execute if items entity @s container.8 * run data modify storage jk:pof data.lightning.slot append value 'container.8'
execute if items entity @s container.9 * run data modify storage jk:pof data.lightning.slot append value 'container.9'
execute if items entity @s container.10 * run data modify storage jk:pof data.lightning.slot append value 'container.10'
execute if items entity @s container.11 * run data modify storage jk:pof data.lightning.slot append value 'container.11'
execute if items entity @s container.12 * run data modify storage jk:pof data.lightning.slot append value 'container.12'
execute if items entity @s container.13 * run data modify storage jk:pof data.lightning.slot append value 'container.13'
execute if items entity @s container.14 * run data modify storage jk:pof data.lightning.slot append value 'container.14'
execute if items entity @s container.15 * run data modify storage jk:pof data.lightning.slot append value 'container.15'
execute if items entity @s container.16 * run data modify storage jk:pof data.lightning.slot append value 'container.16'
execute if items entity @s container.17 * run data modify storage jk:pof data.lightning.slot append value 'container.17'
execute if items entity @s container.18 * run data modify storage jk:pof data.lightning.slot append value 'container.18'
execute if items entity @s container.19 * run data modify storage jk:pof data.lightning.slot append value 'container.19'
execute if items entity @s container.20 * run data modify storage jk:pof data.lightning.slot append value 'container.20'
execute if items entity @s container.21 * run data modify storage jk:pof data.lightning.slot append value 'container.21'
execute if items entity @s container.22 * run data modify storage jk:pof data.lightning.slot append value 'container.22'
execute if items entity @s container.23 * run data modify storage jk:pof data.lightning.slot append value 'container.23'
execute if items entity @s container.24 * run data modify storage jk:pof data.lightning.slot append value 'container.24'
execute if items entity @s container.25 * run data modify storage jk:pof data.lightning.slot append value 'container.25'
execute if items entity @s container.26 * run data modify storage jk:pof data.lightning.slot append value 'container.26'
execute if items entity @s container.27 * run data modify storage jk:pof data.lightning.slot append value 'container.27'
execute if items entity @s container.28 * run data modify storage jk:pof data.lightning.slot append value 'container.28'
execute if items entity @s container.29 * run data modify storage jk:pof data.lightning.slot append value 'container.29'
execute if items entity @s container.30 * run data modify storage jk:pof data.lightning.slot append value 'container.30'
execute if items entity @s container.31 * run data modify storage jk:pof data.lightning.slot append value 'container.31'
execute if items entity @s container.32 * run data modify storage jk:pof data.lightning.slot append value 'container.32'
execute if items entity @s container.33 * run data modify storage jk:pof data.lightning.slot append value 'container.33'
execute if items entity @s container.34 * run data modify storage jk:pof data.lightning.slot append value 'container.34'
execute if items entity @s container.35 * run data modify storage jk:pof data.lightning.slot append value 'container.35'

execute store result score #event_lightning.slot jkpof.int run data get storage jk:pof data.lightning.slot
execute store result storage jk:pof data.lightning.random_max int 1 run scoreboard players remove #event_lightning.slot jkpof.int 1
execute if score #event_lightning.slot jkpof.int matches ..-1 run return run tellraw @s [{storage: "jk:pof", interpret: true, nbt: "txt.POF", color: "yellow"}, {storage: "jk:pof", interpret: true, nbt: "txt.event.lightning.player.me.poor", color: "aqua"}]

# 通过
tellraw @s [{storage: "jk:pof", interpret: true, nbt: "txt.POF", color: "yellow"}, {storage: "jk:pof", interpret: true, nbt: "txt.event.lightning.player.me.hasitem", color: "aqua"}]

execute store result storage jk:pof data.lightning.enchant_index int 1 run random value 0..42
execute store result storage jk:pof data.lightning.enchant_lvl int 1 run random value 1..10
function jkpof:state/1/progress/event/once/lightning/1 with storage jk:pof data.lightning
