execute if score #event_plus_3 jkpof.int matches 0 run tag @a[scores={jkpof.state=2}, sort=random, limit=1] add jkpof_lightning_player
execute if score #event_plus_3 jkpof.int matches 1 if score #event_lightning.t jkpof.int matches 3 run tag @a[scores={jkpof.state=2}, sort=random, limit=3] add jkpof_lightning_player
execute if score #event_plus_3 jkpof.int matches 1 if score #event_lightning.t jkpof.int matches 5 run tag @a[scores={jkpof.state=2}, sort=random, limit=5] add jkpof_lightning_player
execute if score #event_plus_3 jkpof.int matches 1 if score #event_lightning.t jkpof.int matches 7 run tag @a[scores={jkpof.state=2}, sort=random, limit=7] add jkpof_lightning_player
execute if score #event_plus_3 jkpof.int matches 1 if score #event_lightning.t jkpof.int matches 99 run tag @a[scores={jkpof.state=2}, sort=random, limit=99] add jkpof_lightning_player
execute as @a[tag=jkpof_lightning_player] at @s run function jkpof:state/1/progress/event/3_lightning/0
tellraw @a[tag=!jkpof_lightning_player] ["", {storage: "jk:pof", interpret: true, nbt: "txt.POF.show", color: "yellow"}, {storage: "jk:pof", interpret: true, nbt: "txt.event.lightning.player.others.p1", color: "aqua"}, " ", {selector: "@a[tag=jkpof_lightning_player]"}, " ", {storage: "jk:pof", interpret: true, nbt: "txt.event.lightning.player.others.p2", color: "aqua"}]
tag @a remove jkpof_lightning_player
