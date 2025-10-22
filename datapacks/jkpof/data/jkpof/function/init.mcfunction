# bossbar
bossbar remove jkpof:clean
bossbar add jkpof:clean {text: "地图清理中", color: "yellow", bold: true}
bossbar set jkpof:clean color green
bossbar set jkpof:clean max 96

bossbar remove jkpof:progress
bossbar add jkpof:progress ""
bossbar set jkpof:progress color blue

# 记分板
scoreboard objectives remove jkpof.state
scoreboard objectives add jkpof.state dummy "玩家状态"

scoreboard objectives remove jkpof.value
scoreboard objectives add jkpof.value dummy "玩家分数"

scoreboard objectives remove jkpof.id
scoreboard objectives add jkpof.id dummy "玩家id"

scoreboard objectives remove jkpof.Y
scoreboard objectives add jkpof.Y dummy "实体高度"

scoreboard objectives remove jkpof.cd.fireball
scoreboard objectives add jkpof.cd.fireball dummy "玩家使用火球冷却"

scoreboard objectives remove jkpof.death
scoreboard objectives add jkpof.death deathCount "玩家死亡接口"

scoreboard objectives remove jkpof.hp
scoreboard objectives add jkpof.hp health "♥"
scoreboard objectives setdisplay list jkpof.hp
scoreboard objectives setdisplay below_name jkpof.hp

scoreboard players set #60 jkpof.int 60
scoreboard players operation #version jkpof.int = #cur_version jkpof.int
tellraw @a [{text: "【幸运之柱】", color: "yellow"}, {text: "数据包版本已更新。", color: "green"}]

# 一些游戏规则已在地图设定好了
#fill -33 136 -33 33 136 33 red_wool
#fill -32 136 -32 32 130 32 barrier
worldborder center 0 0
worldborder set 10000
worldborder warning distance 0
worldborder damage amount 1
worldborder damage buffer 1

## 大厅
#- 游玩提示
kill @e[tag=jkpof_lobby]
summon text_display 123.5 50 .5 {Tags: ["jkpof", "jkpof_lobby", "jkpof_display"], brightness: {block: 15, sky: 15}, line_width: 200, billboard: "center", alignment: "center", text: ["保持在 ", {translate: block.minecraft.lime_concrete, color: "green"}, " 上来准备游戏！"]}
summon text_display 123.5 49.75 .5 {Tags: ["jkpof", "jkpof_lobby", "jkpof_display", "jkpof_display_players"], brightness: {block: 15, sky: 15}, line_width: 200, billboard: "center", alignment: "center", text: [{text: "需要 ", color: "yellow"}, {text: "2~9", color: "gold"}, " 人。"]}
summon text_display 135.5 49 .5 {Tags: ["jkpof", "jkpof_lobby", "jkpof_display"], brightness: {block: 15, sky: 15}, line_width: 200, billboard: "center", alignment: "center", text: [{text: "【幸运之柱】\n", color: "yellow"}, {text: "玩家初始生成在各个柱子顶端，\n每隔一段时间获得随机物品，\n最终目标是活到最后。\n", color: "green"}, {text: "本地图作者：JK137", color: "aqua"}], background: -2030043136}
summon text_display 135.5 51 .5 {Tags: ["jkpof", "jkpof_lobby", "jkpof_display"], brightness: {block: 15, sky: 15}, line_width: 200, billboard: "center", alignment: "center", text: ["系统给予的\n", {translate: "item.minecraft.fire_charge", color: "yellow"}, ",", {translate: "block.minecraft.tnt", color: "yellow"}, ",", {translate: "item.minecraft.end_crystal", color: "yellow"}, "\n有特殊效果。"]}

#- 按钮
kill @e[tag=jkpof_button]

## 柱子
summon text_display 140.5 53 .5 {Tags: ["jkpof", "jkpof_button", "jkpof_display", "jkpof_display_ctrl_pillar_show"], brightness: {block: 15, sky: 15}, alignment: "center", billboard: "center", text: {text: "柱子设置", color: "gold"}}

# 种类
summon interaction 140.5 48.75 .5 {Tags: ["jkpof", "jkpof_button", "jkpof_interaction", "jkpof_interaction_ctrl_pillar_type"], response: true, width: 0.5, height: 0.5}
summon text_display 140.5 49.55 .5 {Tags: ["jkpof", "jkpof_button", "jkpof_display", "jkpof_display_ctrl_pillar_type"], brightness: {block: 15, sky: 15}, alignment: "center", billboard: "center", text: {text: "种类", color: "green"}}
summon item_display 140.5 49 .5 {Tags: ["jkpof", "jkpof_button", "jkpof_display", "jkpof_display_ctrl_pillar_type"], brightness: {block: 15, sky: 15}, CustomNameVisible: 1b, billboard: "center", transformation: {left_rotation: [0.0f, 0.0f, 0.0f, 1.0f], right_rotation: [0.0f, 0.0f, 0.0f, 1.0f], scale: [0.4f, 0.4f, 0.4f], translation: [0.0f, 0.0f, 0.0f]}, CustomName: [{text: "不同", color: "aqua"}, {text: "随机", color: "yellow"}], item: {count: 1, id: "purpur_pillar"}}

