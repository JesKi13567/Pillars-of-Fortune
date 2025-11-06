$scoreboard players reset @s jkpof.spawn_egg.$(entity)
$tellraw @a [{text: "【幸运之蛋】", color: "gold"}, {selector: "@s", color: "white"}, {text: " 生成了一只", color: "green"}, {translate: "entity.minecraft.$(entity)"}, {text: "！", color: "green"}]
