$execute if items entity @s weapon.$(hand)hand fire_charge[custom_data={jkpof: ["fireball"]}] run function jkpof:state/1/special_item/fireball/ghast
$execute if items entity @s weapon.$(hand)hand dragon_breath[custom_data={jkpof: ["fireball_dragon"]}] run function jkpof:state/1/special_item/fireball/dragon
$execute if items entity @s weapon.$(hand)hand blaze_rod[custom_data={jkpof: ["platform"]}] run function jkpof:state/1/special_item/platform
$execute if items entity @s weapon.$(hand)hand ender_eye[custom_data={jkpof: ["ender_eye"]}] run function jkpof:state/1/special_item/ender_eye/use
$execute if items entity @s weapon.$(hand)hand glass[custom_data={jkpof: ["cage"]}] run function jkpof:state/1/special_item/cage
$execute if items entity @s weapon.$(hand)hand clock[custom_data={jkpof: ["clock"]}] run function jkpof:state/1/special_item/clock
$execute if items entity @s weapon.$(hand)hand nether_star[custom_data={jkpof: ["super_star"]}] run function jkpof:state/1/special_item/super_star/use
$execute if items entity @s weapon.$(hand)hand magenta_glazed_terracotta[custom_data={jkpof: ["gravity_device"]}] run function jkpof:state/1/special_item/gravity_device
execute if items entity @s weapon.mainhand enchanted_book run function jkpof:state/1/special_item/enchanted_book/use
