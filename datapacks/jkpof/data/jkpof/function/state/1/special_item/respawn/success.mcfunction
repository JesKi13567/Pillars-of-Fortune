playsound entity.ender_dragon.growl block @a 0 1000000 0 10000000

$tp @a[limit=1, name="$(id)"] @s
$scoreboard players operation @a[limit=1, name="$(id)"] jkpof.team = @s jkpof.team
$execute as @a[limit=1, name="$(id)"] run function jkpof:state/1/special_item/respawn/on

$tellraw @a ["", {storage: "jk:pof", interpret: true, nbt: "txt.POF", color: "yellow"}, {selector: "@a[limit=1, name='$(id)']"}, {storage: "jk:pof", interpret: true, nbt: "txt.lobby.item.player_head.tellraw.success.p1", color: "green"}, {selector: "@s"}, {storage: "jk:pof", interpret: true, nbt: "txt.lobby.item.player_head.tellraw.success.p2", color: "green"}]
