# 所有 22, 850, 60, 88, 29, 46, 9, 71, 12, 9
$execute unless score #ctrl_lang jkpof.int matches 2 as @$(A)scores={jkpof.state=2, jkpof.item.order=1}] run loot give @$(S) loot jkpof:item/prop/death_note/zh
$execute if score #ctrl_lang jkpof.int matches 2 as @$(A)scores={jkpof.state=2, jkpof.item.order=1}] run loot give @$(S) loot jkpof:item/prop/death_note/en
$execute as @$(A)scores={jkpof.state=2, jkpof.item.order=2}] run loot give @$(S) loot jkpof:item/prop/creative
$execute as @$(A)scores={jkpof.state=2, jkpof.item.order=3..}] run loot give @$(S) loot jkpof:item/all
