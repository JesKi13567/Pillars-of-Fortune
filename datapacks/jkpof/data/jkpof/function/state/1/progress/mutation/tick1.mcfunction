execute if score #mutation_time jkpof.int matches -99.. run scoreboard players remove #mutation_time jkpof.int 1
execute if score #mutation_type jkpof.int matches 1 run function jkpof:state/1/progress/mutation/arrow/global
execute if score #mutation_type jkpof.int matches 2 run function jkpof:state/1/progress/mutation/lava/global
execute if score #mutation_type jkpof.int matches 3 if score #mutation_time jkpof.int matches 0 run function jkpof:state/1/progress/mutation/lightning/global
