tag @s add jkpof

# 检查雪球（附魔光效）
execute unless data entity @s Item.components."minecraft:enchantment_glint_override" run return 0

# 通过
execute on origin run tag @s add jkpof_null_bomb_owner
summon armor_stand ~ ~ ~ {Tags: ["jkpof_null_bomb"], Small: true, Marker: true, Invisible: true}
scoreboard players operation @n[type=armor_stand, tag=jkpof_null_bomb, tag=!jkpof] jkpof.id = @p[tag=jkpof_null_bomb_owner] jkpof.id
ride @n[type=armor_stand, tag=jkpof_null_bomb, tag=!jkpof] mount @s
tag @e[type=armor_stand, tag=jkpof_null_bomb, tag=!jkpof] add jkpof
tag @a remove jkpof_null_bomb_owner
