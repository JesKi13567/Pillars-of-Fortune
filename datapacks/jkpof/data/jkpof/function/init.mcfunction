scoreboard players operation #version jkpof.int = #cur_version jkpof.int
tellraw @a [{text: "【幸运之柱】", color: "yellow"}, {text: "数据包版本已更新。", color: "green"}]

# bossbar
bossbar remove jkpof:clean
bossbar add jkpof:clean {text: "地图清理中", color: "yellow", bold: true}
bossbar set jkpof:clean color green
bossbar set jkpof:clean max 92

bossbar remove jkpof:progress
bossbar add jkpof:progress ""
bossbar set jkpof:progress color blue

# storage
data modify storage jk:pof data.enchantments set value ["aqua_affinity", "bane_of_arthropods", "binding_curse", "blast_protection", "breach", "channeling", "density", "depth_strider", "efficiency", "feather_falling", "fire_aspect", "fire_protection", "flame", "fortune", "frost_walker", "impaling", "infinity", "knockback", "looting", "loyalty", "luck_of_the_sea", "lure", "mending", "multishot", "piercing", "power", "projectile_protection", "protection", "punch", "quick_charge", "respiration", "riptide", "sharpness", "silk_touch", "smite", "soul_speed", "sweeping_edge", "swift_sneak", "thorns", "unbreaking", "vanishing_curse", "wind_burst"]

# 记分板
scoreboard objectives add jkpof.state dummy "玩家状态"
scoreboard objectives add jkpof.id dummy "玩家id"
scoreboard objectives add jkpof.death deathCount "玩家死亡接口"
scoreboard objectives add jkpof.spec.vote trigger "旁观者投票事件"

scoreboard objectives add jkpof.spawn_egg.ender_dragon used:ender_dragon_spawn_egg "玩家生成末影龙"
scoreboard objectives add jkpof.spawn_egg.wither used:wither_spawn_egg "玩家生成凋灵"
scoreboard objectives add jkpof.spawn_egg.warden used:warden_spawn_egg "玩家生成监守者"
scoreboard objectives add jkpof.spawn_egg.elder_guardian used:elder_guardian_spawn_egg "玩家生成远古守卫者"
scoreboard objectives add jkpof.spawn_egg.ghast used:ghast_spawn_egg "玩家生成恶魂"
scoreboard objectives add jkpof.spawn_egg.blaze used:blaze_spawn_egg "玩家生成烈焰人"

scoreboard objectives add jkpof.item.order dummy "物品标号"
scoreboard objectives add jkpof.item.color dummy "物品颜色标号"
scoreboard objectives add jkpof.X dummy "实体X坐标"
scoreboard objectives add jkpof.Y dummy "实体Y坐标"
scoreboard objectives add jkpof.Z dummy "实体Z坐标"
scoreboard objectives add jkpof.cd.fireball dummy "玩家冷却使用火球"
scoreboard objectives add jkpof.cd.platform dummy "玩家冷却使用急救平台"

scoreboard objectives add jkpof.hp health "♥"
scoreboard objectives setdisplay list jkpof.hp
scoreboard objectives setdisplay below_name jkpof.hp

scoreboard players set #2 jkpof.int 2
scoreboard players set #60 jkpof.int 60

scoreboard players set #lobby_item jkpof.int 0
scoreboard players set #lobby_event jkpof.int 0

# 其他游戏规则已在地图设定好了
worldborder center 0 0
worldborder set 10000
worldborder warning distance 0
worldborder damage amount 1
worldborder damage buffer 1

