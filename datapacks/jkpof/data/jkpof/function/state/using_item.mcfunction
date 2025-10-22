advancement revoke @s only jkpof:using_item
execute if score #state jkpof.int matches 1 unless score @s jkpof.cd.fireball matches 1.. if items entity @s weapon.* fire_charge anchored eyes run function jkpof:state/1/special_item/fireball
