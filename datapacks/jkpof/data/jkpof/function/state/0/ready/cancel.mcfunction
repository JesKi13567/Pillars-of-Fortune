scoreboard players reset #start_flag jkpof.int
execute as @a at @s run playsound entity.villager.no player @a
execute if score #ctrl_team jkpof.int matches 0 run tellraw @a [{text: "【幸运之柱】", color: "yellow"}, {text: "人数不够，游戏取消！", color: "red"}]
execute if score #ctrl_team jkpof.int matches 1 run tellraw @a [{text: "【幸运之柱】", color: "yellow"}, {text: "队伍数不够，游戏取消！", color: "red"}]