kill @e[type=!player]
#- 游戏
summon text_display 90 72 0 {Tags: ["jkpof"], brightness: {block: 15, sky: 15}, alignment: "center", billboard: "center", transformation: {left_rotation: [0f, 0f, 0f, 1f], right_rotation: [0f, 0f, 0f, 1f], scale: [6f, 6f, 6f], translation: [0f, 0f, 0f]}, text: {text: "游戏", color: "green", bold: true}}
summon text_display 90 70 0 {Tags: ["jkpof", "jkpof_display_players"], brightness: {block: 15, sky: 15}, line_width: 200, alignment: "center", billboard: "center", transformation: {left_rotation: [0f, 0f, 0f, 1f], right_rotation: [0f, 0f, 0f, 1f], scale: [2f, 2f, 2f], translation: [0f, 0f, 0f]}, text: [{text: "需要 ", color: "yellow"}, {text: "2~9", color: "gold"}, " 人。"]}
summon text_display 100 72 0 {Tags: ["jkpof"], brightness: {block: 15, sky: 15}, line_width: 200, alignment: "center", billboard: "center", transformation: {left_rotation: [0f, 0f, 0f, 1f], right_rotation: [0f, 0f, 0f, 1f], scale: [3f, 3f, 3f], translation: [0f, 0f, 0f]}, text: [{text: "【幸运之柱】", color: "yellow"}, {text: " v1.0.3\n", color: "gold"}, {text: "玩家初始生成在各个柱子顶端，\n每隔一段时间获得随机物品，\n最终目标是活到最后。\n", color: "green"}, {text: "本地图作者：JK137", color: "aqua"}], background: -2030043136}

#- 道具
summon text_display 100 72 -10 {Tags: ["jkpof"], brightness: {block: 15, sky: 15}, alignment: "center", billboard: "center", transformation: {left_rotation: [0f, 0f, 0f, 1f], right_rotation: [0f, 0f, 0f, 1f], scale: [6f, 6f, 6f], translation: [0f, 0f, 0f]}, text: {text: "道具", color: "red", bold: true}}
summon interaction 100 65.75 -10 {Tags: ["jkpof", "jkpof_interaction", "jkpof_display_lobby", "jkpof_display_lobby_item"], response: true, width: .5, height: .5}
summon text_display 100 66 -10 {Tags: ["jkpof"], brightness: {block: 15, sky: 15}, alignment: "center", text: {text: "下一个", color: "yellow"}}
summon item_display 100 68 -10 {Tags: ["jkpof", "jkpof_display_lobby_item"], brightness: {block: 15, sky: 15}, transformation: {left_rotation: [0f, 0f, 0f, 1f], right_rotation: [0f, 0f, 0f, 1f], scale: [1f, 1f, 1f], translation: [0f, 0f, 0f]}, item: {id: "grass_block"}, Rotation: [-180f, 0f]}
summon text_display 100 66.5 -10 {Tags: ["jkpof", "jkpof_display_lobby_item"], brightness: {block: 15, sky: 15}, alignment: "center", text: "原版修改\n无耐久物品最大堆叠个数均为 64，\n若自己制作的物品未堆叠则需丢出刷新。"}

#- 事件
summon text_display 100 72 10 {Tags: ["jkpof"], brightness: {block: 15, sky: 15}, alignment: "center", billboard: "center", transformation: {left_rotation: [0f, 0f, 0f, 1f], right_rotation: [0f, 0f, 0f, 1f], scale: [6f, 6f, 6f], translation: [0f, 0f, 0f]}, text: {text: "事件", color: "aqua", bold: true}}
summon interaction 100 65.75 10 {Tags: ["jkpof", "jkpof_interaction", "jkpof_display_lobby", "jkpof_display_lobby_event"], response: true, width: .5, height: .5}
summon text_display 100 66 10 {Tags: ["jkpof"], brightness: {block: 15, sky: 15}, alignment: "center", text: {text: "下一个", color: "yellow"}, Rotation: [-180f, 0f]}
summon item_display 100 68 10 {Tags: ["jkpof", "jkpof_display_lobby_event"], brightness: {block: 15, sky: 15}, transformation: {left_rotation: [0f, 0f, 0f, 1f], right_rotation: [0f, 0f, 0f, 1f], scale: [1f, 1f, 1f], translation: [0f, 0f, 0f]}, item: {id: "emerald"}}
summon text_display 100 66.5 10 {Tags: ["jkpof", "jkpof_display_lobby_event"], brightness: {block: 15, sky: 15}, alignment: "center", text: ["无事发生", "\n", {text: "什么事都没有也是一种事件。", color: "aqua"}], Rotation: [-180f, 0f]}

#- 设置
summon text_display 110 72 0 {Tags: ["jkpof"], brightness: {block: 15, sky: 15}, alignment: "center", billboard: "center", transformation: {left_rotation: [0f, 0f, 0f, 1f], right_rotation: [0f, 0f, 0f, 1f], scale: [6f, 6f, 6f], translation: [0f, 0f, 0f]}, text: {text: "设置", color: "gold", bold: true}}

