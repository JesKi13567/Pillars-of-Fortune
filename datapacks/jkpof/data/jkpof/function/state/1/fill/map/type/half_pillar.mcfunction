# 柱子
execute store result score @s jkpof.int run random value 0..1
$execute if score #ctrl_upside_down jkpof.int matches 0 as @s[scores={jkpof.int=0}] at @s run fill ~ ~-2 ~ ~ 1 ~ $(block1) strict
$execute if score #ctrl_upside_down jkpof.int matches 0 as @s[scores={jkpof.int=1}] at @s run fill ~ ~-2 ~ ~ 1 ~ $(block2) strict

$execute if score #ctrl_upside_down jkpof.int matches 1 as @s[scores={jkpof.int=0}] at @s run fill ~ ~3 ~ ~ 49 ~ $(block1) strict
$execute if score #ctrl_upside_down jkpof.int matches 1 as @s[scores={jkpof.int=1}] at @s run fill ~ ~3 ~ ~ 49 ~ $(block2) strict