# 数量
summon interaction 140.5 49.75 .5 {Tags: ["jkpof", "jkpof_button", "jkpof_interaction", "jkpof_interaction_ctrl_pillar_count"], response: true, width: 0.5, height: 0.5}
summon text_display 140.5 50.55 .5 {Tags: ["jkpof", "jkpof_button", "jkpof_display", "jkpof_display_ctrl_pillar_count"], brightness: {block: 15, sky: 15}, alignment: "center", billboard: "center", text: {text: "数量/游玩人数", color: "green"}}
summon text_display 140.5 50 .5 {Tags: ["jkpof", "jkpof_button", "jkpof_display", "jkpof_display_show_ctrl_pillar_count"], brightness: {block: 15, sky: 15}, alignment: "center", billboard: "center", text: {text: "9", color: "yellow"}}

# 高度
summon interaction 140.5 50.75 .5 {Tags: ["jkpof", "jkpof_button", "jkpof_interaction", "jkpof_interaction_ctrl_pillar_height"], response: true, width: 0.5, height: 0.5}
summon text_display 140.5 51.55 .5 {Tags: ["jkpof", "jkpof_button", "jkpof_display", "jkpof_display_ctrl_pillar_height"], brightness: {block: 15, sky: 15}, alignment: "center", billboard: "center", text: {text: "高度", color: "green"}}
summon text_display 140.5 51 .5 {Tags: ["jkpof", "jkpof_button", "jkpof_display", "jkpof_display_show_ctrl_pillar_height"], brightness: {block: 15, sky: 15}, alignment: "center", billboard: "center", text: {text: "40", color: "yellow"}}

# 柱子间距
summon interaction 140.5 51.75 .5 {Tags: ["jkpof", "jkpof_button", "jkpof_interaction", "jkpof_interaction_ctrl_pillar_distance"], response: true, width: 0.5, height: 0.5}
summon text_display 140.5 52.55 .5 {Tags: ["jkpof", "jkpof_button", "jkpof_display", "jkpof_display_ctrl_pillar_distance"], brightness: {block: 15, sky: 15}, alignment: "center", billboard: "center", text: {text: "间距", color: "green"}}
summon text_display 140.5 52 .5 {Tags: ["jkpof", "jkpof_button", "jkpof_display", "jkpof_display_show_ctrl_pillar_distance"], brightness: {block: 15, sky: 15}, alignment: "center", billboard: "center", text: {text: "<-->", color: "yellow"}}

## 物品
summon text_display 140.5 52 -1.5 {Tags: ["jkpof", "jkpof_button", "jkpof_display", "jkpof_display_ctrl_item_show"], brightness: {block: 15, sky: 15}, alignment: "center", billboard: "center", text: {text: "随机物品给予设置", color: "gold"}}

# 玩家模式
summon interaction 140.5 48.75 -1.5 {Tags: ["jkpof", "jkpof_button", "jkpof_interaction", "jkpof_interaction_ctrl_item_player"], response: true, width: 0.5, height: 0.5}
summon text_display 140.5 49.55 -1.5 {Tags: ["jkpof", "jkpof_button", "jkpof_display", "jkpof_display_ctrl_item_player"], brightness: {block: 15, sky: 15}, alignment: "center", billboard: "center", text: {text: "玩家模式", color: "green"}}
summon item_display 140.5 49 -1.5 {Tags: ["jkpof", "jkpof_button", "jkpof_display", "jkpof_display_ctrl_item_player"], brightness: {block: 15, sky: 15}, CustomNameVisible: 1b, billboard: "center", transformation: {left_rotation: [0.0f, 0.0f, 0.0f, 1.0f], right_rotation: [0.0f, 0.0f, 0.0f, 1.0f], scale: [0.4f, 0.4f, 0.4f], translation: [0.0f, 0.0f, 0.0f]}, CustomName: {text: "不同", color: "yellow"}, item: {count: 1, id: "raw_gold"}}

