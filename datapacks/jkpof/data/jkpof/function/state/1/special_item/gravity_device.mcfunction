# 消耗和冷却
clear @s magenta_glazed_terracotta[custom_data={jkpof: ["gravity_device"]}] 1
scoreboard players set @s jkpof.cd 20

playsound entity.evoker.prepare_summon block @a ~ ~ ~ 4 1.5
tellraw @s ["", {storage: "jk:pof", nbt: "txt.POF", color: "yellow"}, {storage: "jk:pof", nbt: "txt.lobby.item.gravity_device.tellraw", color: "light_purple"}]

scoreboard players add @s jkpof.gravity 1
scoreboard players reset @s[scores={jkpof.gravity=2..}] jkpof.gravity

attribute @s gravity base reset
attribute @s[scores={jkpof.gravity=1}] gravity base set -0.08
