advancement revoke @s only jkpof:using_item
execute if score #state jkpof.int matches 1 unless score @s jkpof.cd.fireball matches 1.. if items entity @s weapon.* fire_charge anchored eyes run function jkpof:state/1/special_item/fireball
execute if score #state jkpof.int matches 1 unless score @s jkpof.cd.fireball matches 1.. if items entity @s weapon.* dragon_breath anchored eyes run function jkpof:state/1/special_item/fireball_dragon
execute if score #state jkpof.int matches 1 unless score @s jkpof.cd.platform matches 1.. if items entity @s weapon.* blaze_rod anchored eyes run function jkpof:state/1/special_item/platform
execute if score #state jkpof.int matches 1 unless score @s jkpof.cd.ender_eye matches 1.. if items entity @s weapon.* ender_eye anchored eyes run function jkpof:state/1/special_item/ender_eye
