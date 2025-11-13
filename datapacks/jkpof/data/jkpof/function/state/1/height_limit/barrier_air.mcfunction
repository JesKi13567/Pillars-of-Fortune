# 界外
fill -25 80 25 25 80 25 air
fill 25 80 -25 25 80 25 air
fill -25 80 -25 25 80 -25 air
fill -25 80 -25 -25 80 25 air

execute if score #event_border jkpof.int matches 0 run fill -15 50 15 15 50 15 air
execute if score #event_border jkpof.int matches 0 run fill 15 50 -15 15 50 15 air
execute if score #event_border jkpof.int matches 0 run fill -15 50 -15 15 50 -15 air
execute if score #event_border jkpof.int matches 0 run fill -15 50 -15 -15 50 15 air
