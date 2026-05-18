effect clear @s glowing

execute store result storage jk:pof data.stats.round int 1 run scoreboard players add @s jkpof.stats.round 0
execute store result storage jk:pof data.stats.win int 1 run scoreboard players add @s jkpof.stats.win 0
execute store result storage jk:pof data.stats.kill int 1 run scoreboard players add @s jkpof.stats.kill 0
execute store result storage jk:pof data.stats.kill_1st int 1 run scoreboard players add @s jkpof.stats.kill.1st 0
execute store result storage jk:pof data.stats.death_all int 1 run scoreboard players add @s jkpof.stats.death.all 0
execute store result storage jk:pof data.stats.death_suicide int 1 run scoreboard players add @s jkpof.stats.death.suicide 0
execute store result storage jk:pof data.stats.death_1st int 1 run scoreboard players add @s jkpof.stats.death.1st 0
execute store result storage jk:pof data.stats.respawn int 1 run scoreboard players add @s jkpof.stats.respawn 0
execute store result storage jk:pof data.stats.king_kill int 1 run scoreboard players add @s jkpof.stats.king.kill 0
execute store result storage jk:pof data.stats.king_live int 1 run scoreboard players add @s jkpof.stats.king.live 0

function jkpof:state/0/interaction/stats/1 with storage jk:pof data.stats
