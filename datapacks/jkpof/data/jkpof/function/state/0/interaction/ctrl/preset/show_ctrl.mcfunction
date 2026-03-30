function jkpof:state/0/interaction/ctrl/preset/show_preset

scoreboard players remove #ctrl_item_mode jkpof.int 1
function jkpof:state/0/interaction/ctrl/item/mode
scoreboard players remove #ctrl_item_count_order jkpof.int 1
function jkpof:state/0/interaction/ctrl/item/count
scoreboard players remove #ctrl_item_time jkpof.int 1
function jkpof:state/0/interaction/ctrl/item/time

function jkpof:state/0/interaction/ctrl/pillar/show
function jkpof:state/0/interaction/ctrl/ground/show

function jkpof:state/0/interaction/ctrl/time/show
scoreboard players remove #ctrl_night_vision jkpof.int 1
function jkpof:state/0/interaction/ctrl/switcher {id: 'night_vision', item: 'golden_carrot'}
scoreboard players remove #ctrl_natural_regen jkpof.int 1
function jkpof:state/0/interaction/ctrl/switcher {id: 'natural_regen', item: 'golden_apple'}
scoreboard players remove #ctrl_advancement jkpof.int 1
function jkpof:state/0/interaction/ctrl/switcher {id: 'advancement', item: 'dragon_egg'}
scoreboard players remove #ctrl_locator_bar jkpof.int 1
function jkpof:state/0/interaction/ctrl/switcher {id: 'locator_bar', item: 'compass'}
scoreboard players remove #ctrl_upside_down jkpof.int 1
function jkpof:state/0/interaction/ctrl/switcher {id: 'upside_down', item: 'magenta_glazed_terracotta'}
scoreboard players remove #ctrl_kid_mode jkpof.int 1
function jkpof:state/0/interaction/ctrl/switcher {id: 'kid_mode', item: 'wheat_seeds'}