## 柱子
summon text_display 108 68.5 0 {Tags: ["jkpof", "jkpof_display_ctrl_pillar_show"], brightness: {block: 15, sky: 15}, alignment: "center", billboard: "center", text: {text: "柱子", color: "gold"}}

# 种类
summon interaction 108 64.25 0 {Tags: ["jkpof", "jkpof_interaction", "jkpof_interaction_ctrl_pillar_type"], response: true, width: .5, height: .5}
summon text_display 108 65.05 0 {Tags: ["jkpof", "jkpof_display_ctrl_pillar_type"], brightness: {block: 15, sky: 15}, alignment: "center", billboard: "center", text: {text: "种类", color: "green"}}
summon item_display 108 64.5 0 {Tags: ["jkpof", "jkpof_display_ctrl_pillar_type"], brightness: {block: 15, sky: 15}, CustomNameVisible: 1b, billboard: "center", transformation: {left_rotation: [0f, 0f, 0f, 1f], right_rotation: [0f, 0f, 0f, 1f], scale: [.4f, .4f, .4f], translation: [0f, 0f, 0f]}, CustomName: [{text: "不同", color: "aqua"}, {text: "随机", color: "yellow"}], item: {id: "purpur_pillar"}}

# 数量
summon interaction 108 65.25 0 {Tags: ["jkpof", "jkpof_interaction", "jkpof_interaction_ctrl_pillar_count"], response: true, width: .5, height: .5}
summon text_display 108 66.05 0 {Tags: ["jkpof", "jkpof_display_ctrl_pillar_count"], brightness: {block: 15, sky: 15}, alignment: "center", billboard: "center", text: {text: "数量/游玩人数", color: "green"}}
summon text_display 108 65.5 0 {Tags: ["jkpof", "jkpof_display_show_ctrl_pillar_count"], brightness: {block: 15, sky: 15}, alignment: "center", billboard: "center", text: {text: "9", color: "yellow"}}

# 高度
summon interaction 108 66.25 0 {Tags: ["jkpof", "jkpof_interaction", "jkpof_interaction_ctrl_pillar_height"], response: true, width: .5, height: .5}
summon text_display 108 67.05 0 {Tags: ["jkpof", "jkpof_display_ctrl_pillar_height"], brightness: {block: 15, sky: 15}, alignment: "center", billboard: "center", text: {text: "高度", color: "green"}}
summon text_display 108 66.5 0 {Tags: ["jkpof", "jkpof_display_show_ctrl_pillar_height"], brightness: {block: 15, sky: 15}, alignment: "center", billboard: "center", text: {text: "40", color: "yellow"}}

# 柱子间距
summon interaction 108 67.25 0 {Tags: ["jkpof", "jkpof_interaction", "jkpof_interaction_ctrl_pillar_distance"], response: true, width: .5, height: .5}
summon text_display 108 68.05 0 {Tags: ["jkpof", "jkpof_display_ctrl_pillar_distance"], brightness: {block: 15, sky: 15}, alignment: "center", billboard: "center", text: {text: "间距", color: "green"}}
summon text_display 108 67.5 0 {Tags: ["jkpof", "jkpof_display_show_ctrl_pillar_distance"], brightness: {block: 15, sky: 15}, alignment: "center", billboard: "center", text: {text: "<-->", color: "yellow"}}

## 物品
summon text_display 108 67.5 -1.5 {Tags: ["jkpof", "jkpof_display_ctrl_item_show"], brightness: {block: 15, sky: 15}, alignment: "center", billboard: "center", text: {text: "随机物品给予", color: "gold"}}

# 玩家模式
summon interaction 108 64.25 -1.5 {Tags: ["jkpof", "jkpof_interaction", "jkpof_interaction_ctrl_item_player"], response: true, width: .5, height: .5}
summon text_display 108 65.05 -1.5 {Tags: ["jkpof", "jkpof_display_ctrl_item_player"], brightness: {block: 15, sky: 15}, alignment: "center", billboard: "center", text: {text: "玩家模式", color: "green"}}
summon item_display 108 64.5 -1.5 {Tags: ["jkpof", "jkpof_display_ctrl_item_player"], brightness: {block: 15, sky: 15}, CustomNameVisible: 1b, billboard: "center", transformation: {left_rotation: [0f, 0f, 0f, 1f], right_rotation: [0f, 0f, 0f, 1f], scale: [.4f, .4f, .4f], translation: [0f, 0f, 0f]}, CustomName: {text: "不同", color: "yellow"}, item: {id: "raw_gold"}}

