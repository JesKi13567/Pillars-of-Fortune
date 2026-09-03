scoreboard players add #ctrl_game_mode jkpof.int 1
execute if score #ctrl_game_mode jkpof.int matches 2.. run scoreboard players set #ctrl_game_mode jkpof.int 0

execute if score #ctrl_game_mode jkpof.int matches 0 run tellraw @a ["", {storage: "jk:pof", interpret: true, nbt: "txt.POF.show", color: "yellow"}, {storage: "jk:pof", interpret: true, nbt: "txt.POF.tellraw"}]
execute if score #ctrl_game_mode jkpof.int matches 1 run tellraw @a ["", {storage: "jk:pof", interpret: true, nbt: "txt.FOF.show", color: "light_purple"}, {storage: "jk:pof", interpret: true, nbt: "txt.FOF.tellraw"}]

function jkpof:state/0/interaction/ctrl/item/show
