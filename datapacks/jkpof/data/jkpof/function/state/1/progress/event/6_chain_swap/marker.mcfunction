tag @s add jkpof_swap_marker
tp @s @n[type=#jkpof:mobs_and_player, tag=jkpof_swap_player]
scoreboard players operation @s jkpof.cs.id = @n[type=#jkpof:mobs_and_player, tag=jkpof_swap_player] jkpof.cs.id
execute if score #ctrl_team jkpof.int matches 1..2 run scoreboard players operation @s jkpof.team = @n[type=#jkpof:mobs_and_player, tag=jkpof_swap_player] jkpof.team
