scoreboard players set #loaded jkpof.int 1
tellraw @a [{storage: "jk:pof", nbt: "txt.POF", color: "yellow"}, {storage: "jk:pof", nbt: "txt.datapack.updated", color: "green"}]

# bossbar
bossbar add jkpof:progress ""
bossbar set jkpof:progress color blue

# storage
data modify storage jk:pof data.enchantments set value ["aqua_affinity", "bane_of_arthropods", "binding_curse", "blast_protection", "breach", "channeling", "density", "depth_strider", "efficiency", "feather_falling", "fire_aspect", "fire_protection", "flame", "fortune", "frost_walker", "impaling", "infinity", "knockback", "looting", "loyalty", "luck_of_the_sea", "lunge", "lure", "mending", "multishot", "piercing", "power", "projectile_protection", "protection", "punch", "quick_charge", "respiration", "riptide", "sharpness", "silk_touch", "smite", "soul_speed", "sweeping_edge", "swift_sneak", "thorns", "unbreaking", "vanishing_curse", "wind_burst"]

# 队伍
team add jkpof.red {text: "红队", color: "red"}
team modify jkpof.red color red
team modify jkpof.red collisionRule never
team modify jkpof.red friendlyFire false

team add jkpof.blue {text: "蓝队", color: "blue"}
team modify jkpof.blue color blue
team modify jkpof.blue collisionRule never
team modify jkpof.blue friendlyFire false

team add jkpof.green {text: "绿队", color: "dark_green"}
team modify jkpof.green color dark_green
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

team add jkpof.gray {text: "灰队", color: "dark_gray"}
team modify jkpof.gray color dark_gray
team modify jkpof.gray collisionRule never
team modify jkpof.gray friendlyFire false

team add jkpof.gold {text: "橙队", color: "gold"}
team modify jkpof.gold color gold
team modify jkpof.gold collisionRule never
team modify jkpof.gold friendlyFire false

team add jkpof.lime {text: "黄绿队", color: "green"}
team modify jkpof.lime color green
team modify jkpof.lime collisionRule never
team modify jkpof.lime friendlyFire false

team add jkpof.purple {text: "紫队", color: "dark_purple"}
team modify jkpof.purple color dark_purple
team modify jkpof.purple collisionRule never
team modify jkpof.purple friendlyFire false

team add jkpof.light_gray {text: "淡灰队", color: "gray"}
team modify jkpof.light_gray color gray
team modify jkpof.light_gray collisionRule never
team modify jkpof.light_gray friendlyFire false

team add jkpof.spec "旁观者"
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
scoreboard objectives add jkpof.leavegame custom:leave_game "玩家离开游戏"

scoreboard objectives add jkpof.spawn_egg.ender_dragon used:ender_dragon_spawn_egg "玩家生成-末影龙"
scoreboard objectives add jkpof.spawn_egg.wither used:wither_spawn_egg "玩家生成-凋灵"
scoreboard objectives add jkpof.spawn_egg.warden used:warden_spawn_egg "玩家生成-监守者"
scoreboard objectives add jkpof.spawn_egg.elder_guardian used:elder_guardian_spawn_egg "玩家生成-远古守卫者"
scoreboard objectives add jkpof.spawn_egg.ghast used:ghast_spawn_egg "玩家生成-恶魂"
scoreboard objectives add jkpof.spawn_egg.blaze used:blaze_spawn_egg "玩家生成-烈焰人"
scoreboard objectives add jkpof.spawn_egg.breeze used:breeze_spawn_egg "玩家生成-旋风人"
scoreboard objectives add jkpof.spawn_egg.vex used:vex_spawn_egg "玩家生成-恼鬼"
scoreboard objectives add jkpof.spawn_egg.wolf used:wolf_spawn_egg "玩家生成-狼"
scoreboard objectives add jkpof.spawn_egg.cat used:cat_spawn_egg "玩家生成-猫"
scoreboard objectives add jkpof.spawn_egg.parrot used:parrot_spawn_egg "玩家生成-鹦鹉"

scoreboard objectives add jkpof.cd dummy "玩家冷却（刻）"
scoreboard objectives add jkpof.void_charm dummy "虚空护符-持续"
scoreboard objectives add jkpof.use.apple used:apple "苹果-食用"
scoreboard objectives add jkpof.use.golden_apple used:golden_apple "金苹果-食用"
scoreboard objectives add jkpof.use.enchanted_golden_apple used:enchanted_golden_apple "附魔金苹果-食用"
scoreboard objectives add jkpof.death_note.chance dummy "死亡笔记-概率"
scoreboard objectives add jkpof.death_note.cd dummy "死亡笔记-死亡倒计时"

scoreboard objectives add jkpof.item.order dummy "物品标号"
scoreboard objectives add jkpof.item.color dummy "物品颜色标号"
scoreboard objectives add jkpof.X dummy "实体X坐标"
scoreboard objectives add jkpof.Y dummy "实体Y坐标"
scoreboard objectives add jkpof.Z dummy "实体Z坐标"

scoreboard objectives add jkpof.hp health "♥"
scoreboard objectives setdisplay list jkpof.hp
scoreboard objectives setdisplay below_name jkpof.hp

