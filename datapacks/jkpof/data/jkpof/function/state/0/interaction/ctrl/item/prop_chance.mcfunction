scoreboard players add #ctrl_item_prop_chance jkpof.int 1
execute if score #ctrl_item_prop_chance jkpof.int matches 6.. run scoreboard players set #ctrl_item_prop_chance jkpof.int 0

function jkpof:state/0/interaction/ctrl/item/show
