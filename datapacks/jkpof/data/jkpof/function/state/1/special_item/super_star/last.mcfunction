scoreboard players remove @s jkpof.super_star 1

effect give @s resistance 1 4 true
attribute @s knockback_resistance base set 100

# 特效
particle effect{color: [1, 1, 1]} ~ ~ ~ 0 0 0 1 1
particle effect{color: [1, 0, 0]} ~ ~ ~ 0 0 0 1 1
particle effect{color: [0, 1, 0]} ~ ~ ~ 0 0 0 1 1
particle effect{color: [0, 0, 1]} ~ ~ ~ 0 0 0 1 1
function jkpof:state/1/special_item/super_star/note_

# 结束
execute as @s[scores={jkpof.super_star=0}] run attribute @s knockback_resistance base reset
