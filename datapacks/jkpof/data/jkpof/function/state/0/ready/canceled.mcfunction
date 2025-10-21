scoreboard players reset #start_flag jkpof.int
execute positioned 132 48 0 run playsound entity.villager.no player @a
tellraw @a [{text: "【幸运之柱】", color: "yellow"}, {text: "人数不够，游戏取消！", color: "red"}]
