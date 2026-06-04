execute if score #ctrl_upside_down jkpof.int matches 0 as @s[tag=max, scores={jkpof.int=1..}] run function jkpof:state/1/height_limit/barrier/tp {sb: '-', op: 'remove', m: 'ax'}
execute if score #ctrl_upside_down jkpof.int matches 1 as @s[tag=min, scores={jkpof.int=1..}] run function jkpof:state/1/height_limit/barrier/tp {sb: '', op: 'add', m: 'in'}

execute as @s[tag=min] positioned ~-1000 ~-1 ~-1000 as @a[scores={jkpof.state=2}, dx=2000, dz=2000, dy=-1000] run function jkpof:state/1/height_limit/player/low
execute as @s[tag=max] positioned ~-1000 ~ ~-1000 as @a[scores={jkpof.state=2}, dx=2000, dz=2000, dy=1000] run function jkpof:state/1/height_limit/player/high
execute as @s[tag=max] positioned ~-1000 ~200 ~-1000 as @a[scores={jkpof.state=2}, dx=2000, dz=2000, dy=1000] run damage @s 100 out_of_world
