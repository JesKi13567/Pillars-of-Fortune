execute if block ~ 63 ~ red_wool run scoreboard players set @s jkpof.team 1
execute if block ~ 63 ~ blue_wool run scoreboard players set @s jkpof.team 2
execute if block ~ 63 ~ green_wool run scoreboard players set @s jkpof.team 3
execute if block ~ 63 ~ yellow_wool run scoreboard players set @s jkpof.team 4
execute if block ~ 63 ~ cyan_wool run scoreboard players set @s jkpof.team 5
execute if block ~ 63 ~ white_wool run scoreboard players set @s jkpof.team 6
execute if block ~ 63 ~ pink_wool run scoreboard players set @s jkpof.team 7
execute if block ~ 63 ~ gray_wool run scoreboard players set @s jkpof.team 8
execute if block ~ 63 ~ orange_wool run scoreboard players set @s jkpof.team 9
execute if block ~ 63 ~ lime_wool run scoreboard players set @s jkpof.team 10
execute if block ~ 63 ~ purple_wool run scoreboard players set @s jkpof.team 11
execute if block ~ 63 ~ light_gray_wool run scoreboard players set @s jkpof.team 12

function jkpof:state/0/player/team/join

title @s[scores={jkpof.team=0}] actionbar {storage: "jk:pof", interpret: true, nbt: "txt.lobby.will_be.1.spectator", color: "gray"}
title @s[scores={jkpof.team=1}] actionbar [{storage: "jk:pof", interpret: true, nbt: "txt.lobby.will_be.team.p1", color: "green"}, {storage: "jk:pof", interpret: true, nbt: "txt.teams.red", color: "red"}, {storage: "jk:pof", interpret: true, nbt: "txt.lobby.will_be.team.p2"}]
title @s[scores={jkpof.team=2}] actionbar [{storage: "jk:pof", interpret: true, nbt: "txt.lobby.will_be.team.p1", color: "green"}, {storage: "jk:pof", interpret: true, nbt: "txt.teams.blue", color: "blue"}, {storage: "jk:pof", interpret: true, nbt: "txt.lobby.will_be.team.p2"}]
title @s[scores={jkpof.team=3}] actionbar [{storage: "jk:pof", interpret: true, nbt: "txt.lobby.will_be.team.p1", color: "green"}, {storage: "jk:pof", interpret: true, nbt: "txt.teams.green", color: "dark_green"}, {storage: "jk:pof", interpret: true, nbt: "txt.lobby.will_be.team.p2"}]
title @s[scores={jkpof.team=4}] actionbar [{storage: "jk:pof", interpret: true, nbt: "txt.lobby.will_be.team.p1", color: "green"}, {storage: "jk:pof", interpret: true, nbt: "txt.teams.yellow", color: "yellow"}, {storage: "jk:pof", interpret: true, nbt: "txt.lobby.will_be.team.p2"}]
title @s[scores={jkpof.team=5}] actionbar [{storage: "jk:pof", interpret: true, nbt: "txt.lobby.will_be.team.p1", color: "green"}, {storage: "jk:pof", interpret: true, nbt: "txt.teams.cyan", color: "aqua"}, {storage: "jk:pof", interpret: true, nbt: "txt.lobby.will_be.team.p2"}]
title @s[scores={jkpof.team=6}] actionbar [{storage: "jk:pof", interpret: true, nbt: "txt.lobby.will_be.team.p1", color: "green"}, {storage: "jk:pof", interpret: true, nbt: "txt.teams.white", color: "white"}, {storage: "jk:pof", interpret: true, nbt: "txt.lobby.will_be.team.p2"}]
title @s[scores={jkpof.team=7}] actionbar [{storage: "jk:pof", interpret: true, nbt: "txt.lobby.will_be.team.p1", color: "green"}, {storage: "jk:pof", interpret: true, nbt: "txt.teams.pink", color: "light_purple"}, {storage: "jk:pof", interpret: true, nbt: "txt.lobby.will_be.team.p2"}]
title @s[scores={jkpof.team=8}] actionbar [{storage: "jk:pof", interpret: true, nbt: "txt.lobby.will_be.team.p1", color: "green"}, {storage: "jk:pof", interpret: true, nbt: "txt.teams.gray", color: "dark_gray"}, {storage: "jk:pof", interpret: true, nbt: "txt.lobby.will_be.team.p2"}]
title @s[scores={jkpof.team=9}] actionbar [{storage: "jk:pof", interpret: true, nbt: "txt.lobby.will_be.team.p1", color: "green"}, {storage: "jk:pof", interpret: true, nbt: "txt.teams.gold", color: "gold"}, {storage: "jk:pof", interpret: true, nbt: "txt.lobby.will_be.team.p2"}]
title @s[scores={jkpof.team=10}] actionbar [{storage: "jk:pof", interpret: true, nbt: "txt.lobby.will_be.team.p1", color: "dark_green"}, {storage: "jk:pof", interpret: true, nbt: "txt.teams.lime", color: "green"}, {storage: "jk:pof", interpret: true, nbt: "txt.lobby.will_be.team.p2"}]
title @s[scores={jkpof.team=11}] actionbar [{storage: "jk:pof", interpret: true, nbt: "txt.lobby.will_be.team.p1", color: "green"}, {storage: "jk:pof", interpret: true, nbt: "txt.teams.purple", color: "dark_purple"}, {storage: "jk:pof", interpret: true, nbt: "txt.lobby.will_be.team.p2"}]
title @s[scores={jkpof.team=12}] actionbar [{storage: "jk:pof", interpret: true, nbt: "txt.lobby.will_be.team.p1", color: "green"}, {storage: "jk:pof", interpret: true, nbt: "txt.teams.light_gray", color: "gray"}, {storage: "jk:pof", interpret: true, nbt: "txt.lobby.will_be.team.p2"}]
