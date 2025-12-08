gamerule fallDamage true
gamerule fireDamage true
execute if score #ctrl_natural_regen jkpof.int matches 0 run gamerule naturalRegeneration false
execute if score #ctrl_advancement jkpof.int matches 1 run gamerule announceAdvancements true
execute if score #ctrl_locator_bar jkpof.int matches 1 run gamerule locatorBar true
