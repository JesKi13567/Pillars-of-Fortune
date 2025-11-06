tag @a[scores={jkpof.state=2}, gamemode=survival, limit=1, sort=random] add jkpof_lightning_player
execute as @p[tag=jkpof_lightning_player] at @s run function jkpof:state/1/progress/event/once/lightning/player
tag @a remove jkpof_lightning_player
