fill ~-1 ~ ~-1 ~1 ~2 ~1 air
execute if score #ctrl_team jkpof.int matches 0 run setblock ~ ~-1 ~ glass strict
execute if score #ctrl_team jkpof.int matches 1..2 as @s[scores={jkpof.id=1}] run setblock ~ ~-1 ~ red_stained_glass strict
execute if score #ctrl_team jkpof.int matches 1..2 as @s[scores={jkpof.id=2}] run setblock ~ ~-1 ~ blue_stained_glass strict
execute if score #ctrl_team jkpof.int matches 1..2 as @s[scores={jkpof.id=3}] run setblock ~ ~-1 ~ green_stained_glass strict
execute if score #ctrl_team jkpof.int matches 1..2 as @s[scores={jkpof.id=4}] run setblock ~ ~-1 ~ yellow_stained_glass strict
execute if score #ctrl_team jkpof.int matches 1..2 as @s[scores={jkpof.id=5}] run setblock ~ ~-1 ~ cyan_stained_glass strict
execute if score #ctrl_team jkpof.int matches 1..2 as @s[scores={jkpof.id=6}] run setblock ~ ~-1 ~ white_stained_glass strict
execute if score #ctrl_team jkpof.int matches 1..2 as @s[scores={jkpof.id=7}] run setblock ~ ~-1 ~ pink_stained_glass strict
execute if score #ctrl_team jkpof.int matches 1..2 as @s[scores={jkpof.id=8}] run setblock ~ ~-1 ~ gray_stained_glass strict
execute if score #ctrl_team jkpof.int matches 1..2 as @s[scores={jkpof.id=9}] run setblock ~ ~-1 ~ orange_stained_glass strict
execute if score #ctrl_team jkpof.int matches 1..2 as @s[scores={jkpof.id=10}] run setblock ~ ~-1 ~ lime_stained_glass strict
execute if score #ctrl_team jkpof.int matches 1..2 as @s[scores={jkpof.id=11}] run setblock ~ ~-1 ~ purple_stained_glass strict
execute if score #ctrl_team jkpof.int matches 1..2 as @s[scores={jkpof.id=12}] run setblock ~ ~-1 ~ light_gray_stained_glass strict
