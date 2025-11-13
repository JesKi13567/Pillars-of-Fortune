# 消耗和冷却
clear @s ender_eye[custom_data={jkpof: ["ender_eye"]}] 1
scoreboard players set @s jkpof.cd.ender_eye 4

# 递归前进
scoreboard players set #ender_eye_temp jkpof.int 20
function jkpof:state/1/special_item/ender_eye_loop
effect give @s slow_falling 1 0 true
