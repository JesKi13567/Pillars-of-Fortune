execute positioned ~ ~-1 ~ run function jkpof:state/1/special_item/touch_change/block
execute positioned ~1 ~ ~ run function jkpof:state/1/special_item/touch_change/block
execute positioned ~-1 ~ ~ run function jkpof:state/1/special_item/touch_change/block
execute positioned ~ ~ ~1 run function jkpof:state/1/special_item/touch_change/block
execute positioned ~ ~ ~-1 run function jkpof:state/1/special_item/touch_change/block
execute if score #ctrl_kid_mode jkpof.int matches 0 positioned ~ ~2 ~ run function jkpof:state/1/special_item/touch_change/block
execute if score #ctrl_kid_mode jkpof.int matches 0 positioned ~1 ~1 ~ run function jkpof:state/1/special_item/touch_change/block
execute if score #ctrl_kid_mode jkpof.int matches 0 positioned ~-1 ~1 ~ run function jkpof:state/1/special_item/touch_change/block
execute if score #ctrl_kid_mode jkpof.int matches 0 positioned ~ ~1 ~1 run function jkpof:state/1/special_item/touch_change/block
execute if score #ctrl_kid_mode jkpof.int matches 0 positioned ~ ~1 ~-1 run function jkpof:state/1/special_item/touch_change/block
execute if score #ctrl_kid_mode jkpof.int matches 1 positioned ~ ~1 ~ run function jkpof:state/1/special_item/touch_change/block
