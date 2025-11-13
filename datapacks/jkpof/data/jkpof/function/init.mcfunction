scoreboard players operation #version jkpof.int = #cur_version jkpof.int
tellraw @a [{text: "【幸运之柱】", color: "yellow"}, {text: "数据包版本已更新。", color: "green"}]

# bossbar
bossbar add jkpof:progress ""
bossbar set jkpof:progress color blue

# storage
data modify storage jk:pof data.enchantments set value ["aqua_affinity", "bane_of_arthropods", "binding_curse", "blast_protection", "breach", "channeling", "density", "depth_strider", "efficiency", "feather_falling", "fire_aspect", "fire_protection", "flame", "fortune", "frost_walker", "impaling", "infinity", "knockback", "looting", "loyalty", "luck_of_the_sea", "lure", "mending", "multishot", "piercing", "power", "projectile_protection", "protection", "punch", "quick_charge", "respiration", "riptide", "sharpness", "silk_touch", "smite", "soul_speed", "sweeping_edge", "swift_sneak", "thorns", "unbreaking", "vanishing_curse", "wind_burst"]

# 队伍
team add jkpof.red {text: "红队", color: "red"}
team modify jkpof.red color red
team modify jkpof.red collisionRule never
team modify jkpof.red friendlyFire false

team add jkpof.blue {text: "蓝队", color: "blue"}
team modify jkpof.blue color blue
team modify jkpof.blue collisionRule never
team modify jkpof.blue friendlyFire false

team add jkpof.green {text: "绿队", color: "green"}
team modify jkpof.green color green
team modify jkpof.green collisionRule never
team modify jkpof.green friendlyFire false

team add jkpof.yellow {text: "黄队", color: "yellow"}
team modify jkpof.yellow color yellow
team modify jkpof.yellow collisionRule never
team modify jkpof.yellow friendlyFire false

team add jkpof.cyan {text: "青队", color: "aqua"}
team modify jkpof.cyan color aqua
team modify jkpof.cyan collisionRule never
team modify jkpof.cyan friendlyFire false

team add jkpof.white {text: "白队", color: "white"}
team modify jkpof.white color white
team modify jkpof.white collisionRule never
team modify jkpof.white friendlyFire false

team add jkpof.pink {text: "粉队", color: "light_purple"}
team modify jkpof.pink color light_purple
team modify jkpof.pink collisionRule never
team modify jkpof.pink friendlyFire false

team add jkpof.gray {text: "灰队", color: "gray"}
team modify jkpof.gray color gray
team modify jkpof.gray collisionRule never
team modify jkpof.gray friendlyFire false

team add jkpof.gold {text: "橙队", color: "gold"}
team modify jkpof.gold color gold
team modify jkpof.gold collisionRule never
team modify jkpof.gold friendlyFire false

team add jkpof.spec
team modify jkpof.spec prefix {text: "[s] ", color: "gray"}
team modify jkpof.spec color white
team modify jkpof.spec collisionRule never
team modify jkpof.spec friendlyFire false

# 记分板
scoreboard objectives add jkpof.state dummy "玩家状态"
scoreboard objectives add jkpof.id dummy "玩家id"
scoreboard objectives add jkpof.team dummy "玩家队伍"
scoreboard objectives add jkpof.death deathCount "玩家死亡接口"
scoreboard objectives add jkpof.vote trigger "旁观者投票事件"

scoreboard objectives add jkpof.spawn_egg.ender_dragon used:ender_dragon_spawn_egg "玩家生成末影龙"
scoreboard objectives add jkpof.spawn_egg.wither used:wither_spawn_egg "玩家生成凋灵"
scoreboard objectives add jkpof.spawn_egg.warden used:warden_spawn_egg "玩家生成监守者"
scoreboard objectives add jkpof.spawn_egg.elder_guardian used:elder_guardian_spawn_egg "玩家生成远古守卫者"
scoreboard objectives add jkpof.spawn_egg.ghast used:ghast_spawn_egg "玩家生成恶魂"
scoreboard objectives add jkpof.spawn_egg.blaze used:blaze_spawn_egg "玩家生成烈焰人"
scoreboard objectives add jkpof.spawn_egg.breeze used:breeze_spawn_egg "玩家生成旋风人"

