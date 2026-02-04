fill ~-1 ~-2 ~-1 ~1 ~-2 ~1 glass
playsound entity.ender_dragon.growl block @a 0 1000000 0 10000000

$tp @p[name="$(id)"] @s
$execute as @p[name="$(id)"] run function jkpof:state/1/special_item/respawn/on

$tellraw @a ["", {storage: "jk:pof", nbt: "txt.POF", color: "yellow"}, "$(id)", {storage: "jk:pof", nbt: "txt.lobby.item.respawn_device.tellraw.success", color: "green"}]
