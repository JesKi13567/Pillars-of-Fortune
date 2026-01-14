clear @s bedrock[custom_data={jkpof: ["void_charm"]}] 1
execute at @s[scores={jkpof.Y=..-90}] run tp @s ~ ~20 ~
scoreboard players set @s jkpof.void_charm 400
tellraw @a ["", {storage: "jk:pof", nbt: "txt.POF", color: "yellow"}, {selector: "@s"}, " ", {storage: "jk:pof", nbt: "txt.triggered", color: "green"}, {storage: "jk:pof", nbt: "txt.lobby.item.void_charm.name", color: "light_purple"}, {storage: "jk:pof", nbt: "txt.char.exclamation", color: "green"}]