scoreboard players set #2 jkpof.int 2
scoreboard players set #20 jkpof.int 20
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
scoreboard players set #event_enable_6 jkpof.int 1

# 其他游戏规则已在地图设定好了
worldborder center 0 0
worldborder warning distance 0
worldborder damage amount 1
worldborder damage buffer 1

kill @e[type=!player]

# 解析storage文本用
summon text_display 0 0 0 {Tags: ["jkpof", "jkpof_display_text"], view_range: 0}

#- 游戏
summon text_display 0 70 -90 {Tags: ["jkpof", "jkpof_lobby_const_top_play"], brightness: {block: 15, sky: 15}, billboard: "center", transformation: {left_rotation: [0f, 0f, 0f, 1f], right_rotation: [0f, 0f, 0f, 1f], scale: [6f, 6f, 6f], translation: [0f, 0f, 0f]}}
summon text_display 0 70 -100 {Tags: ["jkpof", "jkpof_lobby_const_top_lore"], brightness: {block: 15, sky: 15}, billboard: "center", transformation: {left_rotation: [0f, 0f, 0f, 1f], right_rotation: [0f, 0f, 0f, 1f], scale: [2f, 2f, 2f], translation: [0f, 0f, 0f]}, background: -2030043136, line_width: 1000}
summon text_display 0 67.25 -83.1 {Tags: ["jkpof", "jkpof_display_players"], brightness: {block: 15, sky: 15}, line_width: 1000, background: 0, Rotation: [180f, 0f]}
summon text_display 0 66.75 -83.1 {Tags: ["jkpof", "jkpof_display_players_count"], brightness: {block: 15, sky: 15}, line_width: 1000, background: 0, Rotation: [180f, 0f]}

# 队伍模式
summon interaction 0 65.5 -82.8 {Tags: ["jkpof", "jkpof_ctrl", "jkpof_ctrl_team"], response: true, width: .5, height: .5}
summon text_display 0 65.75 -83.1 {Tags: ["jkpof", "jkpof_display_ctrl_team"], brightness: {block: 15, sky: 15}, background: 0, Rotation: [180f, 0f]}
summon text_display 0 65.5 -83.1 {Tags: ["jkpof", "jkpof_display_show_ctrl_team"], brightness: {block: 15, sky: 15}, background: 0, Rotation: [180f, 0f]}

# 柱子数
summon interaction 0 64.5 -82.8 {Tags: ["jkpof", "jkpof_ctrl", "jkpof_ctrl_pillar_count"], response: true, width: .5, height: .5}
summon text_display 0 64.75 -83.1 {Tags: ["jkpof", "jkpof_display_ctrl_pillar_count"], brightness: {block: 15, sky: 15}, background: 0, Rotation: [180f, 0f]}
summon text_display 0 64.5 -83.1 {Tags: ["jkpof", "jkpof_display_show_ctrl_pillar_count"], brightness: {block: 15, sky: 15}, background: 0, Rotation: [180f, 0f]}

#- 道具
summon text_display -10 70 -100 {Tags: ["jkpof", "jkpof_lobby_const_top_items"], brightness: {block: 15, sky: 15}, billboard: "center", transformation: {left_rotation: [0f, 0f, 0f, 1f], right_rotation: [0f, 0f, 0f, 1f], scale: [6f, 6f, 6f], translation: [0f, 0f, 0f]}}

summon item_display -10 68.25 -100 {Tags: ["jkpof", "jkpof_display_lobby_item", "-1"], brightness: {block: 15, sky: 15}, transformation: {left_rotation: [0f, 0f, 0f, 1f], right_rotation: [0f, 0f, 0f, 1f], scale: [1f, 1f, 1f], translation: [0f, 0f, 0f]}, Rotation: [90f, 0f]}
summon text_display -10 66.25 -100 {Tags: ["jkpof", "jkpof_display_lobby_item", "-1"], brightness: {block: 15, sky: 15}, Rotation: [-90f, 0f], line_width: 1000}

