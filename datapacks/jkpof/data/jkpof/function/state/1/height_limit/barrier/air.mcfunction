data modify entity @s Glowing set value false

# 界外
execute if score #ctrl_upside_down jkpof.int matches 0 run fill -25 80 25 25 80 25 air
execute if score #ctrl_upside_down jkpof.int matches 0 run fill 25 80 -25 25 80 25 air
execute if score #ctrl_upside_down jkpof.int matches 0 run fill -25 80 -25 25 80 -25 air
execute if score #ctrl_upside_down jkpof.int matches 0 run fill -25 80 -25 -25 80 25 air
execute if score #ctrl_upside_down jkpof.int matches 0 if score #event_border.o jkpof.int matches 1.. run fill -15 50 15 15 50 15 air
execute if score #ctrl_upside_down jkpof.int matches 0 if score #event_border.o jkpof.int matches 1.. run fill 15 50 -15 15 50 15 air
execute if score #ctrl_upside_down jkpof.int matches 0 if score #event_border.o jkpof.int matches 1.. run fill -15 50 -15 15 50 -15 air
execute if score #ctrl_upside_down jkpof.int matches 0 if score #event_border.o jkpof.int matches 1.. run fill -15 50 -15 -15 50 15 air
execute if score #ctrl_upside_down jkpof.int matches 0 if score #event_border.o jkpof.int matches 2.. run fill -7 20 7 7 20 7 air
execute if score #ctrl_upside_down jkpof.int matches 0 if score #event_border.o jkpof.int matches 2.. run fill 7 20 -7 7 20 7 air
execute if score #ctrl_upside_down jkpof.int matches 0 if score #event_border.o jkpof.int matches 2.. run fill -7 20 -7 7 20 -7 air
execute if score #ctrl_upside_down jkpof.int matches 0 if score #event_border.o jkpof.int matches 2.. run fill -7 20 -7 -7 20 7 air

execute if score #ctrl_upside_down jkpof.int matches 1 run fill -25 -30 25 25 -30 25 air
execute if score #ctrl_upside_down jkpof.int matches 1 run fill 25 -30 -25 25 -30 25 air
execute if score #ctrl_upside_down jkpof.int matches 1 run fill -25 -30 -25 25 -30 -25 air
execute if score #ctrl_upside_down jkpof.int matches 1 run fill -25 -30 -25 -25 -30 25 air
execute if score #ctrl_upside_down jkpof.int matches 1 if score #event_border.o jkpof.int matches 1.. run fill -15 0 15 15 0 15 air
execute if score #ctrl_upside_down jkpof.int matches 1 if score #event_border.o jkpof.int matches 1.. run fill 15 0 -15 15 0 15 air
execute if score #ctrl_upside_down jkpof.int matches 1 if score #event_border.o jkpof.int matches 1.. run fill -15 0 -15 15 0 -15 air
execute if score #ctrl_upside_down jkpof.int matches 1 if score #event_border.o jkpof.int matches 1.. run fill -15 0 -15 -15 0 15 air
execute if score #ctrl_upside_down jkpof.int matches 1 if score #event_border.o jkpof.int matches 2.. run fill -7 30 7 7 30 7 air
execute if score #ctrl_upside_down jkpof.int matches 1 if score #event_border.o jkpof.int matches 2.. run fill 7 30 -7 7 30 7 air
execute if score #ctrl_upside_down jkpof.int matches 1 if score #event_border.o jkpof.int matches 2.. run fill -7 30 -7 7 30 -7 air
execute if score #ctrl_upside_down jkpof.int matches 1 if score #event_border.o jkpof.int matches 2.. run fill -7 30 -7 -7 30 7 air
