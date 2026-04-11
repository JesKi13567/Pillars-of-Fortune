fill ~-1 ~-2 ~-1 ~1 ~-2 ~1 glass
playsound entity.ender_dragon.growl block @a 0 1000000 0 10000000

$tp @a[limit=1, name="$(id)"] @s
$execute as @a[limit=1, name="$(id)"] run function jkpof:state/1/special_item/respawn/on

$tellraw @a ["", {storage: "jk:pof", interpret: true, nbt: "txt.POF", color: "yellow"}, "$(id)", {storage: "jk:pof", interpret: true, nbt: "txt.lobby.item.player_head.tellraw.success", color: "green"}]
