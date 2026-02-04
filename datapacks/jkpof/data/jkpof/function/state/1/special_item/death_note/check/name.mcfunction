$scoreboard players set @p[name="$(id)", scores={jkpof.state=2}, gamemode=survival] jkpof.death_note.cd 40
$scoreboard players operation @p[name="$(id)", scores={jkpof.state=2}, gamemode=survival] jkpof.death_note.source = @s jkpof.id
$execute unless entity @p[name="$(id)", scores={jkpof.death_note.cd=40}] run scoreboard players set #death_note.fail jkpof.int 1

$execute if score #death_note.fail jkpof.int matches 0 run tellraw @a ["", {storage: "jk:pof", nbt: "txt.POF", color: "yellow"}, {selector: "@s"}, {storage: "jk:pof", nbt: "txt.lobby.item.death_note.success.p1", color: "green"}, {storage: "jk:pof", nbt: "txt.lobby.item.death_note.name", color: "dark_red"}, {storage: "jk:pof", nbt: "txt.lobby.item.death_note.success.p2", color: "green"}, " $(id) ", {storage: "jk:pof", nbt: "txt.lobby.item.death_note.success.p3", color: "green"}]
execute if score #death_note.fail jkpof.int matches 0 at @s run playsound entity.villager.yes block @s
