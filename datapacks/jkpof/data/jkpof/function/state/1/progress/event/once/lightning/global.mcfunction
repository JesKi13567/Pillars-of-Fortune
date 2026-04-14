tag @r[scores={jkpof.state=2}] add jkpof_lightning_player
execute as @a[limit=1, tag=jkpof_lightning_player] at @s run function jkpof:state/1/progress/event/once/lightning/0
tag @a remove jkpof_lightning_player
