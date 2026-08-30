# 道具  普通  铜制品  刷怪蛋  盔甲  武器  单独列出  普通-堆叠  各种桶  单独列出-堆叠
#  22,  843,   60,    88,    29,   47,    10,       66,      12,       10
$execute unless score #ctrl_lang jkpof.int matches 2 as @$(A)scores={jkpof.state=2, jkpof.item.order=1}] run loot give @$(S) loot jkpof:item/prop/death_note/zh
$execute if score #ctrl_lang jkpof.int matches 2 as @$(A)scores={jkpof.state=2, jkpof.item.order=1}] run loot give @$(S) loot jkpof:item/prop/death_note/en
$execute as @$(A)scores={jkpof.state=2, jkpof.item.order=2}] run loot give @$(S) loot jkpof:item/prop/creative
$execute as @$(A)scores={jkpof.state=2, jkpof.item.order=3..}] run loot give @$(S) loot jkpof:item/all
