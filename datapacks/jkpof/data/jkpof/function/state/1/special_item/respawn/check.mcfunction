scoreboard players set #respawn.state jkpof.int 0
execute if score #event_betrayal_hour.status jkpof.int matches 1 run scoreboard players set #respawn.type jkpof.int 0
execute if score #event_betrayal_hour.status jkpof.int matches 1 as @s[team=jkpof.traitor] run scoreboard players set #respawn.type jkpof.int 1
clear @s beacon 1
$item modify entity @s weapon.offhand {function: "set_count", count: $(c)}
$execute if entity @a[limit=1, name="$(id)", scores={jkpof.state=3}] run scoreboard players set #respawn.state jkpof.int 1
$execute if score #respawn.state jkpof.int matches 0 run tellraw @a ["", {storage: "jk:pof", interpret: true, nbt: "txt.POF", color: "yellow"}, "$(id)", {storage: "jk:pof", interpret: true, nbt: "txt.lobby.item.player_head.tellraw.fail", color: "red"}]
execute if score #respawn.state jkpof.int matches 0 run playsound entity.villager.no block @s
$execute if score #respawn.state jkpof.int matches 1 run function jkpof:state/1/special_item/respawn/success {id: $(id)}
