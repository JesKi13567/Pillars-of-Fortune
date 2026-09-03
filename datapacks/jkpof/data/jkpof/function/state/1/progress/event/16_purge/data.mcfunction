$data merge entity @s $(data)
scoreboard players operation @s jkpof.id = @n[type=#jkpof:mobs, tag=jkpof_mob_self] jkpof.id
scoreboard players operation @s jkpof.freeze = @n[type=#jkpof:mobs, tag=jkpof_mob_self] jkpof.freeze
