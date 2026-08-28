tag @s add jkpof_swap_player_sel
execute as @e[type=marker, tag=jkpof_swap_marker_sel] if score @s jkpof.cs.id = @n[type=#jkpof:mobs_and_player, tag=jkpof_swap_player_sel] jkpof.cs.id run tag @s add jkpof_swap_marker_sel2
tag @s remove jkpof_swap_player_sel
