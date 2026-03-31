# 消耗和冷却
scoreboard players set @s jkpof.cd 5
execute unless items entity @s weapon.offhand * run return run playsound entity.villager.no player @s

execute store result score #enchanted_book_temp jkpof.int run data get entity @s SelectedItem.count
execute store result storage jk:pof data.enchanted_book.c int 1 run scoreboard players remove #enchanted_book_temp jkpof.int 1
data modify storage jk:pof data.enchanted_book.e set from entity @s SelectedItem.components."minecraft:stored_enchantments"
function jkpof:state/1/special_item/enchanted_book/real with storage jk:pof data.enchanted_book
