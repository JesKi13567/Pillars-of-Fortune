scoreboard players add #ctrl_preset jkpof.int 1
execute if score #ctrl_preset jkpof.int matches 4.. run scoreboard players set #ctrl_preset jkpof.int 0

function jkpof:state/0/interaction/ctrl/preset/0
execute if score #ctrl_preset jkpof.int matches 1 run function jkpof:state/0/interaction/ctrl/preset/1
execute if score #ctrl_preset jkpof.int matches 2 run function jkpof:state/0/interaction/ctrl/preset/2
execute if score #ctrl_preset jkpof.int matches 3 run function jkpof:state/0/interaction/ctrl/preset/3

# 其他所有按钮的显示
scoreboard players remove #ctrl_pillar_type jkpof.int 1
function jkpof:state/0/interaction/ctrl/pillar/type
function jkpof:state/0/interaction/ctrl/pillar/count/show

scoreboard players remove #ctrl_item_player jkpof.int 1
function jkpof:state/0/interaction/ctrl/item/player
scoreboard players remove #ctrl_item_count_order jkpof.int 1
function jkpof:state/0/interaction/ctrl/item/count
scoreboard players remove #ctrl_item_time jkpof.int 2
function jkpof:state/0/interaction/ctrl/item/time

scoreboard players remove #ctrl_ground_type jkpof.int 1
function jkpof:state/0/interaction/ctrl/ground/type
scoreboard players remove #ctrl_ground_radius jkpof.int 2
function jkpof:state/0/interaction/ctrl/ground/radius
scoreboard players remove #ctrl_ground_floor jkpof.int 1
function jkpof:state/0/interaction/ctrl/ground/floor
scoreboard players remove #ctrl_ground_floor_random jkpof.int 1
function jkpof:state/0/interaction/ctrl/ground/floor_random

function jkpof:state/0/interaction/ctrl/time/show
scoreboard players remove #ctrl_night_vision jkpof.int 1
function jkpof:state/0/interaction/ctrl/night_vision
scoreboard players remove #ctrl_natural_regen jkpof.int 1
function jkpof:state/0/interaction/ctrl/natural_regen
scoreboard players remove #ctrl_vote jkpof.int 1
function jkpof:state/0/interaction/ctrl/vote
scoreboard players remove #ctrl_event jkpof.int 1
function jkpof:state/0/interaction/ctrl/event
scoreboard players remove #ctrl_advancement jkpof.int 1
function jkpof:state/0/interaction/ctrl/advancement
scoreboard players remove #ctrl_locator_bar jkpof.int 1
function jkpof:state/0/interaction/ctrl/locator_bar
