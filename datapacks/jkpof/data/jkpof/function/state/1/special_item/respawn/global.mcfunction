data modify storage jk:pof data.respawn.id set from entity @s Item.components."minecraft:profile".name
function jkpof:state/1/special_item/respawn/check with storage jk:pof data.respawn
setblock ~ ~-1 ~ glass
kill @s
