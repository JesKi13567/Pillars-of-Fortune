$scoreboard players add #ctrl_ban_spawn_egg.$(id) jkpof.int 1
$execute if score #ctrl_ban_spawn_egg.$(id) jkpof.int matches 2.. run scoreboard players set #ctrl_ban_spawn_egg.$(id) jkpof.int 0

$execute if score #ctrl_ban_spawn_egg.$(id) jkpof.int matches 0 run data modify entity @e[type=item_display, tag=jkpof_display_ctrl_ban_spawn_egg, tag=$(id), limit=1] item.id set value "$(id)_spawn_egg"
$execute if score #ctrl_ban_spawn_egg.$(id) jkpof.int matches 1 run data modify entity @e[type=item_display, tag=jkpof_display_ctrl_ban_spawn_egg, tag=$(id), limit=1] item.id set value "barrier"
