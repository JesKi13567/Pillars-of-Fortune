# 清理地图用标记
fill ~-32 ~ ~-32 ~32 ~-1 ~32 air
tp @s ~ ~-2 ~
scoreboard players remove @s jkpof.int 1
kill @s[scores={jkpof.int=..0}]
