scoreboard players remove @s jkpof.void_charm.last 1
effect give @s levitation 2 9
execute if predicate jkpof:is_sneaking run effect clear @s levitation
execute if predicate jkpof:is_sneaking run effect give @s slow_falling 3
scoreboard players reset @s[scores={jkpof.void_charm.last=..390}, nbt={OnGround: 1b}] jkpof.void_charm.last

scoreboard players operation #last_temp jkpof.int = @s jkpof.void_charm.last
scoreboard players operation #last_temp jkpof.int /= #20 jkpof.int

title @s actionbar ["", {storage: "jk:pof", nbt: "txt.lobby.item.global.press", color: "green"}, " [", {keybind: "key.sneak"}, "] ", {storage: "jk:pof", nbt: "txt.lobby.item.void_charm.p1", color: "green"}, {score: {name: "#last_temp", objective: "jkpof.int"}, color: "gold"}, {storage: "jk:pof", nbt: "txt.event.global.seconds", color: "green"}]
