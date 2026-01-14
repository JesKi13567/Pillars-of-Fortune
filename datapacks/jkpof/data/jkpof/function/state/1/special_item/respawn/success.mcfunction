fill ~-1 ~-2 ~-1 ~1 ~-2 ~1 glass
execute as @a at @s run playsound entity.ender_dragon.growl

$tp @p[name="$(id)"] @s
$gamemode survival @p[name="$(id)"]
$effect give @p[name="$(id)"] weakness 20
$effect give @p[name="$(id)"] nausea 10
$scoreboard players reset @p[name="$(id)"] jkpof.death_note.cd

$tellraw @a ["", {storage: "jk:pof", nbt: "txt.POF", color: "yellow"}, "$(id)", {storage: "jk:pof", nbt: "txt.lobby.item.respawn_device.tellraw.success", color: "green"}]