scoreboard objectives add jkpof.item.order dummy "物品标号"
scoreboard objectives add jkpof.item.color dummy "物品颜色标号"
scoreboard objectives add jkpof.X dummy "实体X坐标"
scoreboard objectives add jkpof.Y dummy "实体Y坐标"
scoreboard objectives add jkpof.Z dummy "实体Z坐标"
scoreboard objectives add jkpof.cd.fireball dummy "玩家冷却使用火球"
scoreboard objectives add jkpof.cd.platform dummy "玩家冷却使用急救平台"
scoreboard objectives add jkpof.cd.ender_eye dummy "玩家冷却使用折跃珍珠"

scoreboard objectives add jkpof.hp health "♥"
scoreboard objectives setdisplay list jkpof.hp
scoreboard objectives setdisplay below_name jkpof.hp

scoreboard players set #2 jkpof.int 2
scoreboard players set #60 jkpof.int 60

scoreboard players set #lobby_item jkpof.int 0
scoreboard players set #event_order jkpof.int 0
scoreboard players set #event_ctrl jkpof.int 1
scoreboard players set #event_vote jkpof.int 1
scoreboard players set #event_enable__1 jkpof.int 1
scoreboard players set #event_enable_0 jkpof.int 1
scoreboard players set #event_enable_1 jkpof.int 1
scoreboard players set #event_enable_2 jkpof.int 1
scoreboard players set #event_enable_3 jkpof.int 1
scoreboard players set #event_enable_4 jkpof.int 1
scoreboard players set #event_enable_5 jkpof.int 1

# 其他游戏规则已在地图设定好了
worldborder center 0 0
worldborder warning distance 0
worldborder damage amount 1
worldborder damage buffer 1

kill @e[type=!player]
#- 游戏
summon text_display 0 70 -90 {Tags: ["jkpof"], brightness: {block: 15, sky: 15}, alignment: "center", billboard: "center", transformation: {left_rotation: [0f, 0f, 0f, 1f], right_rotation: [0f, 0f, 0f, 1f], scale: [6f, 6f, 6f], translation: [0f, 0f, 0f]}, text: {text: "游戏", color: "green", bold: true}}
summon text_display 0 69 -90 {Tags: ["jkpof", "jkpof_display_players"], brightness: {block: 15, sky: 15}, line_width: 200, alignment: "center", billboard: "center", transformation: {left_rotation: [0f, 0f, 0f, 1f], right_rotation: [0f, 0f, 0f, 1f], scale: [2f, 2f, 2f], translation: [0f, 0f, 0f]}, text: {text: "自动分配人数。", color: "yellow"}}
summon text_display 0 70 -100 {Tags: ["jkpof"], brightness: {block: 15, sky: 15}, line_width: 200, alignment: "center", billboard: "center", transformation: {left_rotation: [0f, 0f, 0f, 1f], right_rotation: [0f, 0f, 0f, 1f], scale: [3f, 3f, 3f], translation: [0f, 0f, 0f]}, text: [{text: "【幸运之柱】", color: "yellow"}, {text: " v1.1\n", color: "gold"}, {text: "玩家初始生成在各个柱子顶端，\n每隔一段时间获得随机物品，\n最终目标是活到最后。\n", color: "green"}, {text: "本地图作者：JK137", color: "aqua"}], background: -2030043136}

#- 道具
summon text_display -10 70 -100 {Tags: ["jkpof"], brightness: {block: 15, sky: 15}, alignment: "center", billboard: "center", transformation: {left_rotation: [0f, 0f, 0f, 1f], right_rotation: [0f, 0f, 0f, 1f], scale: [6f, 6f, 6f], translation: [0f, 0f, 0f]}, text: {text: "道具", color: "red", bold: true}}

summon item_display -10 68.25 -100 {Tags: ["jkpof", "jkpof_display_lobby_item"], brightness: {block: 15, sky: 15}, transformation: {left_rotation: [0f, 0f, 0f, 1f], right_rotation: [0f, 0f, 0f, 1f], scale: [1f, 1f, 1f], translation: [0f, 0f, 0f]}, item: {id: "grass_block"}, Rotation: [90f, 0f]}
summon text_display -10 66.5 -100 {Tags: ["jkpof", "jkpof_display_lobby_item"], brightness: {block: 15, sky: 15}, alignment: "center", text: "原版修改\n无耐久物品最大堆叠个数均为 64，\n若发现有物品未堆叠则需丢出刷新。", Rotation: [-90f, 0f]}