summon interaction -10 65.5 -98.0 {Tags: ["jkpof", "jkpof_display_lobby_item", "0"], response: true, width: .5, height: .5}
summon item_display -10 65.75 -98.0 {Tags: ["jkpof", "jkpof_display_lobby_item", "0"], brightness: {block: 15, sky: 15}, transformation: {left_rotation: [0f, 0f, 0f, 1f], right_rotation: [0f, 0f, 0f, 1f], scale: [.45f, .45f, .45f], translation: [0f, 0f, 0f]}, item: {id: "totem_of_undying"}, Rotation: [90f, 0f]}
summon interaction -10 65.5 -98.5 {Tags: ["jkpof", "jkpof_display_lobby_item", "1"], response: true, width: .5, height: .5}
summon item_display -10 65.75 -98.5 {Tags: ["jkpof", "jkpof_display_lobby_item", "1"], brightness: {block: 15, sky: 15}, transformation: {left_rotation: [0f, 0f, 0f, 1f], right_rotation: [0f, 0f, 0f, 1f], scale: [.45f, .45f, .45f], translation: [0f, 0f, 0f]}, item: {id: "fire_charge"}, Rotation: [90f, 0f]}
summon interaction -10 65.5 -99.0 {Tags: ["jkpof", "jkpof_display_lobby_item", "2"], response: true, width: .5, height: .5}
summon item_display -10 65.75 -99.0 {Tags: ["jkpof", "jkpof_display_lobby_item", "2"], brightness: {block: 15, sky: 15}, transformation: {left_rotation: [0f, 0f, 0f, 1f], right_rotation: [0f, 0f, 0f, 1f], scale: [.45f, .45f, .45f], translation: [0f, 0f, 0f]}, item: {id: "dragon_breath"}, Rotation: [90f, 0f]}
summon interaction -10 65.5 -99.5 {Tags: ["jkpof", "jkpof_display_lobby_item", "3"], response: true, width: .5, height: .5}
summon item_display -10 65.75 -99.5 {Tags: ["jkpof", "jkpof_display_lobby_item", "3"], brightness: {block: 15, sky: 15}, transformation: {left_rotation: [0f, 0f, 0f, 1f], right_rotation: [0f, 0f, 0f, 1f], scale: [.45f, .45f, .45f], translation: [0f, 0f, 0f]}, item: {id: "blaze_rod"}, Rotation: [90f, 0f]}
summon interaction -10 65.5 -100.0 {Tags: ["jkpof", "jkpof_display_lobby_item", "4"], response: true, width: .5, height: .5}
summon item_display -10 65.75 -100.0 {Tags: ["jkpof", "jkpof_display_lobby_item", "4"], brightness: {block: 15, sky: 15}, transformation: {left_rotation: [0f, 0f, 0f, 1f], right_rotation: [0f, 0f, 0f, 1f], scale: [.45f, .45f, .45f], translation: [0f, 0f, 0f]}, item: {id: "tnt"}, Rotation: [90f, 0f]}
summon interaction -10 65.5 -100.5 {Tags: ["jkpof", "jkpof_display_lobby_item", "5"], response: true, width: .5, height: .5}
summon item_display -10 65.75 -100.5 {Tags: ["jkpof", "jkpof_display_lobby_item", "5"], brightness: {block: 15, sky: 15}, transformation: {left_rotation: [0f, 0f, 0f, 1f], right_rotation: [0f, 0f, 0f, 1f], scale: [.45f, .45f, .45f], translation: [0f, 0f, 0f]}, item: {id: "end_crystal"}, Rotation: [90f, 0f]}
summon interaction -10 65.5 -101.0 {Tags: ["jkpof", "jkpof_display_lobby_item", "6"], response: true, width: .5, height: .5}
summon item_display -10 65.75 -101.0 {Tags: ["jkpof", "jkpof_display_lobby_item", "6"], brightness: {block: 15, sky: 15}, transformation: {left_rotation: [0f, 0f, 0f, 1f], right_rotation: [0f, 0f, 0f, 1f], scale: [.45f, .45f, .45f], translation: [0f, 0f, 0f]}, item: {id: "stick", components: {enchantment_glint_override: true}}, Rotation: [90f, 0f]}
summon interaction -10 65.0 -98.0 {Tags: ["jkpof", "jkpof_display_lobby_item", "7"], response: true, width: .5, height: .5}
summon item_display -10 65.25 -98.0 {Tags: ["jkpof", "jkpof_display_lobby_item", "7"], brightness: {block: 15, sky: 15}, transformation: {left_rotation: [0f, 0f, 0f, 1f], right_rotation: [0f, 0f, 0f, 1f], scale: [.45f, .45f, .45f], translation: [0f, 0f, 0f]}, item: {id: "netherite_ingot"}, Rotation: [90f, 0f]}
summon interaction -10 65.0 -98.5 {Tags: ["jkpof", "jkpof_display_lobby_item", "8"], response: true, width: .5, height: .5}
summon item_display -10 65.25 -98.5 {Tags: ["jkpof", "jkpof_display_lobby_item", "8"], brightness: {block: 15, sky: 15}, transformation: {left_rotation: [0f, 0f, 0f, 1f], right_rotation: [0f, 0f, 0f, 1f], scale: [.45f, .45f, .45f], translation: [0f, 0f, 0f]}, item: {id: "ender_eye"}, Rotation: [90f, 0f]}
summon interaction -10 65.0 -99.0 {Tags: ["jkpof", "jkpof_display_lobby_item", "9"], response: true, width: .5, height: .5}
summon item_display -10 65.25 -99.0 {Tags: ["jkpof", "jkpof_display_lobby_item", "9"], brightness: {block: 15, sky: 15}, transformation: {left_rotation: [0f, 0f, 0f, 1f], right_rotation: [0f, 0f, 0f, 1f], scale: [.45f, .45f, .45f], translation: [0f, 0f, 0f]}, item: {id: "chest"}, Rotation: [90f, 0f]}
summon interaction -10 65.0 -99.5 {Tags: ["jkpof", "jkpof_display_lobby_item", "10"], response: true, width: .5, height: .5}
summon item_display -10 65.25 -99.5 {Tags: ["jkpof", "jkpof_display_lobby_item", "10"], brightness: {block: 15, sky: 15}, transformation: {left_rotation: [0f, 0f, 0f, 1f], right_rotation: [0f, 0f, 0f, 1f], scale: [.45f, .45f, .45f], translation: [0f, 0f, 0f]}, item: {id: "player_head", components: {profile: "JK137"}}, Rotation: [90f, 0f]}
summon interaction -10 65.0 -100.0 {Tags: ["jkpof", "jkpof_display_lobby_item", "11"], response: true, width: .5, height: .5}
summon item_display -10 65.25 -100.0 {Tags: ["jkpof", "jkpof_display_lobby_item", "11"], brightness: {block: 15, sky: 15}, transformation: {left_rotation: [0f, 0f, 0f, 1f], right_rotation: [0f, 0f, 0f, 1f], scale: [.45f, .45f, .45f], translation: [0f, 0f, 0f]}, item: {id: "bedrock", components: {enchantment_glint_override: true}}, Rotation: [90f, 0f]}
summon interaction -10 65.0 -100.5 {Tags: ["jkpof", "jkpof_display_lobby_item", "12"], response: true, width: .5, height: .5}
summon item_display -10 65.25 -100.5 {Tags: ["jkpof", "jkpof_display_lobby_item", "12"], brightness: {block: 15, sky: 15}, transformation: {left_rotation: [0f, 0f, 0f, 1f], right_rotation: [0f, 0f, 0f, 1f], scale: [.45f, .45f, .45f], translation: [0f, 0f, 0f]}, item: {id: "crossbow"}, Rotation: [90f, 0f]}
summon interaction -10 65.0 -101.0 {Tags: ["jkpof", "jkpof_display_lobby_item", "13"], response: true, width: .5, height: .5}
summon item_display -10 65.25 -101.0 {Tags: ["jkpof", "jkpof_display_lobby_item", "13"], brightness: {block: 15, sky: 15}, transformation: {left_rotation: [0f, 0f, 0f, 1f], right_rotation: [0f, 0f, 0f, 1f], scale: [.45f, .45f, .45f], translation: [0f, 0f, 0f]}, item: {id: "writable_book", components: {enchantment_glint_override: true}}, Rotation: [90f, 0f]}
summon interaction -10 64.5 -98.0 {Tags: ["jkpof", "jkpof_display_lobby_item", "14"], response: true, width: .5, height: .5}
summon item_display -10 64.75 -98.0 {Tags: ["jkpof", "jkpof_display_lobby_item", "14"], brightness: {block: 15, sky: 15}, transformation: {left_rotation: [0f, 0f, 0f, 1f], right_rotation: [0f, 0f, 0f, 1f], scale: [.45f, .45f, .45f], translation: [0f, 0f, 0f]}, item: {id: "creeper_spawn_egg"}, Rotation: [90f, 0f]}
summon interaction -10 64.5 -98.5 {Tags: ["jkpof", "jkpof_display_lobby_item", "15"], response: true, width: .5, height: .5}
summon item_display -10 64.75 -98.5 {Tags: ["jkpof", "jkpof_display_lobby_item", "15"], brightness: {block: 15, sky: 15}, transformation: {left_rotation: [0f, 0f, 0f, 1f], right_rotation: [0f, 0f, 0f, 1f], scale: [.45f, .45f, .45f], translation: [0f, 0f, 0f]}, item: {id: "beacon"}, Rotation: [90f, 0f]}
summon interaction -10 64.5 -99.0 {Tags: ["jkpof", "jkpof_display_lobby_item", "16"], response: true, width: .5, height: .5}
summon item_display -10 64.75 -99.0 {Tags: ["jkpof", "jkpof_display_lobby_item", "16"], brightness: {block: 15, sky: 15}, transformation: {left_rotation: [0f, 0f, 0f, 1f], right_rotation: [0f, 0f, 0f, 1f], scale: [.45f, .45f, .45f], translation: [0f, 0f, 0f]}, item: {id: "glass", components: {enchantment_glint_override: true}}, Rotation: [90f, 0f]}
summon interaction -10 64.5 -99.5 {Tags: ["jkpof", "jkpof_display_lobby_item", "17"], response: true, width: .5, height: .5}
summon item_display -10 64.75 -99.5 {Tags: ["jkpof", "jkpof_display_lobby_item", "17"], brightness: {block: 15, sky: 15}, transformation: {left_rotation: [0f, 0f, 0f, 1f], right_rotation: [0f, 0f, 0f, 1f], scale: [.45f, .45f, .45f], translation: [0f, 0f, 0f]}, item: {id: "clock", components: {enchantment_glint_override: true}}, Rotation: [90f, 0f]}

