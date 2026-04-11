tag @s add jkpof

# 检查雪球（附魔光效）
execute unless data entity @s Item.components."minecraft:enchantment_glint_override" run return 0

# 通过
summon armor_stand ~ ~ ~ {Tags: ["jkpof_null_bomb"], Small: true, Marker: true, Invisible: true}
ride @n[type=armor_stand, tag=jkpof_null_bomb, tag=!jkpof] mount @s
tag @e[type=armor_stand, tag=jkpof_null_bomb, tag=!jkpof] add jkpof