summon interaction -10 65.75 -100 {Tags: ["jkpof", "jkpof_interaction", "jkpof_display_lobby", "jkpof_display_lobby_item"], response: true, width: .5, height: .5}
summon text_display -10 66 -100 {Tags: ["jkpof"], brightness: {block: 15, sky: 15}, alignment: "center", text: {text: "下一个", color: "yellow"}, Rotation: [-90f, 0f]}

#- 事件
summon text_display 10 70 -100 {Tags: ["jkpof"], brightness: {block: 15, sky: 15}, alignment: "center", billboard: "center", transformation: {left_rotation: [0f, 0f, 0f, 1f], right_rotation: [0f, 0f, 0f, 1f], scale: [6f, 6f, 6f], translation: [0f, 0f, 0f]}, text: {text: "事件", color: "aqua", bold: true}}

summon item_display 10 68.25 -100 {Tags: ["jkpof", "jkpof_display_event_order"], brightness: {block: 15, sky: 15}, transformation: {left_rotation: [0f, 0f, 0f, 1f], right_rotation: [0f, 0f, 0f, 1f], scale: [1f, 1f, 1f], translation: [0f, 0f, 0f]}, item: {id: "emerald"}, Rotation: [-90f, 0f]}
summon text_display 10 66.5 -100 {Tags: ["jkpof", "jkpof_display_event_order"], brightness: {block: 15, sky: 15}, alignment: "center", text: ["无事发生", "\n", {text: "无事发生也是一种事件，\n开局时必出一次。", color: "aqua"}], Rotation: [90f, 0f]}

summon interaction 10 65.75 -101 {Tags: ["jkpof", "jkpof_interaction", "jkpof_display_lobby", "jkpof_display_event_page_prev"], response: true, width: .5, height: .5}
summon text_display 10 66 -101 {Tags: ["jkpof"], brightness: {block: 15, sky: 15}, alignment: "center", text: {text: "上一个", color: "yellow"}, Rotation: [90f, 0f]}

summon interaction 10 65.75 -100 {Tags: ["jkpof", "jkpof_interaction", "jkpof_display_lobby", "jkpof_display_event_switch"], response: true, width: .5, height: .5}
summon text_display 10 66 -100 {Tags: ["jkpof", "jkpof_display_event_switch"], brightness: {block: 15, sky: 15}, alignment: "center", text: {text: "已启用", color: "green"}, Rotation: [90f, 0f]}

summon interaction 10 65.75 -99 {Tags: ["jkpof", "jkpof_interaction", "jkpof_display_lobby", "jkpof_display_event_page_next"], response: true, width: .5, height: .5}
summon text_display 10 66 -99 {Tags: ["jkpof"], brightness: {block: 15, sky: 15}, alignment: "center", text: {text: "下一个", color: "yellow"}, Rotation: [90f, 0f]}

summon text_display 10 65.25 -100 {Tags: ["jkpof"], brightness: {block: 15, sky: 15}, alignment: "center", text: {text: "一键操作", color: "gold"}, Rotation: [90f, 0f]}
summon interaction 10 65 -100 {Tags: ["jkpof", "jkpof_interaction", "jkpof_display_lobby", "jkpof_display_event_ctrl"], response: true, width: .5, height: .5}
summon text_display 10 65 -100 {Tags: ["jkpof", "jkpof_display_event_ctrl"], brightness: {block: 15, sky: 15}, alignment: "center", text: {text: "已全部开启", color: "green"}, Rotation: [90f, 0f]}

#- 设置
summon text_display 0 70 -110 {Tags: ["jkpof"], brightness: {block: 15, sky: 15}, alignment: "center", billboard: "center", transformation: {left_rotation: [0f, 0f, 0f, 1f], right_rotation: [0f, 0f, 0f, 1f], scale: [6f, 6f, 6f], translation: [0f, 0f, 0f]}, text: {text: "设置", color: "gold", bold: true}}

