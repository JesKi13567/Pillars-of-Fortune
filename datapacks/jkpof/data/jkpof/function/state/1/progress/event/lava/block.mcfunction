scoreboard players set @s[tag=jkpof_lava_marker_new] jkpof.int 60
tag @s[tag=jkpof_lava_marker_new] remove jkpof_lava_marker_new

execute as @s[scores={jkpof.int=60}] run setblock ~ ~ ~ yellow_wool
execute as @s[scores={jkpof.int=40}] run setblock ~ ~ ~ orange_wool
execute as @s[scores={jkpof.int=20}] run setblock ~ ~ ~ red_wool
execute as @s[scores={jkpof.int=0}] run setblock ~ ~ ~ lava

kill @s[scores={jkpof.int=..0}]
scoreboard players remove @s jkpof.int 1
