scoreboard players set @s[tag=jkpof_lava_marker_new] jkpof.int 60
tag @s[tag=jkpof_lava_marker_new] remove jkpof_lava_marker_new

execute as @s[scores={jkpof.int=60}] run setblock ~ ~ ~ yellow_wool
execute as @s[scores={jkpof.int=40}] run setblock ~ ~ ~ orange_wool
execute as @s[scores={jkpof.int=20}] run setblock ~ ~ ~ red_wool
execute as @s[scores={jkpof.int=0}] if score #event_plus_2 jkpof.int matches 0 run setblock ~ ~ ~ lava
execute as @s[scores={jkpof.int=0}] if score #event_plus_2 jkpof.int matches 1 run setblock ~ ~ ~ powder_snow

kill @s[scores={jkpof.int=..0}]
scoreboard players remove @s jkpof.int 1