## 物品
summon text_display -2 67.5 -110 {Tags: ["jkpof", "jkpof_display_ctrl_item_show"], brightness: {block: 15, sky: 15}, alignment: "center", billboard: "center", text: {text: "随机物品给予", color: "gold"}}

# 玩家模式
summon interaction -2 64.25 -110 {Tags: ["jkpof", "jkpof_interaction", "jkpof_interaction_ctrl_item_player"], response: true, width: .5, height: .5}
summon text_display -2 65.05 -110 {Tags: ["jkpof", "jkpof_display_ctrl_item_player"], brightness: {block: 15, sky: 15}, alignment: "center", billboard: "center", text: {text: "玩家模式", color: "green"}}
summon item_display -2 64.5 -110 {Tags: ["jkpof", "jkpof_display_ctrl_item_player"], brightness: {block: 15, sky: 15}, CustomNameVisible: 1b, transformation: {left_rotation: [0f, 0f, 0f, 1f], right_rotation: [0f, 0f, 0f, 1f], scale: [.4f, .4f, .4f], translation: [0f, 0f, 0f]}, CustomName: {text: "不同", color: "yellow"}, item: {id: "raw_gold"}, Rotation: [-180f, 0f]}

# 每次个数
summon interaction -2 65.25 -110 {Tags: ["jkpof", "jkpof_interaction", "jkpof_interaction_ctrl_item_count"], response: true, width: .5, height: .5}
summon text_display -2 66.05 -110 {Tags: ["jkpof", "jkpof_display_ctrl_item_count"], brightness: {block: 15, sky: 15}, alignment: "center", billboard: "center", text: {text: "每次个数", color: "green"}}
summon text_display -2 65.5 -110 {Tags: ["jkpof", "jkpof_display_show_ctrl_item_count"], brightness: {block: 15, sky: 15}, alignment: "center", billboard: "center", text: {text: "1", color: "yellow"}}

# 间隔秒数
summon interaction -2 66.25 -110 {Tags: ["jkpof", "jkpof_interaction", "jkpof_interaction_ctrl_item_time"], response: true, width: .5, height: .5}
summon text_display -2 67.05 -110 {Tags: ["jkpof", "jkpof_display_ctrl_item_time"], brightness: {block: 15, sky: 15}, alignment: "center", billboard: "center", text: {text: "间隔秒数", color: "green"}}
summon text_display -2 66.5 -110 {Tags: ["jkpof", "jkpof_display_show_ctrl_item_time"], brightness: {block: 15, sky: 15}, alignment: "center", billboard: "center", text: {text: "5", color: "yellow"}}

## 柱子
summon text_display 0 68.5 -110 {Tags: ["jkpof", "jkpof_display_ctrl_pillar_show"], brightness: {block: 15, sky: 15}, alignment: "center", billboard: "center", text: {text: "柱子", color: "gold"}}

# 种类
summon interaction 0 64.25 -110 {Tags: ["jkpof", "jkpof_interaction", "jkpof_interaction_ctrl_pillar_type"], response: true, width: .5, height: .5}
summon text_display 0 65.05 -110 {Tags: ["jkpof", "jkpof_display_ctrl_pillar_type"], brightness: {block: 15, sky: 15}, alignment: "center", billboard: "center", text: {text: "种类", color: "green"}}
summon item_display 0 64.5 -110 {Tags: ["jkpof", "jkpof_display_ctrl_pillar_type"], brightness: {block: 15, sky: 15}, CustomNameVisible: 1b, transformation: {left_rotation: [0f, 0f, 0f, 1f], right_rotation: [0f, 0f, 0f, 1f], scale: [.4f, .4f, .4f], translation: [0f, 0f, 0f]}, CustomName: [{text: "不同", color: "aqua"}, {text: "随机", color: "yellow"}], item: {id: "purpur_pillar"}, Rotation: [-180f, 0f]}

# 数量
summon interaction 0 65.25 -110 {Tags: ["jkpof", "jkpof_interaction", "jkpof_interaction_ctrl_pillar_count"], response: true, width: .5, height: .5}
summon text_display 0 66.05 -110 {Tags: ["jkpof", "jkpof_display_ctrl_pillar_count"], brightness: {block: 15, sky: 15}, alignment: "center", billboard: "center", text: {text: "数量", color: "green"}}
summon text_display 0 65.5 -110 {Tags: ["jkpof", "jkpof_display_show_ctrl_pillar_count"], brightness: {block: 15, sky: 15}, alignment: "center", billboard: "center", text: {text: "自动", color: "yellow"}}

