scoreboard players set #respawn.state jkpof.int 0
$execute if entity @p[name="$(id)", scores={jkpof.state=2}, gamemode=spectator] run scoreboard players set #respawn.state jkpof.int 1
$execute if score #respawn.state jkpof.int matches 0 run tellraw @a ["", {storage: "jk:pof", nbt: "txt.POF", color: "yellow"}, "$(id)", {storage: "jk:pof", nbt: "txt.lobby.item.respawn_device.tellraw.fail", color: "red"}]
$execute if score #respawn.state jkpof.int matches 1 run function jkpof:state/1/special_item/respawn/success {id: $(id)}
