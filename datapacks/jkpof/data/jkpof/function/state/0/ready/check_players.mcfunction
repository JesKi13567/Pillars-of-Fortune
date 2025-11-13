execute store result score #players jkpof.int if entity @a[scores={jkpof.state=1}]
execute if score #players jkpof.int matches 2.. run scoreboard players set #start_flag jkpof.int 1