# 每次个数
summon interaction 108 65.25 -1.5 {Tags: ["jkpof", "jkpof_interaction", "jkpof_interaction_ctrl_item_count"], response: true, width: .5, height: .5}
summon text_display 108 66.05 -1.5 {Tags: ["jkpof", "jkpof_display_ctrl_item_count"], brightness: {block: 15, sky: 15}, alignment: "center", billboard: "center", text: {text: "每次个数", color: "green"}}
summon text_display 108 65.5 -1.5 {Tags: ["jkpof", "jkpof_display_show_ctrl_item_count"], brightness: {block: 15, sky: 15}, alignment: "center", billboard: "center", text: {text: "1", color: "yellow"}}

# 间隔秒数
summon interaction 108 66.25 -1.5 {Tags: ["jkpof", "jkpof_interaction", "jkpof_interaction_ctrl_item_time"], response: true, width: .5, height: .5}
summon text_display 108 67.05 -1.5 {Tags: ["jkpof", "jkpof_display_ctrl_item_time"], brightness: {block: 15, sky: 15}, alignment: "center", billboard: "center", text: {text: "间隔秒数", color: "green"}}
summon text_display 108 66.5 -1.5 {Tags: ["jkpof", "jkpof_display_show_ctrl_item_time"], brightness: {block: 15, sky: 15}, alignment: "center", billboard: "center", text: {text: "5", color: "yellow"}}

## 地面
summon text_display 108 68.5 2.5 {Tags: ["jkpof", "jkpof_display_ctrl_ground_show"], brightness: {block: 15, sky: 15}, alignment: "center", billboard: "center", text: {text: "地面", color: "gold"}}

# 种类
summon interaction 108 64.25 2.5 {Tags: ["jkpof", "jkpof_interaction", "jkpof_interaction_ctrl_ground_type"], response: true, width: .5, height: .5}
summon text_display 108 65.05 2.5 {Tags: ["jkpof", "jkpof_display_ctrl_ground_type"], brightness: {block: 15, sky: 15}, alignment: "center", billboard: "center", text: {text: "种类", color: "green"}}
summon item_display 108 64.5 2.5 {Tags: ["jkpof", "jkpof_display_ctrl_ground_type"], brightness: {block: 15, sky: 15}, CustomNameVisible: 1b, billboard: "center", transformation: {left_rotation: [0f, 0f, 0f, 1f], right_rotation: [0f, 0f, 0f, 1f], scale: [.4f, .4f, .4f], translation: [0f, 0f, 0f]}, CustomName: {text: "随机", color: "yellow"}, item: {id: "chiseled_stone_bricks"}}

# 半径
summon interaction 108 65.25 2.5 {Tags: ["jkpof", "jkpof_interaction", "jkpof_interaction_ctrl_ground_radius"], response: true, width: .5, height: .5}
summon text_display 108 66.05 2.5 {Tags: ["jkpof", "jkpof_display_ctrl_ground_radius"], brightness: {block: 15, sky: 15}, alignment: "center", billboard: "center", text: {text: "半径", color: "green"}}
summon text_display 108 65.5 2.5 {Tags: ["jkpof", "jkpof_display_show_ctrl_ground_radius"], brightness: {block: 15, sky: 15}, alignment: "center", billboard: "center", text: {text: "16", color: "yellow"}}

# 层数
summon interaction 108 66.25 2.5 {Tags: ["jkpof", "jkpof_interaction", "jkpof_interaction_ctrl_ground_floor"], response: true, width: .5, height: .5}
summon text_display 108 67.05 2.5 {Tags: ["jkpof", "jkpof_display_ctrl_ground_floor"], brightness: {block: 15, sky: 15}, alignment: "center", billboard: "center", text: {text: "层数", color: "green"}}
summon text_display 108 66.5 2.5 {Tags: ["jkpof", "jkpof_display_show_ctrl_ground_floor"], brightness: {block: 15, sky: 15}, alignment: "center", billboard: "center", text: {text: "1", color: "yellow"}}

