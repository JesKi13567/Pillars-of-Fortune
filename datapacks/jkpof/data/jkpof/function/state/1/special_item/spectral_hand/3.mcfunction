# 执行主体为被射的玩家
execute at @a[limit=1, scores={jkpof.state=2}, tag=jkpof_immune_ray] run summon item ~ ~ ~ {Tags: ["jkpof_spectral_hand"], Item: {id: "dead_bush"}}
$item replace entity @e[type=item, tag=jkpof_spectral_hand, limit=1] container.0 from entity @s $(real)
$item replace entity @s $(real) with air

data remove storage jk:pof data.spectral_hand.item_name
execute if data entity @e[type=item, tag=jkpof_spectral_hand, limit=1] Item.components."minecraft:custom_name" run data modify storage jk:pof data.spectral_hand.item_name set from entity @e[type=item, tag=jkpof_spectral_hand, limit=1] Item.components."minecraft:custom_name"
execute if data storage jk:pof data.spectral_hand.item_name run function jkpof:state/1/special_item/spectral_hand/item_name with storage jk:pof data.spectral_hand
execute unless data storage jk:pof data.spectral_hand.item_name run function jkpof:state/1/special_item/spectral_hand/item_name {item_name: '{selector: "@e[type=item, tag=jkpof_spectral_hand, limit=1]"}'}
tag @e[type=item, tag=jkpof_spectral_hand] remove jkpof_spectral_hand
playsound entity.villager.yes block @a[tag=jkpof_immune_ray] 0 1000000 0 10000000