#- 事件
summon text_display 10 70 -100 {Tags: ["jkpof", "jkpof_lobby_const_top_events"], brightness: {block: 15, sky: 15}, billboard: "center", transformation: {left_rotation: [0f, 0f, 0f, 1f], right_rotation: [0f, 0f, 0f, 1f], scale: [6f, 6f, 6f], translation: [0f, 0f, 0f]}}

summon interaction 10 65.75 -99 {Tags: ["jkpof", "jkpof_display_event_switch"], response: true, width: .5, height: .5}
summon text_display 10 66.0 -99 {Tags: ["jkpof", "jkpof_display_event_switch"], brightness: {block: 15, sky: 15}, Rotation: [90f, 0f]}

summon interaction 10 65.75 -101 {Tags: ["jkpof", "jkpof_display_event_ctrl"], response: true, width: .5, height: .5}
summon text_display 10 66.0 -101 {Tags: ["jkpof", "jkpof_display_event_ctrl"], brightness: {block: 15, sky: 15}, Rotation: [90f, 0f]}

summon item_display 10 68.25 -100 {Tags: ["jkpof", "jkpof_display_event_order", "-3"], brightness: {block: 15, sky: 15}, transformation: {left_rotation: [0f, 0f, 0f, 1f], right_rotation: [0f, 0f, 0f, 1f], scale: [1f, 1f, 1f], translation: [0f, 0f, 0f]}, Rotation: [-90f, 0f]}
summon text_display 10 66.5 -100 {Tags: ["jkpof", "jkpof_display_event_order", "-3"], brightness: {block: 15, sky: 15}, Rotation: [90f, 0f], line_width: 1000}

