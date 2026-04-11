scoreboard players remove #event_vote.last jkpof.int 1
execute as @a[gamemode=spectator, scores={jkpof.vote=1..11}, tag=!jkpof_voted] run function jkpof:state/1/progress/vote/show
