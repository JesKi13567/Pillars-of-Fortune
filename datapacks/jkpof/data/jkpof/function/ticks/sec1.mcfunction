schedule function jkpof:ticks/sec1 1s replace
execute if score #state jkpof.int matches 0 run function jkpof:state/0/ready/sec1
execute if score #state jkpof.int matches 1 run function jkpof:state/1/sec1

# bossbar
bossbar set jkpof:clean players @a
bossbar set jkpof:progress players @a
