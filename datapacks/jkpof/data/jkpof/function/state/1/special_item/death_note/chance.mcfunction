# 概率初始化
execute unless score @s jkpof.death_note.chance matches 50.. run scoreboard players set @s jkpof.death_note.chance 50
execute as @s[scores={jkpof.use.apple=1..}] run scoreboard players add @s jkpof.death_note.chance 10
execute as @s[scores={jkpof.use.golden_apple=1..}] run scoreboard players add @s jkpof.death_note.chance 20
execute as @s[scores={jkpof.use.enchanted_golden_apple=1..}] run scoreboard players add @s jkpof.death_note.chance 50
scoreboard players remove @s[scores={jkpof.use.apple=1..}] jkpof.use.apple 1
scoreboard players remove @s[scores={jkpof.use.golden_apple=1..}] jkpof.use.golden_apple 1
scoreboard players remove @s[scores={jkpof.use.enchanted_golden_apple=1..}] jkpof.use.enchanted_golden_apple 1

title @s actionbar [{text: "", color: "gold"}, {storage: "jk:pof", nbt: "txt.lobby.item.death_note.chance_show", color: "dark_red"}, {score: {name: "@s", objective: "jkpof.death_note.chance"}}, "%"]
