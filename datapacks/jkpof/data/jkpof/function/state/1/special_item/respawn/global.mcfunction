data modify storage jk:pof data.respawn.id set from entity @s equipment.offhand.components."minecraft:profile".name
execute store result score #respawn_head_count_temp jkpof.int run data get entity @s equipment.offhand.count
execute store result storage jk:pof data.respawn.c int 1 run scoreboard players remove #respawn_head_count_temp jkpof.int 1
function jkpof:state/1/special_item/respawn/check with storage jk:pof data.respawn
