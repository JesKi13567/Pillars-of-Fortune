tag @s add jkpof_swap_player_sel
execute as @e[type=marker, tag=jkpof_swap_marker_sel] if score @s jkpof.id = @p[tag=jkpof_swap_player_sel] jkpof.id run tag @s add jkpof_swap_marker_sel2
tag @s remove jkpof_swap_player_sel
