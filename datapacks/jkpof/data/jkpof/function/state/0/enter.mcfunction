## 游戏重置
scoreboard players set #state jkpof.int 0
scoreboard players reset * jkpof.state
scoreboard players reset * jkpof.id
scoreboard players reset * jkpof.death
scoreboard players reset * jkpof.spec.vote
scoreboard players reset * jkpof.spawn_egg.ender_dragon
scoreboard players reset * jkpof.spawn_egg.wither
scoreboard players reset * jkpof.spawn_egg.warden
scoreboard players reset * jkpof.spawn_egg.elder_guardian
scoreboard players reset * jkpof.spawn_egg.ghast
scoreboard players reset * jkpof.spawn_egg.blaze
scoreboard players reset * jkpof.X
scoreboard players reset * jkpof.Y
scoreboard players reset * jkpof.Z
difficulty peaceful
gamerule pvp false
gamerule naturalRegeneration true
gamerule announceAdvancements false
gamerule locatorBar false
worldborder set 10000
kill @e[type=item_display, tag=jkpof_barrier]
schedule clear jkpof:state/1/progress/vote/end
tellraw @a [{text: "【幸运之柱】", color: "yellow"}, {text: "游戏已重置！", color: "green"}]

# 清理地图
kill @e[type=marker, tag=jkpof_clean]
summon marker 0 119 0 {Tags: ["jkpof", "jkpof_clean"]}
scoreboard players set @e[type=marker, tag=jkpof_clean, limit=1] jkpof.int 92
bossbar set jkpof:clean visible true
bossbar set jkpof:progress visible false
function jkpof:state/0/player_clear
