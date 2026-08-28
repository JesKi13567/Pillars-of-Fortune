execute if score #event_plus_17 jkpof.int matches 0 run fill ~ ~ ~ ~23 ~184 ~23 air
execute if score #event_plus_17 jkpof.int matches 0 run kill @e[type=!marker, type=!player, dx=22, dy=184, dz=22]
execute if score #event_plus_17 jkpof.int matches 0 run kill @a[scores={jkpof.state=2}, dx=22, dy=184, dz=22]
execute if score #event_plus_17 jkpof.int matches 0 run scoreboard players set @a[scores={jkpof.state=2}, dx=22, dy=184, dz=22] jkpof.damage.type.now 300
execute if score #event_plus_17 jkpof.int matches 1 run fill ~ ~ ~ ~23 ~174 ~23 orange_stained_glass replace #replaceable
