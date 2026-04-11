# 消耗和冷却
clear @s command_block[custom_data={jkpof: ["creative"]}]
scoreboard players set @s jkpof.cd 20
scoreboard players set @s jkpof.creative 60
tellraw @a ["", {storage: "jk:pof", interpret: true, nbt: "txt.POF", color: "yellow"}, {translate: "commands.gamemode.success.other", with: [{selector: "@s"}, {translate: "gameMode.creative", color: "gold"}]}, {storage: "jk:pof", interpret: true, nbt: "txt.char.dot"}]
playsound entity.player.levelup block @a