# 每次个数
summon interaction 140.5 49.75 -1.5 {Tags: ["jkpof", "jkpof_button", "jkpof_interaction", "jkpof_interaction_ctrl_item_count"], response: true, width: 0.5, height: 0.5}
summon text_display 140.5 50.55 -1.5 {Tags: ["jkpof", "jkpof_button", "jkpof_display", "jkpof_display_ctrl_item_count"], brightness: {block: 15, sky: 15}, alignment: "center", billboard: "center", text: {text: "每次个数", color: "green"}}
summon text_display 140.5 50 -1.5 {Tags: ["jkpof", "jkpof_button", "jkpof_display", "jkpof_display_show_ctrl_item_count"], brightness: {block: 15, sky: 15}, alignment: "center", billboard: "center", text: {text: "1", color: "yellow"}}

# 间隔秒数
summon interaction 140.5 50.75 -1.5 {Tags: ["jkpof", "jkpof_button", "jkpof_interaction", "jkpof_interaction_ctrl_item_time"], response: true, width: 0.5, height: 0.5}
summon text_display 140.5 51.55 -1.5 {Tags: ["jkpof", "jkpof_button", "jkpof_display", "jkpof_display_ctrl_item_time"], brightness: {block: 15, sky: 15}, alignment: "center", billboard: "center", text: {text: "间隔秒数", color: "green"}}
summon text_display 140.5 51 -1.5 {Tags: ["jkpof", "jkpof_button", "jkpof_display", "jkpof_display_show_ctrl_item_time"], brightness: {block: 15, sky: 15}, alignment: "center", billboard: "center", text: {text: "5", color: "yellow"}}

## 地面
summon text_display 140.5 53 2.5 {Tags: ["jkpof", "jkpof_button", "jkpof_display", "jkpof_display_ctrl_ground_show"], brightness: {block: 15, sky: 15}, alignment: "center", billboard: "center", text: {text: "地面设置", color: "gold"}}

# 种类
summon interaction 140.5 48.75 2.5 {Tags: ["jkpof", "jkpof_button", "jkpof_interaction", "jkpof_interaction_ctrl_ground_type"], response: true, width: 0.5, height: 0.5}
summon text_display 140.5 49.55 2.5 {Tags: ["jkpof", "jkpof_button", "jkpof_display", "jkpof_display_ctrl_ground_type"], brightness: {block: 15, sky: 15}, alignment: "center", billboard: "center", text: {text: "种类", color: "green"}}
summon item_display 140.5 49 2.5 {Tags: ["jkpof", "jkpof_button", "jkpof_display", "jkpof_display_ctrl_ground_type"], brightness: {block: 15, sky: 15}, CustomNameVisible: 1b, billboard: "center", transformation: {left_rotation: [0.0f, 0.0f, 0.0f, 1.0f], right_rotation: [0.0f, 0.0f, 0.0f, 1.0f], scale: [0.4f, 0.4f, 0.4f], translation: [0.0f, 0.0f, 0.0f]}, CustomName: {text: "随机", color: "yellow"}, item: {count: 1, id: "chiseled_stone_bricks"}}

# 半径
summon interaction 140.5 49.75 2.5 {Tags: ["jkpof", "jkpof_button", "jkpof_interaction", "jkpof_interaction_ctrl_ground_radius"], response: true, width: 0.5, height: 0.5}
summon text_display 140.5 50.55 2.5 {Tags: ["jkpof", "jkpof_button", "jkpof_display", "jkpof_display_ctrl_ground_radius"], brightness: {block: 15, sky: 15}, alignment: "center", billboard: "center", text: {text: "半径", color: "green"}}
summon text_display 140.5 50 2.5 {Tags: ["jkpof", "jkpof_button", "jkpof_display", "jkpof_display_show_ctrl_ground_radius"], brightness: {block: 15, sky: 15}, alignment: "center", billboard: "center", text: {text: "16", color: "yellow"}}

# 层数
summon interaction 140.5 50.75 2.5 {Tags: ["jkpof", "jkpof_button", "jkpof_interaction", "jkpof_interaction_ctrl_ground_floor"], response: true, width: 0.5, height: 0.5}
summon text_display 140.5 51.55 2.5 {Tags: ["jkpof", "jkpof_button", "jkpof_display", "jkpof_display_ctrl_ground_floor"], brightness: {block: 15, sky: 15}, alignment: "center", billboard: "center", text: {text: "层数", color: "green"}}
summon text_display 140.5 51 2.5 {Tags: ["jkpof", "jkpof_button", "jkpof_display", "jkpof_display_show_ctrl_ground_floor"], brightness: {block: 15, sky: 15}, alignment: "center", billboard: "center", text: {text: "1", color: "yellow"}}

