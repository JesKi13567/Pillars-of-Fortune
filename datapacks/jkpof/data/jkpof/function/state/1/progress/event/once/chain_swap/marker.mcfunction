tag @s add jkpof_swap_marker
tp @s @p[tag=jkpof_swap_player]
scoreboard players operation @s jkpof.id = @p[tag=jkpof_swap_player] jkpof.id
execute if score #ctrl_team jkpof.int matches 1..2 run scoreboard players operation @s jkpof.team = @p[tag=jkpof_swap_player] jkpof.team
