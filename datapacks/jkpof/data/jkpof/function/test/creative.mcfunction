scoreboard players set #bool_creative jkpof.int 0
execute as @s[gamemode=creative] run scoreboard players set #bool_creative jkpof.int 1

execute if score #bool_creative jkpof.int matches 0 run gamemode creative @s
execute if score #bool_creative jkpof.int matches 0 run scoreboard players set @s jkpof.creative 1000
execute if score #bool_creative jkpof.int matches 0 run tellraw @s {translate: "commands.gamemode.success.self", with: [{translate: "gameMode.creative"}]}

execute if score #bool_creative jkpof.int matches 1 run gamemode survival @s
execute if score #bool_creative jkpof.int matches 1 run scoreboard players reset @s jkpof.creative
execute if score #bool_creative jkpof.int matches 1 run tellraw @s {translate: "commands.gamemode.success.self", with: [{translate: "gameMode.survival"}]}
