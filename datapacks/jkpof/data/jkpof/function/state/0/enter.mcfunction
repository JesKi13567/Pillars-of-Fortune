## 游戏重置
scoreboard players set #state jkpof.int 0
scoreboard players reset * jkpof.state
scoreboard players reset * jkpof.death
scoreboard players reset * jkpof.id
difficulty peaceful
gamerule pvp false
gamerule naturalRegeneration true
worldborder set 10000
schedule clear jkpof:state/1/progress/vote/end
tellraw @a [{text: "【幸运之柱】", color: "yellow"}, {text: "游戏已重置！", color: "green"}]

# 限高
kill @e[type=item_display, tag=jkpof_barrier]
summon item_display 0 120 0 {Tags: ["jkpof", "jkpof_barrier"], brightness: {block: 15, sky: 15}, item: {id: "barrier"}, teleport_duration: 10, transformation: {left_rotation: [0.7071068f, 0.0f, 0.0f, 0.7071068f], right_rotation: [0.0f, 0.0f, 0.0f, 1.0f], scale: [49f, 49f, 0.1f], translation: [0.0f, 0.0f, 0.0f]}}

# 清理地图
kill @e[type=marker, tag=jkpof_clean]
summon marker 0 119 0 {Tags: ["jkpof", "jkpof_clean"]}
scoreboard players set @e[limit=1, type=marker, tag=jkpof_clean] jkpof.int 92
bossbar set jkpof:clean visible true
bossbar set jkpof:progress visible false

function jkpof:state/0/player_clear
