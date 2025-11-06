execute if data entity @s equipment.offhand run data modify storage jk:pof data.lightning.slot append value "weapon.offhand"
execute if data entity @s equipment.head run data modify storage jk:pof data.lightning.slot append value "armor.head"
execute if data entity @s equipment.chest run data modify storage jk:pof data.lightning.slot append value "armor.chest"
execute if data entity @s equipment.legs run data modify storage jk:pof data.lightning.slot append value "armor.legs"
execute if data entity @s equipment.feet run data modify storage jk:pof data.lightning.slot append value "armor.feet"

execute store result storage jk:pof data.lightning.random_max int 1 run scoreboard players remove #lightning_equipment jkpof.int 1
