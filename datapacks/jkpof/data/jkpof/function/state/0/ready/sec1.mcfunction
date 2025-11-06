# 检查人数
execute store result score #players jkpof.int if entity @a[scores={jkpof.state=1}]
execute if score #players jkpof.int matches 2.. unless score #start_flag jkpof.int matches 1.. run scoreboard players set #start_flag jkpof.int 1
execute if score #start_flag jkpof.int matches 1.. run function jkpof:state/0/ready/counting

# 清理
kill @e[type=!#jkpof:safe]
