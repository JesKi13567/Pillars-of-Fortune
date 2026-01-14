scoreboard players set #death_note.fail jkpof.int 0

execute store result storage jk:pof data.death_note.chance int 1 run scoreboard players get @s jkpof.death_note.chance
function jkpof:state/1/special_item/death_note/check/luck with storage jk:pof data.death_note

execute if score #death_note.fail jkpof.int matches 1.. run function jkpof:state/1/special_item/death_note/fail

# 清理
item replace entity @s weapon.mainhand with air
scoreboard players remove @s jkpof.death_note.chance 100
