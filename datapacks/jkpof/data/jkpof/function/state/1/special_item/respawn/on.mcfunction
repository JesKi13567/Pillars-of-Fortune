gamemode survival @s
attribute @s gravity base reset
effect give @s weakness 20
effect give @s nausea 10
execute if score #test_mode jkpof.int matches 1 run effect clear @s
scoreboard players reset @s jkpof.death_note.cd
scoreboard players reset @s jkpof.gravity
scoreboard players add @s jkpof.lives 1