# 各层随机
summon interaction 140.5 51.75 2.5 {Tags: ["jkpof", "jkpof_button", "jkpof_interaction", "jkpof_interaction_ctrl_ground_floor_random"], response: true, width: 0.5, height: 0.5}
summon text_display 140.5 52.55 2.5 {Tags: ["jkpof", "jkpof_button", "jkpof_display", "jkpof_display_ctrl_ground_floor_random"], brightness: {block: 15, sky: 15}, alignment: "center", billboard: "center", text: {text: "各层随机", color: "green"}}
summon text_display 140.5 52 2.5 {Tags: ["jkpof", "jkpof_button", "jkpof_display", "jkpof_display_show_ctrl_ground_floor_random"], brightness: {block: 15, sky: 15}, alignment: "center", billboard: "center", text: {text: "否", color: "yellow"}}

## 杂项
summon text_display 142.5 52 .5 {Tags: ["jkpof", "jkpof_button", "jkpof_display", "jkpof_display_ctrl_others_show"], brightness: {block: 15, sky: 15}, alignment: "center", billboard: "center", text: {text: "杂项", color: "gold"}}

# 时间
summon interaction 142.5 48.75 .5 {Tags: ["jkpof", "jkpof_button", "jkpof_interaction", "jkpof_interaction_ctrl_time"], response: true, width: 0.5, height: 0.5}
summon text_display 142.5 49.55 .5 {Tags: ["jkpof", "jkpof_button", "jkpof_display", "jkpof_display_ctrl_time"], brightness: {block: 15, sky: 15}, alignment: "center", billboard: "center", text: {text: "时间设置", color: "green"}}
summon item_display 142.5 49 .5 {Tags: ["jkpof", "jkpof_button", "jkpof_display", "jkpof_display_ctrl_time"], brightness: {block: 15, sky: 15}, CustomNameVisible: 1b, billboard: "center", transformation: {left_rotation: [0.0f, 0.0f, 0.0f, 1.0f], right_rotation: [0.0f, 0.0f, 0.0f, 1.0f], scale: [0.4f, 0.4f, 0.4f], translation: [0.0f, 0.0f, 0.0f]}, CustomName: {text: "中午", color: "yellow"}, item: {id: "clock", count: 1}, Glowing: true}

# 夜视
summon interaction 142.5 49.75 .5 {Tags: ["jkpof", "jkpof_button", "jkpof_interaction", "jkpof_interaction_ctrl_night_vision"], response: true, width: 0.5, height: 0.5}
summon text_display 142.5 50.55 .5 {Tags: ["jkpof", "jkpof_button", "jkpof_display", "jkpof_display_ctrl_night_vision"], brightness: {block: 15, sky: 15}, alignment: "center", billboard: "center", text: {text: "夜视效果", color: "green"}}
summon item_display 142.5 50 .5 {Tags: ["jkpof", "jkpof_button", "jkpof_display", "jkpof_display_ctrl_night_vision"], brightness: {block: 15, sky: 15}, item: {id: "golden_carrot", count: 1}, CustomNameVisible: 1b, billboard: "center", transformation: {left_rotation: [0.0f, 0.0f, 0.0f, 1.0f], right_rotation: [0.0f, 0.0f, 0.0f, 1.0f], scale: [0.4f, 0.4f, 0.4f], translation: [0.0f, 0.0f, 0.0f]}, CustomName: {text: "开启", color: "yellow"}, Glowing: true}

# 预设
summon interaction 142.5 50.75 .5 {Tags: ["jkpof", "jkpof_button", "jkpof_interaction", "jkpof_interaction_ctrl_preset"], response: true, width: 0.5, height: 0.5}
summon text_display 142.5 51.55 .5 {Tags: ["jkpof", "jkpof_button", "jkpof_display", "jkpof_display_ctrl_preset"], brightness: {block: 15, sky: 15}, alignment: "center", billboard: "center", text: {text: "预设", color: "green"}}
summon item_display 142.5 51 .5 {Tags: ["jkpof", "jkpof_button", "jkpof_display", "jkpof_display_ctrl_preset"], brightness: {block: 15, sky: 15}, CustomNameVisible: 1b, billboard: "center", transformation: {left_rotation: [0.0f, 0.0f, 0.0f, 1.0f], right_rotation: [0.0f, 0.0f, 0.0f, 1.0f], scale: [0.4f, 0.4f, 0.4f], translation: [0.0f, 0.0f, 0.0f]}, CustomName: [{text: "默认", color: "yellow"}], item: {count: 1, id: "iron_ingot"}}

scoreboard players set #ctrl_preset jkpof.int -1
function jkpof:state/0/interaction/ctrl/preset/show

## 重置
function jkpof:state/0/enter
