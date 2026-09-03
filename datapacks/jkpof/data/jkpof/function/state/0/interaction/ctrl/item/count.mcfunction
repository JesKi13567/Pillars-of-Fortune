scoreboard players add #ctrl_item_count_order jkpof.int 1
execute if score #ctrl_item_count_order jkpof.int matches 5.. run scoreboard players set #ctrl_item_count_order jkpof.int 0

execute if score #ctrl_item_count_order jkpof.int matches 0 run scoreboard players set #ctrl_item_count_num jkpof.int 1
execute if score #ctrl_item_count_order jkpof.int matches 1 run scoreboard players set #ctrl_item_count_num jkpof.int 4
execute if score #ctrl_item_count_order jkpof.int matches 2 run scoreboard players set #ctrl_item_count_num jkpof.int 8

function jkpof:state/0/interaction/ctrl/item/show