# 队伍
summon interaction 0 64.25 -113 {Tags: ["jkpof", "jkpof_interaction", "jkpof_interaction_ctrl_team"], response: true, width: .5, height: .5}
summon text_display 0 65.05 -113 {Tags: ["jkpof", "jkpof_display_ctrl_team"], brightness: {block: 15, sky: 15}, alignment: "center", billboard: "center", text: {text: "队伍\n（需设定柱子数）", color: "green"}}
summon text_display 0 64.5 -113 {Tags: ["jkpof", "jkpof_display_show_ctrl_team"], brightness: {block: 15, sky: 15}, alignment: "center", billboard: "center", text: {text: "无效", color: "yellow"}}

# 高度
summon interaction 0 66.25 -110 {Tags: ["jkpof", "jkpof_interaction", "jkpof_interaction_ctrl_pillar_height"], response: true, width: .5, height: .5}
summon text_display 0 67.05 -110 {Tags: ["jkpof", "jkpof_display_ctrl_pillar_height"], brightness: {block: 15, sky: 15}, alignment: "center", billboard: "center", text: {text: "高度", color: "green"}}
summon text_display 0 66.5 -110 {Tags: ["jkpof", "jkpof_display_show_ctrl_pillar_height"], brightness: {block: 15, sky: 15}, alignment: "center", billboard: "center", text: {text: "40", color: "yellow"}}

# 间距
summon interaction 0 67.25 -110 {Tags: ["jkpof", "jkpof_interaction", "jkpof_interaction_ctrl_pillar_distance"], response: true, width: .5, height: .5}
summon text_display 0 68.05 -110 {Tags: ["jkpof", "jkpof_display_ctrl_pillar_distance"], brightness: {block: 15, sky: 15}, alignment: "center", billboard: "center", text: {text: "间距", color: "green"}}
summon text_display 0 67.5 -110 {Tags: ["jkpof", "jkpof_display_show_ctrl_pillar_distance"], brightness: {block: 15, sky: 15}, alignment: "center", billboard: "center", text: {text: "<-->", color: "yellow"}}

## 地图
summon interaction 1 64.25 -110 {Tags: ["jkpof", "jkpof_interaction", "jkpof_interaction_ctrl_map"], response: true, width: .5, height: .5}
summon text_display 1 65.05 -110 {Tags: ["jkpof", "jkpof_display_ctrl_map"], brightness: {block: 15, sky: 15}, alignment: "center", billboard: "center", text: {text: "地图", color: "green"}}
summon item_display 1 64.5 -110 {Tags: ["jkpof", "jkpof_display_ctrl_map"], brightness: {block: 15, sky: 15}, CustomNameVisible: 1b, transformation: {left_rotation: [0f, 0f, 0f, 1f], right_rotation: [0f, 0f, 0f, 1f], scale: [.4f, .4f, .4f], translation: [0f, 0f, 0f]}, CustomName: ["", {text: "禁用", color: "yellow"}], item: {id: "barrier"}, Rotation: [-180f, 0f]}

## 地面
summon text_display 2 68.5 -110 {Tags: ["jkpof", "jkpof_display_ctrl_ground_show"], brightness: {block: 15, sky: 15}, alignment: "center", billboard: "center", text: {text: "地面", color: "gold"}}

# 种类
summon interaction 2 64.25 -110 {Tags: ["jkpof", "jkpof_interaction", "jkpof_interaction_ctrl_ground_type"], response: true, width: .5, height: .5}
summon text_display 2 65.05 -110 {Tags: ["jkpof", "jkpof_display_ctrl_ground_type"], brightness: {block: 15, sky: 15}, alignment: "center", billboard: "center", text: {text: "种类", color: "green"}}
summon item_display 2 64.5 -110 {Tags: ["jkpof", "jkpof_display_ctrl_ground_type"], brightness: {block: 15, sky: 15}, CustomNameVisible: 1b, transformation: {left_rotation: [0f, 0f, 0f, 1f], right_rotation: [0f, 0f, 0f, 1f], scale: [.4f, .4f, .4f], translation: [0f, 0f, 0f]}, CustomName: {text: "随机", color: "yellow"}, item: {id: "chiseled_stone_bricks"}, Rotation: [-180f, 0f]}

