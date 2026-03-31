tag @s add jkpof_map_custom
execute on target if entity @s[gamemode=creative] at @e[type=interaction, tag=jkpof_map_custom, limit=1] run item replace entity @n[type=item_display] container.0 from entity @s weapon.mainhand
tag @s remove jkpof_map_custom
