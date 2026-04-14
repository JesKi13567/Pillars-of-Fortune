function jkpof:state/0/interaction/ctrl/preset/show_preset

scoreboard players remove #ctrl_item_mode jkpof.int 1
function jkpof:state/0/interaction/ctrl/item/mode
scoreboard players remove #ctrl_item_count_order jkpof.int 1
function jkpof:state/0/interaction/ctrl/item/count
scoreboard players remove #ctrl_item_time jkpof.int 1
function jkpof:state/0/interaction/ctrl/item/time
scoreboard players remove #ctrl_item_prop_chance jkpof.int 1
function jkpof:state/0/interaction/ctrl/item/prop_chance

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
scoreboard players remove #ctrl_actionbar jkpof.int 1
function jkpof:state/0/interaction/ctrl/switcher {id: 'actionbar', item: 'name_tag'}
scoreboard players remove #ctrl_bossbar jkpof.int 1
function jkpof:state/0/interaction/ctrl/switcher {id: 'bossbar', item: 'repeater'}

scoreboard players remove #ctrl_upside_down jkpof.int 1
function jkpof:state/0/interaction/ctrl/switcher {id: 'upside_down', item: 'magenta_glazed_terracotta'}
scoreboard players remove #ctrl_kid_mode jkpof.int 1
function jkpof:state/0/interaction/ctrl/switcher {id: 'kid_mode', item: 'wheat_seeds'}
scoreboard players remove #ctrl_forgiving_void jkpof.int 1
function jkpof:state/0/interaction/ctrl/switcher {id: 'forgiving_void', item: 'bedrock'}
scoreboard players remove #ctrl_double_health jkpof.int 1
function jkpof:state/0/interaction/ctrl/switcher {id: 'double_health', item: 'cake'}
scoreboard players remove #ctrl_init_tool jkpof.int 1
function jkpof:state/0/interaction/ctrl/switcher {id: 'init_tool', item: 'shears'}