summon interaction 10 65.25 -100.5 {Tags: ["jkpof", "jkpof_display_event_order", "-2"], response: true, width: .5, height: .5}
summon item_display 10 65.5 -100.5 {Tags: ["jkpof", "jkpof_display_event_order", "-2"], brightness: {block: 15, sky: 15}, transformation: {left_rotation: [0f, 0f, 0f, 1f], right_rotation: [0f, 0f, 0f, 1f], scale: [.45f, .45f, .45f], translation: [0f, 0f, 0f]}, Rotation: [-90f, 0f]}
summon interaction 10 65.25 -100.0 {Tags: ["jkpof", "jkpof_display_event_order", "-1"], response: true, width: .5, height: .5}
summon item_display 10 65.5 -100.0 {Tags: ["jkpof", "jkpof_display_event_order", "-1"], brightness: {block: 15, sky: 15}, transformation: {left_rotation: [0f, 0f, 0f, 1f], right_rotation: [0f, 0f, 0f, 1f], scale: [.45f, .45f, .45f], translation: [0f, 0f, 0f]}, Rotation: [-90f, 0f]}
summon interaction 10 65.25 -99.5 {Tags: ["jkpof", "jkpof_display_event_order", "0"], response: true, width: .5, height: .5}
summon item_display 10 65.5 -99.5 {Tags: ["jkpof", "jkpof_display_event_order", "0"], brightness: {block: 15, sky: 15}, transformation: {left_rotation: [0f, 0f, 0f, 1f], right_rotation: [0f, 0f, 0f, 1f], scale: [.45f, .45f, .45f], translation: [0f, 0f, 0f]}, Rotation: [-90f, 0f]}
summon interaction 10 65.25 -99.0 {Tags: ["jkpof", "jkpof_display_event_order", "1"], response: true, width: .5, height: .5}
summon item_display 10 65.5 -99.0 {Tags: ["jkpof", "jkpof_display_event_order", "1"], brightness: {block: 15, sky: 15}, transformation: {left_rotation: [0f, 0f, 0f, 1f], right_rotation: [0f, 0f, 0f, 1f], scale: [.45f, .45f, .45f], translation: [0f, 0f, 0f]}, Rotation: [-90f, 0f]}
summon interaction 10 65.25 -98.5 {Tags: ["jkpof", "jkpof_display_event_order", "2"], response: true, width: .5, height: .5}
summon item_display 10 65.5 -98.5 {Tags: ["jkpof", "jkpof_display_event_order", "2"], brightness: {block: 15, sky: 15}, transformation: {left_rotation: [0f, 0f, 0f, 1f], right_rotation: [0f, 0f, 0f, 1f], scale: [.45f, .45f, .45f], translation: [0f, 0f, 0f]}, Rotation: [-90f, 0f]}
summon interaction 10 64.75 -100.5 {Tags: ["jkpof", "jkpof_display_event_order", "3"], response: true, width: .5, height: .5}
summon item_display 10 65.0 -100.5 {Tags: ["jkpof", "jkpof_display_event_order", "3"], brightness: {block: 15, sky: 15}, transformation: {left_rotation: [0f, 0f, 0f, 1f], right_rotation: [0f, 0f, 0f, 1f], scale: [.45f, .45f, .45f], translation: [0f, 0f, 0f]}, Rotation: [-90f, 0f]}
summon interaction 10 64.75 -100.0 {Tags: ["jkpof", "jkpof_display_event_order", "4"], response: true, width: .5, height: .5}
summon item_display 10 65.0 -100.0 {Tags: ["jkpof", "jkpof_display_event_order", "4"], brightness: {block: 15, sky: 15}, transformation: {left_rotation: [0f, 0f, 0f, 1f], right_rotation: [0f, 0f, 0f, 1f], scale: [.45f, .45f, .45f], translation: [0f, 0f, 0f]}, Rotation: [-90f, 0f]}
summon interaction 10 64.75 -99.5 {Tags: ["jkpof", "jkpof_display_event_order", "5"], response: true, width: .5, height: .5}
summon item_display 10 65.0 -99.5 {Tags: ["jkpof", "jkpof_display_event_order", "5"], brightness: {block: 15, sky: 15}, transformation: {left_rotation: [0f, 0f, 0f, 1f], right_rotation: [0f, 0f, 0f, 1f], scale: [.45f, .45f, .45f], translation: [0f, 0f, 0f]}, Rotation: [-90f, 0f]}
summon interaction 10 64.75 -99.0 {Tags: ["jkpof", "jkpof_display_event_order", "6"], response: true, width: .5, height: .5}
summon item_display 10 65.0 -99.0 {Tags: ["jkpof", "jkpof_display_event_order", "6"], brightness: {block: 15, sky: 15}, transformation: {left_rotation: [0f, 0f, 0f, 1f], right_rotation: [0f, 0f, 0f, 1f], scale: [.45f, .45f, .45f], translation: [0f, 0f, 0f]}, Rotation: [-90f, 0f]}

