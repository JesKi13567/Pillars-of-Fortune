execute store result score #players jkpof.int if entity @a[scores={jkpof.state=2}, gamemode=survival]
execute if score #players jkpof.int matches ..1 run function jkpof:state/1/end/check
