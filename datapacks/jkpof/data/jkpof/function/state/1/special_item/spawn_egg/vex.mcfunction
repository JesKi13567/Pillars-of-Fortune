tag @s add jkpof_spawn
tag @s add jkpof_vex
execute on origin run scoreboard players operation @e[type=vex, tag=jkpof_vex] jkpof.id = @s jkpof.id
tag @s remove jkpof_vex
