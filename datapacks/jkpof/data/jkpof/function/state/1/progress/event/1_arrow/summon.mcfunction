summon arrow ~ ~6 ~ {Tags: ["jkpof_arrow"]}
summon arrow ~1 ~6 ~ {Tags: ["jkpof_arrow"]}
summon arrow ~-1 ~6 ~ {Tags: ["jkpof_arrow"]}
summon arrow ~ ~6 ~1 {Tags: ["jkpof_arrow"]}
summon arrow ~ ~6 ~-1 {Tags: ["jkpof_arrow"]}

execute if score #event_plus_1 jkpof.int matches 1 as @e[type=arrow, tag=jkpof_arrow, tag=!jkpof] run item modify entity @s container.0 {function: "set_random_potion", options: "#jkpof:all"}
tag @e[type=arrow, tag=jkpof_arrow, tag=!jkpof] add jkpof
