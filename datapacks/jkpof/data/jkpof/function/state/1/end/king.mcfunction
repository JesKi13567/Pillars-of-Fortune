scoreboard players set #king_max jkpof.int 2
$scoreboard players operation #king_max jkpof.int > @a[scores={jkpof.id=1..}] jkpof.$(type)s
$execute as @a[scores={jkpof.id=1..}] if score @s jkpof.$(type)s = #king_max jkpof.int run tag @s add jkpof_king_max
$tellraw @a ["", {storage: "jk:pof", nbt: "txt.POF", color: "yellow"}, {storage: "jk:pof", nbt: "txt.game.end.king.$(type)", color: "green"}, {selector: "@a[tag=jkpof_king_max]"}, {text: " (", color: "gray"}, {score: {name: "#king_max", objective: "jkpof.int"}, color: "$(color)"}, {text: ")", color: "gray"}]
tag @a[tag=jkpof_king_max] remove jkpof_king_max
