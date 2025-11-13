execute if block ~ ~-1 ~ red_wool run scoreboard players set @s jkpof.team 1
execute if block ~ ~-2 ~ red_wool run scoreboard players set @s jkpof.team 1
execute if block ~ ~-1 ~ blue_wool run scoreboard players set @s jkpof.team 2
execute if block ~ ~-2 ~ blue_wool run scoreboard players set @s jkpof.team 2
execute if score #ctrl_pillar_count_order_real jkpof.int matches 0..3 if block ~ ~-1 ~ lime_concrete run scoreboard players set @s jkpof.team 3
execute if score #ctrl_pillar_count_order_real jkpof.int matches 0..3 if block ~ ~-2 ~ lime_concrete run scoreboard players set @s jkpof.team 3
execute if block ~ ~-1 ~ yellow_wool run scoreboard players set @s jkpof.team 4
execute if block ~ ~-2 ~ yellow_wool run scoreboard players set @s jkpof.team 4
execute if block ~ ~-1 ~ cyan_wool run scoreboard players set @s jkpof.team 5
execute if block ~ ~-2 ~ cyan_wool run scoreboard players set @s jkpof.team 5
execute if block ~ ~-1 ~ white_wool run scoreboard players set @s jkpof.team 6
execute if block ~ ~-2 ~ white_wool run scoreboard players set @s jkpof.team 6
execute if block ~ ~-1 ~ pink_wool run scoreboard players set @s jkpof.team 7
execute if block ~ ~-2 ~ pink_wool run scoreboard players set @s jkpof.team 7
execute if block ~ ~-1 ~ gray_wool run scoreboard players set @s jkpof.team 8
execute if block ~ ~-2 ~ gray_wool run scoreboard players set @s jkpof.team 8
execute if block ~ ~-1 ~ orange_wool run scoreboard players set @s jkpof.team 9
execute if block ~ ~-2 ~ orange_wool run scoreboard players set @s jkpof.team 9

team join jkpof.red @s[scores={jkpof.team=1}]
team join jkpof.blue @s[scores={jkpof.team=2}]
team join jkpof.green @s[scores={jkpof.team=3}]
team join jkpof.yellow @s[scores={jkpof.team=4}]
team join jkpof.cyan @s[scores={jkpof.team=5}]
team join jkpof.white @s[scores={jkpof.team=6}]
team join jkpof.pink @s[scores={jkpof.team=7}]
team join jkpof.gray @s[scores={jkpof.team=8}]
team join jkpof.gold @s[scores={jkpof.team=9}]

title @s[scores={jkpof.state=1, jkpof.team=0}] actionbar {text: "你无法成为玩家，因为没有加入队伍。", color: "gray"}
title @s[scores={jkpof.state=1, jkpof.team=1}] actionbar [{text: "你将成为", color: "green"}, {text: "红队", color: "red"}, "玩家！"]
title @s[scores={jkpof.state=1, jkpof.team=2}] actionbar [{text: "你将成为", color: "green"}, {text: "蓝队", color: "blue"}, "玩家！"]
title @s[scores={jkpof.state=1, jkpof.team=3}] actionbar [{text: "你将成为", color: "green"}, {text: "绿队", color: "dark_green"}, "玩家！"]
title @s[scores={jkpof.state=1, jkpof.team=4}] actionbar [{text: "你将成为", color: "green"}, {text: "黄队", color: "yellow"}, "玩家！"]
title @s[scores={jkpof.state=1, jkpof.team=5}] actionbar [{text: "你将成为", color: "green"}, {text: "青队", color: "aqua"}, "玩家！"]
title @s[scores={jkpof.state=1, jkpof.team=6}] actionbar [{text: "你将成为", color: "green"}, {text: "白队", color: "white"}, "玩家！"]
title @s[scores={jkpof.state=1, jkpof.team=7}] actionbar [{text: "你将成为", color: "green"}, {text: "粉队", color: "light_purple"}, "玩家！"]
title @s[scores={jkpof.state=1, jkpof.team=8}] actionbar [{text: "你将成为", color: "green"}, {text: "灰队", color: "gray"}, "玩家！"]
title @s[scores={jkpof.state=1, jkpof.team=9}] actionbar [{text: "你将成为", color: "green"}, {text: "橙队", color: "gold"}, "玩家！"]