# 半径
summon interaction 2 65.25 -110 {Tags: ["jkpof", "jkpof_interaction", "jkpof_interaction_ctrl_ground_radius"], response: true, width: .5, height: .5}
summon text_display 2 66.05 -110 {Tags: ["jkpof", "jkpof_display_ctrl_ground_radius"], brightness: {block: 15, sky: 15}, alignment: "center", billboard: "center", text: {text: "半径", color: "green"}}
summon text_display 2 65.5 -110 {Tags: ["jkpof", "jkpof_display_show_ctrl_ground_radius"], brightness: {block: 15, sky: 15}, alignment: "center", billboard: "center", text: {text: "16", color: "yellow"}}

# 层数
summon interaction 2 66.25 -110 {Tags: ["jkpof", "jkpof_interaction", "jkpof_interaction_ctrl_ground_floor"], response: true, width: .5, height: .5}
summon text_display 2 67.05 -110 {Tags: ["jkpof", "jkpof_display_ctrl_ground_floor"], brightness: {block: 15, sky: 15}, alignment: "center", billboard: "center", text: {text: "层数", color: "green"}}
summon text_display 2 66.5 -110 {Tags: ["jkpof", "jkpof_display_show_ctrl_ground_floor"], brightness: {block: 15, sky: 15}, alignment: "center", billboard: "center", text: {text: "1", color: "yellow"}}

# 各层随机
summon interaction 2 67.25 -110 {Tags: ["jkpof", "jkpof_interaction", "jkpof_interaction_ctrl_ground_floor_random"], response: true, width: .5, height: .5}
summon text_display 2 68.05 -110 {Tags: ["jkpof", "jkpof_display_ctrl_ground_floor_random"], brightness: {block: 15, sky: 15}, alignment: "center", billboard: "center", text: {text: "各层随机", color: "green"}}
summon text_display 2 67.5 -110 {Tags: ["jkpof", "jkpof_display_show_ctrl_ground_floor_random"], brightness: {block: 15, sky: 15}, alignment: "center", billboard: "center", text: {text: "无效", color: "yellow"}}

## 杂项
summon text_display 0 66.75 -116 {Tags: ["jkpof", "jkpof_display_ctrl_others_show"], brightness: {block: 15, sky: 15}, alignment: "center", billboard: "center", text: {text: "杂项", color: "gold"}}

# 时间
summon interaction 0 64.25 -116 {Tags: ["jkpof", "jkpof_interaction", "jkpof_interaction_ctrl_time"], response: true, width: .5, height: .5}
summon text_display 0 65.05 -116 {Tags: ["jkpof", "jkpof_display_ctrl_time"], brightness: {block: 15, sky: 15}, alignment: "center", billboard: "center", text: {text: "时间", color: "green"}}
summon item_display 0 64.5 -116 {Tags: ["jkpof", "jkpof_display_ctrl_time"], brightness: {block: 15, sky: 15}, CustomNameVisible: 1b, transformation: {left_rotation: [0f, 0f, 0f, 1f], right_rotation: [0f, 0f, 0f, 1f], scale: [.4f, .4f, .4f], translation: [0f, 0f, 0f]}, CustomName: {text: "中午", color: "yellow"}, item: {id: "clock"}, Glowing: true, Rotation: [-180f, 0f]}

# 夜视
summon interaction 1 64.25 -116 {Tags: ["jkpof", "jkpof_interaction", "jkpof_interaction_ctrl_night_vision"], response: true, width: .5, height: .5}
summon text_display 1 65.05 -116 {Tags: ["jkpof", "jkpof_display_ctrl_night_vision"], brightness: {block: 15, sky: 15}, alignment: "center", billboard: "center", text: {text: "夜视效果", color: "green"}}
summon item_display 1 64.5 -116 {Tags: ["jkpof", "jkpof_display_ctrl_night_vision"], brightness: {block: 15, sky: 15}, CustomNameVisible: 1b, transformation: {left_rotation: [0f, 0f, 0f, 1f], right_rotation: [0f, 0f, 0f, 1f], scale: [.4f, .4f, .4f], translation: [0f, 0f, 0f]}, CustomName: {text: "开启", color: "yellow"}, item: {id: "golden_carrot"}, Rotation: [-180f, 0f]}

