# 清理地图用标记
fill ~-32 ~ ~-32 ~32 ~-1 ~32 air
tp @s ~ ~-2 ~
scoreboard players remove @s jkpof.int 1
execute store result bossbar jkpof:clean value run scoreboard players get @s jkpof.int
execute if score @s jkpof.int matches ..0 run bossbar set jkpof:clean visible false
kill @s[scores={jkpof.int=..0}]