# 各层随机
summon interaction 108 67.25 2.5 {Tags: ["jkpof", "jkpof_interaction", "jkpof_interaction_ctrl_ground_floor_random"], response: true, width: .5, height: .5}
summon text_display 108 68.05 2.5 {Tags: ["jkpof", "jkpof_display_ctrl_ground_floor_random"], brightness: {block: 15, sky: 15}, alignment: "center", billboard: "center", text: {text: "各层随机", color: "green"}}
summon text_display 108 67.5 2.5 {Tags: ["jkpof", "jkpof_display_show_ctrl_ground_floor_random"], brightness: {block: 15, sky: 15}, alignment: "center", billboard: "center", text: {text: "否", color: "yellow"}}

## 杂项
summon text_display 111 65.75 0 {Tags: ["jkpof", "jkpof_display_ctrl_others_show"], brightness: {block: 15, sky: 15}, alignment: "center", billboard: "center", text: {text: "杂项", color: "gold"}}

# 时间
summon interaction 110 64.25 0 {Tags: ["jkpof", "jkpof_interaction", "jkpof_interaction_ctrl_time"], response: true, width: .5, height: .5}
summon text_display 110 65.05 0 {Tags: ["jkpof", "jkpof_display_ctrl_time"], brightness: {block: 15, sky: 15}, alignment: "center", billboard: "center", text: {text: "时间", color: "green"}}
summon item_display 110 64.5 0 {Tags: ["jkpof", "jkpof_display_ctrl_time"], brightness: {block: 15, sky: 15}, CustomNameVisible: 1b, billboard: "center", transformation: {left_rotation: [0f, 0f, 0f, 1f], right_rotation: [0f, 0f, 0f, 1f], scale: [.4f, .4f, .4f], translation: [0f, 0f, 0f]}, CustomName: {text: "中午", color: "yellow"}, item: {id: "clock"}, Glowing: true}

# 夜视
summon interaction 110 65.25 0 {Tags: ["jkpof", "jkpof_interaction", "jkpof_interaction_ctrl_night_vision"], response: true, width: .5, height: .5}
summon text_display 110 66.05 0 {Tags: ["jkpof", "jkpof_display_ctrl_night_vision"], brightness: {block: 15, sky: 15}, alignment: "center", billboard: "center", text: {text: "夜视效果", color: "green"}}
summon item_display 110 65.5 0 {Tags: ["jkpof", "jkpof_display_ctrl_night_vision"], brightness: {block: 15, sky: 15}, CustomNameVisible: 1b, billboard: "center", transformation: {left_rotation: [0f, 0f, 0f, 1f], right_rotation: [0f, 0f, 0f, 1f], scale: [.4f, .4f, .4f], translation: [0f, 0f, 0f]}, CustomName: {text: "开启", color: "yellow"}, item: {id: "golden_carrot"}}

# 自然回血
summon interaction 110 66.25 0 {Tags: ["jkpof", "jkpof_interaction", "jkpof_interaction_ctrl_natural_regen"], response: true, width: .5, height: .5}
summon text_display 110 67.05 0 {Tags: ["jkpof", "jkpof_display_ctrl_natural_regen"], brightness: {block: 15, sky: 15}, alignment: "center", billboard: "center", text: {text: "自然回血", color: "green"}}
summon item_display 110 66.5 0 {Tags: ["jkpof", "jkpof_display_ctrl_natural_regen"], brightness: {block: 15, sky: 15}, CustomNameVisible: 1b, billboard: "center", transformation: {left_rotation: [0f, 0f, 0f, 1f], right_rotation: [0f, 0f, 0f, 1f], scale: [.4f, .4f, .4f], translation: [0f, 0f, 0f]}, CustomName: {text: "开启", color: "yellow"}, item: {id: "golden_apple"}}

# 观众投票
summon interaction 112 64.25 0 {Tags: ["jkpof", "jkpof_interaction", "jkpof_interaction_ctrl_vote"], response: true, width: .5, height: .5}
summon text_display 112 65.05 0 {Tags: ["jkpof", "jkpof_display_ctrl_vote"], brightness: {block: 15, sky: 15}, alignment: "center", billboard: "center", text: {text: "观众投票", color: "green"}}
summon item_display 112 64.5 0 {Tags: ["jkpof", "jkpof_display_ctrl_vote"], brightness: {block: 15, sky: 15}, CustomNameVisible: 1b, billboard: "center", transformation: {left_rotation: [0f, 0f, 0f, 1f], right_rotation: [0f, 0f, 0f, 1f], scale: [.4f, .4f, .4f], translation: [0f, 0f, 0f]}, CustomName: {text: "开启", color: "yellow"}, item: {id: "target"}}

