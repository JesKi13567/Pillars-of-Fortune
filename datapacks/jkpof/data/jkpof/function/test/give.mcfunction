scoreboard players set #time_res jkpof.int 100
scoreboard players set @a jkpof.item.count 1

clear @a
give @a crossbow[enchantments={multishot: 1, quick_charge: 5}]
execute as @a run loot give @s loot jkpof:item/prop/creative
execute if score #ctrl_lang jkpof.int matches 0..1 as @a run loot give @s loot jkpof:item/prop/death_note/zh
execute if score #ctrl_lang jkpof.int matches 2 as @a run loot give @s loot jkpof:item/prop/death_note/en
execute as @a run loot give @s loot {pools: [{rolls: 32, entries: [{type: "loot_table", value: "jkpof:item/prop/common"}]}]}
