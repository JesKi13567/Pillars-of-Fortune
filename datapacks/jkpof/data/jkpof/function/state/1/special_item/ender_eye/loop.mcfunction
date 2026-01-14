scoreboard players remove #ender_eye_temp jkpof.int 1
tp @s ~ ~ ~

# 特效
particle witch ~ ~ ~ 0.2 0.2 0.2 0.01 20
playsound item.chorus_fruit.teleport player @a

# 循环
execute if score #ender_eye_temp jkpof.int matches 1.. positioned ^ ^ ^1 run function jkpof:state/1/special_item/ender_eye/loop
