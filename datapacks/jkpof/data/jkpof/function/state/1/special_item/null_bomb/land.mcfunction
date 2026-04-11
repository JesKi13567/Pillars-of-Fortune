# 触发
execute unless score @s jkpof.int matches -1.. align xyz run function jkpof:state/1/special_item/null_bomb/display
scoreboard players remove @s jkpof.int 1
execute as @s[scores={jkpof.int=..0}] run function jkpof:state/1/special_item/null_bomb/real
