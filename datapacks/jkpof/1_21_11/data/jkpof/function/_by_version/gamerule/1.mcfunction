gamerule fall_damage true
gamerule fire_damage true
execute if score #ctrl_natural_regen jkpof.int matches 0 run gamerule natural_health_regeneration false
execute if score #ctrl_advancement jkpof.int matches 1 run gamerule show_advancement_messages true
execute if score #ctrl_locator_bar jkpof.int matches 1 run gamerule locator_bar true
