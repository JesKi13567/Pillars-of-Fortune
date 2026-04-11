# 方块中心
tp @s ~.5 ~.5 ~.5
scoreboard players set @s jkpof.int 20

# 展示
summon item_display ~.5 ~.5 ~5.01 {Tags: ["jkpof_null_bomb_show"], brightness: {block: 15, sky: 15}, transformation: {left_rotation: [0f, 0f, 0f, 1f], right_rotation: [0f, 0f, 0f, 1f], scale: [9f, 9f, .1f], translation: [0f, 0f, 0f]}, item: {id: "structure_void"}}
summon item_display ~.5 ~.5 ~-4.01 {Tags: ["jkpof_null_bomb_show"], brightness: {block: 15, sky: 15}, transformation: {left_rotation: [0f, 0f, 0f, 1f], right_rotation: [0f, 0f, 0f, 1f], scale: [9f, 9f, .1f], translation: [0f, 0f, 0f]}, item: {id: "structure_void"}}
summon item_display ~5.01 ~.5 ~.5 {Tags: ["jkpof_null_bomb_show"], brightness: {block: 15, sky: 15}, transformation: {left_rotation: [0f, 0f, 0f, 1f], right_rotation: [0f, 0f, 0f, 1f], scale: [9f, 9f, .1f], translation: [0f, 0f, 0f]}, item: {id: "structure_void"}, Rotation: [90f, 0f]}
summon item_display ~-4.01 ~.5 ~.5 {Tags: ["jkpof_null_bomb_show"], brightness: {block: 15, sky: 15}, transformation: {left_rotation: [0f, 0f, 0f, 1f], right_rotation: [0f, 0f, 0f, 1f], scale: [9f, 9f, .1f], translation: [0f, 0f, 0f]}, item: {id: "structure_void"}, Rotation: [90f, 0f]}
summon item_display ~.5 ~5.01 ~.5 {Tags: ["jkpof_null_bomb_show"], brightness: {block: 15, sky: 15}, transformation: {left_rotation: [0f, 0f, 0f, 1f], right_rotation: [0f, 0f, 0f, 1f], scale: [9f, 9f, .1f], translation: [0f, 0f, 0f]}, item: {id: "structure_void"}, Rotation: [0f, 90f]}
summon item_display ~.5 ~-4.01 ~.5 {Tags: ["jkpof_null_bomb_show"], brightness: {block: 15, sky: 15}, transformation: {left_rotation: [0f, 0f, 0f, 1f], right_rotation: [0f, 0f, 0f, 1f], scale: [9f, 9f, .1f], translation: [0f, 0f, 0f]}, item: {id: "structure_void"}, Rotation: [0f, 90f]}
