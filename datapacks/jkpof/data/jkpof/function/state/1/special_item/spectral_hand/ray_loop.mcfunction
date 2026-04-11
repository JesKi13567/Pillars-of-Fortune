tag @a[limit=1, distance=..2, scores={jkpof.state=2}, tag=!jkpof_immune_ray] add jkpof_spectral_hand
execute if entity @a[limit=1, scores={jkpof.state=2}, tag=jkpof_spectral_hand] run scoreboard players set @s jkpof.ray 0

# 循环
scoreboard players remove @s jkpof.ray 1
execute as @s[scores={jkpof.ray=1..}] positioned ^ ^ ^1 run function jkpof:state/1/special_item/spectral_hand/ray_loop
