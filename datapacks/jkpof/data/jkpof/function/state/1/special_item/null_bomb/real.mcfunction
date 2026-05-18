playsound block.stone.break block @a
fill ~-4 ~-4 ~-4 ~4 ~4 ~4 air replace
kill @e[type=item_display, tag=jkpof_null_bomb_show, distance=..5]
execute positioned ~-4 ~-4 ~-4 run scoreboard players operation @a[scores={jkpof.state=2}, dx=8, dy=8, dz=8] jkpof.damage.source.now = @s jkpof.id
execute positioned ~-4 ~-4 ~-4 as @a[scores={jkpof.state=2}, dx=8, dy=8, dz=8] run function jkpof:state/1/hurt/sub/record
kill @s