#- 设置
summon text_display 0 70 -110 {Tags: ["jkpof", "jkpof_lobby_const_top_settings"], brightness: {block: 15, sky: 15}, billboard: "center", transformation: {left_rotation: [0f, 0f, 0f, 1f], right_rotation: [0f, 0f, 0f, 1f], scale: [6f, 6f, 6f], translation: [0f, 0f, 0f]}}

## 物品
summon text_display -2 67.5 -110 {Tags: ["jkpof", "jkpof_display_ctrl_item_show"], brightness: {block: 15, sky: 15}, billboard: "center"}

# 分配模式
summon interaction -2 64.25 -110 {Tags: ["jkpof", "jkpof_ctrl", "jkpof_ctrl_item_mode"], response: true, width: .5, height: .5}
summon text_display -2 65.05 -110 {Tags: ["jkpof", "jkpof_display_ctrl_item_mode"], brightness: {block: 15, sky: 15}, billboard: "center"}
summon item_display -2 64.5 -110 {Tags: ["jkpof", "jkpof_display_ctrl_item_mode"], brightness: {block: 15, sky: 15}, CustomNameVisible: 1b, transformation: {left_rotation: [0f, 0f, 0f, 1f], right_rotation: [0f, 0f, 0f, 1f], scale: [.4f, .4f, .4f], translation: [0f, 0f, 0f]}, Rotation: [-180f, 0f]}

# 数量
summon interaction -2 65.25 -110 {Tags: ["jkpof", "jkpof_ctrl", "jkpof_ctrl_item_count"], response: true, width: .5, height: .5}
summon text_display -2 66.05 -110 {Tags: ["jkpof", "jkpof_display_ctrl_item_count"], brightness: {block: 15, sky: 15}, billboard: "center"}
summon text_display -2 65.5 -110 {Tags: ["jkpof", "jkpof_display_show_ctrl_item_count"], brightness: {block: 15, sky: 15}, billboard: "center"}

# 间隔秒数
summon interaction -2 66.25 -110 {Tags: ["jkpof", "jkpof_ctrl", "jkpof_ctrl_item_time"], response: true, width: .5, height: .5}
summon text_display -2 67.05 -110 {Tags: ["jkpof", "jkpof_display_ctrl_item_time"], brightness: {block: 15, sky: 15}, billboard: "center"}
summon text_display -2 66.5 -110 {Tags: ["jkpof", "jkpof_display_show_ctrl_item_time"], brightness: {block: 15, sky: 15}, billboard: "center"}

## 柱子
summon text_display 0 67.5 -110 {Tags: ["jkpof", "jkpof_display_ctrl_pillar_show"], brightness: {block: 15, sky: 15}, billboard: "center"}

# 种类
summon interaction 0 64.25 -110 {Tags: ["jkpof", "jkpof_ctrl", "jkpof_ctrl_pillar_type"], response: true, width: .5, height: .5}
summon text_display 0 65.05 -110 {Tags: ["jkpof", "jkpof_display_ctrl_pillar_type"], brightness: {block: 15, sky: 15}, billboard: "center"}
summon item_display 0 64.5 -110 {Tags: ["jkpof", "jkpof_display_ctrl_pillar_type"], brightness: {block: 15, sky: 15}, CustomNameVisible: 1b, transformation: {left_rotation: [0f, 0f, 0f, 1f], right_rotation: [0f, 0f, 0f, 1f], scale: [.4f, .4f, .4f], translation: [0f, 0f, 0f]}, Rotation: [-180f, 0f]}

# 高度
summon interaction 0 65.25 -110 {Tags: ["jkpof", "jkpof_ctrl", "jkpof_ctrl_pillar_height"], response: true, width: .5, height: .5}
summon text_display 0 66.05 -110 {Tags: ["jkpof", "jkpof_display_ctrl_pillar_height"], brightness: {block: 15, sky: 15}, billboard: "center"}
summon text_display 0 65.5 -110 {Tags: ["jkpof", "jkpof_display_show_ctrl_pillar_height"], brightness: {block: 15, sky: 15}, billboard: "center"}

# 间距
summon interaction 0 66.25 -110 {Tags: ["jkpof", "jkpof_ctrl", "jkpof_ctrl_pillar_distance"], response: true, width: .5, height: .5}
summon text_display 0 67.05 -110 {Tags: ["jkpof", "jkpof_display_ctrl_pillar_distance"], brightness: {block: 15, sky: 15}, billboard: "center"}
summon text_display 0 66.5 -110 {Tags: ["jkpof", "jkpof_display_show_ctrl_pillar_distance"], brightness: {block: 15, sky: 15}, billboard: "center"}

