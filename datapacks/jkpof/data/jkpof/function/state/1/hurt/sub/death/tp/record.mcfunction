scoreboard players reset @s jkpof.tp

execute store result storage jk:pof data.pos.x int 1 run data get entity @s LastDeathLocation.pos[0]
execute store result storage jk:pof data.pos.y int 1 run data get entity @s LastDeathLocation.pos[1]
execute store result storage jk:pof data.pos.z int 1 run data get entity @s LastDeathLocation.pos[2]
function jkpof:state/1/hurt/sub/death/tp/real with storage jk:pof data.pos
