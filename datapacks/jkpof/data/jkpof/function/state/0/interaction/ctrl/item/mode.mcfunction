scoreboard players add #ctrl_item_mode jkpof.int 1
execute if score #ctrl_item_mode jkpof.int matches 2.. run scoreboard players set #ctrl_item_mode jkpof.int 0

function jkpof:state/0/interaction/ctrl/item/show