## 地面
summon text_display 2 68.5 -110 {Tags: ["jkpof", "jkpof_display_ctrl_ground_show"], brightness: {block: 15, sky: 15}, billboard: "center"}

# 种类
summon interaction 2 64.25 -110 {Tags: ["jkpof", "jkpof_ctrl", "jkpof_ctrl_ground_type"], response: true, width: .5, height: .5}
summon text_display 2 65.05 -110 {Tags: ["jkpof", "jkpof_display_ctrl_ground_type"], brightness: {block: 15, sky: 15}, billboard: "center"}
summon item_display 2 64.5 -110 {Tags: ["jkpof", "jkpof_display_ctrl_ground_type"], brightness: {block: 15, sky: 15}, CustomNameVisible: 1b, transformation: {left_rotation: [0f, 0f, 0f, 1f], right_rotation: [0f, 0f, 0f, 1f], scale: [.4f, .4f, .4f], translation: [0f, 0f, 0f]}, Rotation: [-180f, 0f]}

# 半径
summon interaction 2 65.25 -110 {Tags: ["jkpof", "jkpof_ctrl", "jkpof_ctrl_ground_radius"], response: true, width: .5, height: .5}
summon text_display 2 66.05 -110 {Tags: ["jkpof", "jkpof_display_ctrl_ground_radius"], brightness: {block: 15, sky: 15}, billboard: "center"}
summon text_display 2 65.5 -110 {Tags: ["jkpof", "jkpof_display_show_ctrl_ground_radius"], brightness: {block: 15, sky: 15}, billboard: "center"}

# 层数
summon interaction 2 66.25 -110 {Tags: ["jkpof", "jkpof_ctrl", "jkpof_ctrl_ground_floor"], response: true, width: .5, height: .5}
summon text_display 2 67.05 -110 {Tags: ["jkpof", "jkpof_display_ctrl_ground_floor"], brightness: {block: 15, sky: 15}, billboard: "center"}
summon text_display 2 66.5 -110 {Tags: ["jkpof", "jkpof_display_show_ctrl_ground_floor"], brightness: {block: 15, sky: 15}, billboard: "center"}

# 各层随机
summon interaction 2 67.25 -110 {Tags: ["jkpof", "jkpof_ctrl", "jkpof_ctrl_ground_floor_random"], response: true, width: .5, height: .5}
summon text_display 2 68.05 -110 {Tags: ["jkpof", "jkpof_display_ctrl_ground_floor_random"], brightness: {block: 15, sky: 15}, billboard: "center"}
summon text_display 2 67.5 -110 {Tags: ["jkpof", "jkpof_display_show_ctrl_ground_floor_random"], brightness: {block: 15, sky: 15}, billboard: "center"}

## 杂项
summon text_display 0 66.75 -116 {Tags: ["jkpof", "jkpof_display_ctrl_others_show"], brightness: {block: 15, sky: 15}, billboard: "center"}

# 地图
summon interaction 0 64.25 -113 {Tags: ["jkpof", "jkpof_ctrl", "jkpof_ctrl_map"], response: true, width: .5, height: .5}
summon text_display 0 65.05 -113 {Tags: ["jkpof", "jkpof_display_ctrl_map"], brightness: {block: 15, sky: 15}, billboard: "center"}
summon item_display 0 64.5 -113 {Tags: ["jkpof", "jkpof_display_ctrl_map"], brightness: {block: 15, sky: 15}, CustomNameVisible: 1b, transformation: {left_rotation: [0f, 0f, 0f, 1f], right_rotation: [0f, 0f, 0f, 1f], scale: [.4f, .4f, .4f], translation: [0f, 0f, 0f]}, Rotation: [-180f, 0f]}

# 语言
summon interaction 0 64.01 -101.5 {Tags: ["jkpof", "jkpof_ctrl_lang"], response: true, width: 1, height: .1}
summon text_display 0 64.01 -101.7 {Tags: ["jkpof", "jkpof_display_ctrl_lang"], brightness: {block: 15, sky: 15}, text: {text: "Lang", color: "green"}, background: 0, Rotation: [0f, -90f]}
summon text_display 0 64.01 -101.2 {Tags: ["jkpof", "jkpof_display_show_ctrl_lang"], brightness: {block: 15, sky: 15}, text: {text: "???", color: "yellow"}, background: 0, Rotation: [0f, -90f]}
summon text_display 0 64.01 -102.4 {Tags: ["jkpof", "jkpof_lobby_const_short_text_explain"], brightness: {block: 15, sky: 15}, text: [{text: "POF = Pillars Of Fortune", color: "yellow"}, "\n", {text: "VOF = Votes Of Fortune", color: "aqua"}, "\n", {text: "BOF = Brooms Of Fortune", color: "green"}, "\n", {text: "EOF = Eggs Of Fortune", color: "gold"}], background: 0, Rotation: [0f, -90f], view_range: 0}
summon text_display 0 65.0 -101.5 {Tags: ["jkpof", "jkpof_lobby_const_set_lang_1st"], brightness: {block: 15, sky: 15}, text: [{text: "请先设置语言！\nSet your language first!", color: "green"}, {text: "\n↓↓↓", color: "yellow"}], billboard: "center", line_width: 1000}