# 自然回血
summon interaction -1 64.25 -116 {Tags: ["jkpof", "jkpof_interaction", "jkpof_interaction_ctrl_natural_regen"], response: true, width: .5, height: .5}
summon text_display -1 65.05 -116 {Tags: ["jkpof", "jkpof_display_ctrl_natural_regen"], brightness: {block: 15, sky: 15}, alignment: "center", billboard: "center", text: {text: "自然回血", color: "green"}}
summon item_display -1 64.5 -116 {Tags: ["jkpof", "jkpof_display_ctrl_natural_regen"], brightness: {block: 15, sky: 15}, CustomNameVisible: 1b, transformation: {left_rotation: [0f, 0f, 0f, 1f], right_rotation: [0f, 0f, 0f, 1f], scale: [.4f, .4f, .4f], translation: [0f, 0f, 0f]}, CustomName: {text: "开启", color: "yellow"}, item: {id: "golden_apple"}, Rotation: [-180f, 0f]}

# 进度展示
summon interaction -1 65.25 -116 {Tags: ["jkpof", "jkpof_interaction", "jkpof_interaction_ctrl_advancement"], response: true, width: .5, height: .5}
summon text_display -1 66.05 -116 {Tags: ["jkpof", "jkpof_display_ctrl_advancement"], brightness: {block: 15, sky: 15}, alignment: "center", billboard: "center", text: {text: "进度展示", color: "green"}}
summon item_display -1 65.5 -116 {Tags: ["jkpof", "jkpof_display_ctrl_advancement"], brightness: {block: 15, sky: 15}, CustomNameVisible: 1b, transformation: {left_rotation: [0f, 0f, 0f, 1f], right_rotation: [0f, 0f, 0f, 1f], scale: [.4f, .4f, .4f], translation: [0f, 0f, 0f]}, CustomName: {text: "开启", color: "yellow"}, item: {id: "dragon_egg"}, Rotation: [-180f, 0f]}

# 定位栏
summon interaction 1 65.25 -116 {Tags: ["jkpof", "jkpof_interaction", "jkpof_interaction_ctrl_locator_bar"], response: true, width: .5, height: .5}
summon text_display 1 66.05 -116 {Tags: ["jkpof", "jkpof_display_ctrl_locator_bar"], brightness: {block: 15, sky: 15}, alignment: "center", billboard: "center", text: {text: "定位栏", color: "green"}}
summon item_display 1 65.5 -116 {Tags: ["jkpof", "jkpof_display_ctrl_locator_bar"], brightness: {block: 15, sky: 15}, CustomNameVisible: 1b, transformation: {left_rotation: [0f, 0f, 0f, 1f], right_rotation: [0f, 0f, 0f, 1f], scale: [.4f, .4f, .4f], translation: [0f, 0f, 0f]}, CustomName: {text: "开启", color: "yellow"}, item: {id: "compass"}, Rotation: [-180f, 0f]}

# 预设
summon interaction 0 65.25 -116 {Tags: ["jkpof", "jkpof_interaction", "jkpof_interaction_ctrl_preset"], response: true, width: .5, height: .5}
summon text_display 0 66.05 -116 {Tags: ["jkpof", "jkpof_display_ctrl_preset"], brightness: {block: 15, sky: 15}, alignment: "center", billboard: "center", text: {text: "预设", color: "green", bold: true}}
summon item_display 0 65.5 -116 {Tags: ["jkpof", "jkpof_display_ctrl_preset"], brightness: {block: 15, sky: 15}, CustomNameVisible: 1b, transformation: {left_rotation: [0f, 0f, 0f, 1f], right_rotation: [0f, 0f, 0f, 1f], scale: [.4f, .4f, .4f], translation: [0f, 0f, 0f]}, CustomName: {text: "默认", color: "yellow"}, item: {id: "iron_ingot"}, Rotation: [-180f, 0f]}

scoreboard players set #ctrl_preset jkpof.int -1
function jkpof:state/0/interaction/ctrl/preset/show

## 重置
function jkpof:state/0/enter
