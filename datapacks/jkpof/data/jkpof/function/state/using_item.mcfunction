advancement revoke @s only jkpof:using_item
# 分主副手
execute if score #state jkpof.int matches 1 unless score @s jkpof.cd matches 1.. anchored eyes run function jkpof:state/1/special_item/using {hand: 'main'}
execute if score #state jkpof.int matches 1 unless score @s jkpof.cd matches 1.. anchored eyes run function jkpof:state/1/special_item/using {hand: 'off'}