# 时间
summon interaction 0 64.25 -116 {Tags: ["jkpof", "jkpof_ctrl", "jkpof_ctrl_time"], response: true, width: .5, height: .5}
summon text_display 0 65.05 -116 {Tags: ["jkpof", "jkpof_display_ctrl_time"], brightness: {block: 15, sky: 15}, billboard: "center"}
summon item_display 0 64.5 -116 {Tags: ["jkpof", "jkpof_display_ctrl_time"], brightness: {block: 15, sky: 15}, CustomNameVisible: 1b, transformation: {left_rotation: [0f, 0f, 0f, 1f], right_rotation: [0f, 0f, 0f, 1f], scale: [.4f, .4f, .4f], translation: [0f, 0f, 0f]}, item: {id: "clock"}, Glowing: true, Rotation: [-180f, 0f]}

# 夜视
summon interaction 2 64.25 -116 {Tags: ["jkpof", "jkpof_ctrl", "jkpof_ctrl_night_vision"], response: true, width: .5, height: .5}
summon text_display 2 65.05 -116 {Tags: ["jkpof", "jkpof_display_ctrl_night_vision"], brightness: {block: 15, sky: 15}, billboard: "center", text: {translate: "effect.minecraft.night_vision", color: "green"}}
summon item_display 2 64.5 -116 {Tags: ["jkpof", "jkpof_display_ctrl_night_vision"], brightness: {block: 15, sky: 15}, CustomNameVisible: 1b, transformation: {left_rotation: [0f, 0f, 0f, 1f], right_rotation: [0f, 0f, 0f, 1f], scale: [.4f, .4f, .4f], translation: [0f, 0f, 0f]}, Rotation: [-180f, 0f]}

# 自然回血
summon interaction -2 64.25 -116 {Tags: ["jkpof", "jkpof_ctrl", "jkpof_ctrl_natural_regen"], response: true, width: .5, height: .5}
summon text_display -2 65.05 -116 {Tags: ["jkpof", "jkpof_display_ctrl_natural_regen"], brightness: {block: 15, sky: 15}, billboard: "center"}
summon item_display -2 64.5 -116 {Tags: ["jkpof", "jkpof_display_ctrl_natural_regen"], brightness: {block: 15, sky: 15}, CustomNameVisible: 1b, transformation: {left_rotation: [0f, 0f, 0f, 1f], right_rotation: [0f, 0f, 0f, 1f], scale: [.4f, .4f, .4f], translation: [0f, 0f, 0f]}, Rotation: [-180f, 0f]}

# 进度展示
summon interaction -2 65.25 -116 {Tags: ["jkpof", "jkpof_ctrl", "jkpof_ctrl_advancement"], response: true, width: .5, height: .5}
summon text_display -2 66.05 -116 {Tags: ["jkpof", "jkpof_display_ctrl_advancement"], brightness: {block: 15, sky: 15}, billboard: "center"}
summon item_display -2 65.5 -116 {Tags: ["jkpof", "jkpof_display_ctrl_advancement"], brightness: {block: 15, sky: 15}, CustomNameVisible: 1b, transformation: {left_rotation: [0f, 0f, 0f, 1f], right_rotation: [0f, 0f, 0f, 1f], scale: [.4f, .4f, .4f], translation: [0f, 0f, 0f]}, Rotation: [-180f, 0f]}

# 定位栏
summon interaction 2 65.25 -116 {Tags: ["jkpof", "jkpof_ctrl", "jkpof_ctrl_locator_bar"], response: true, width: .5, height: .5}
summon text_display 2 66.05 -116 {Tags: ["jkpof", "jkpof_display_ctrl_locator_bar"], brightness: {block: 15, sky: 15}, billboard: "center"}
summon item_display 2 65.5 -116 {Tags: ["jkpof", "jkpof_display_ctrl_locator_bar"], brightness: {block: 15, sky: 15}, CustomNameVisible: 1b, transformation: {left_rotation: [0f, 0f, 0f, 1f], right_rotation: [0f, 0f, 0f, 1f], scale: [.4f, .4f, .4f], translation: [0f, 0f, 0f]}, Rotation: [-180f, 0f]}

# 预设
summon interaction 0 65.25 -116 {Tags: ["jkpof", "jkpof_ctrl_preset"], response: true, width: .5, height: .5}
summon text_display 0 66.05 -116 {Tags: ["jkpof", "jkpof_display_ctrl_preset"], brightness: {block: 15, sky: 15}, billboard: "center"}
summon item_display 0 65.5 -116 {Tags: ["jkpof", "jkpof_display_ctrl_preset"], brightness: {block: 15, sky: 15}, CustomNameVisible: 1b, transformation: {left_rotation: [0f, 0f, 0f, 1f], right_rotation: [0f, 0f, 0f, 1f], scale: [.4f, .4f, .4f], translation: [0f, 0f, 0f]}, Rotation: [-180f, 0f]}

scoreboard players set #ctrl_preset jkpof.int -1
function jkpof:state/0/interaction/ctrl/preset/show

## 重置
function jkpof:state/0/enter
