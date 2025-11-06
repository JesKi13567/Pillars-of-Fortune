# 过高，往下传送
execute store result score @s jkpof.Y run data get entity @s Pos[1]
tp @s[scores={jkpof.Y=123..}] ~ ~-1 ~
