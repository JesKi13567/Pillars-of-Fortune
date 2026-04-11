gamemode survival @s
attribute @s gravity base reset
effect give @s weakness 10
effect give @s nausea 10
scoreboard players reset @s jkpof.death_note.cd
scoreboard players reset @s jkpof.gravity
scoreboard players reset @s jkpof.creative
scoreboard players add @s jkpof.lives 1
execute if score #test_mode jkpof.int matches 1 run scoreboard players set @s jkpof.state 2
