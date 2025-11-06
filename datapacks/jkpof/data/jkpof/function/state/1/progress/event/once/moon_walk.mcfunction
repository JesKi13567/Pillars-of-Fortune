effect give @a[scores={jkpof.state=2}, gamemode=survival] jump_boost 15 9
effect give @a[scores={jkpof.state=2}, gamemode=survival] slow_falling 15 0

tellraw @a [{text: "【幸运之柱】", color: "yellow"}, {text: "现在给予所有玩家持续", color: "aqua"}, " 15 秒 ", {text: "的 ", color: "aqua"}, {translate: "effect.minecraft.jump_boost"}, {text: " + ", color: "aqua"}, {translate: "effect.minecraft.slow_falling"}, {text: "。", color: "aqua"}]
title @a title {text: "月球漫步", color: "aqua"}
title @a subtitle {text: "跳跃和降落得到增益", color: "green"}