# 事件触发
summon interaction 112 65.25 0 {Tags: ["jkpof", "jkpof_interaction", "jkpof_interaction_ctrl_event"], response: true, width: .5, height: .5}
summon text_display 112 66.05 0 {Tags: ["jkpof", "jkpof_display_ctrl_event"], brightness: {block: 15, sky: 15}, alignment: "center", billboard: "center", text: {text: "事件触发", color: "green"}}
summon item_display 112 65.5 0 {Tags: ["jkpof", "jkpof_display_ctrl_event"], brightness: {block: 15, sky: 15}, CustomNameVisible: 1b, billboard: "center", transformation: {left_rotation: [0f, 0f, 0f, 1f], right_rotation: [0f, 0f, 0f, 1f], scale: [.4f, .4f, .4f], translation: [0f, 0f, 0f]}, CustomName: {text: "开启", color: "yellow"}, item: {id: "chicken_spawn_egg"}}

# 进度展示
summon interaction 112 66.25 0 {Tags: ["jkpof", "jkpof_interaction", "jkpof_interaction_ctrl_advancement"], response: true, width: .5, height: .5}
summon text_display 112 67.05 0 {Tags: ["jkpof", "jkpof_display_ctrl_advancement"], brightness: {block: 15, sky: 15}, alignment: "center", billboard: "center", text: {text: "进度展示", color: "green"}}
summon item_display 112 66.5 0 {Tags: ["jkpof", "jkpof_display_ctrl_advancement"], brightness: {block: 15, sky: 15}, CustomNameVisible: 1b, billboard: "center", transformation: {left_rotation: [0f, 0f, 0f, 1f], right_rotation: [0f, 0f, 0f, 1f], scale: [.4f, .4f, .4f], translation: [0f, 0f, 0f]}, CustomName: {text: "开启", color: "yellow"}, item: {id: "map"}}

# 定位栏
summon interaction 111 64.25 0 {Tags: ["jkpof", "jkpof_interaction", "jkpof_interaction_ctrl_locator_bar"], response: true, width: .5, height: .5}
summon text_display 111 65.05 0 {Tags: ["jkpof", "jkpof_display_ctrl_locator_bar"], brightness: {block: 15, sky: 15}, alignment: "center", billboard: "center", text: {text: "定位栏", color: "green"}}
summon item_display 111 64.5 0 {Tags: ["jkpof", "jkpof_display_ctrl_locator_bar"], brightness: {block: 15, sky: 15}, CustomNameVisible: 1b, billboard: "center", transformation: {left_rotation: [0f, 0f, 0f, 1f], right_rotation: [0f, 0f, 0f, 1f], scale: [.4f, .4f, .4f], translation: [0f, 0f, 0f]}, CustomName: {text: "开启", color: "yellow"}, item: {id: "compass"}}

# 预设
summon interaction 111 66.25 0 {Tags: ["jkpof", "jkpof_interaction", "jkpof_interaction_ctrl_preset"], response: true, width: .5, height: .5}
summon text_display 111 67.05 0 {Tags: ["jkpof", "jkpof_display_ctrl_preset"], brightness: {block: 15, sky: 15}, alignment: "center", billboard: "center", text: {text: "预设", color: "green", bold: true}}
summon item_display 111 66.5 0 {Tags: ["jkpof", "jkpof_display_ctrl_preset"], brightness: {block: 15, sky: 15}, CustomNameVisible: 1b, billboard: "center", transformation: {left_rotation: [0f, 0f, 0f, 1f], right_rotation: [0f, 0f, 0f, 1f], scale: [.4f, .4f, .4f], translation: [0f, 0f, 0f]}, CustomName: {text: "默认", color: "yellow"}, item: {id: "iron_ingot"}}

scoreboard players set #ctrl_preset jkpof.int -1
function jkpof:state/0/interaction/ctrl/preset/show

## 重置
function jkpof:state/0/enter
