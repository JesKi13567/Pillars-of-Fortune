tag @s add jkpof
execute if items entity @s container.0 #jkpof:arrow run return 0

execute if items entity @s container.0 bat_spawn_egg[item_model=bat_spawn_egg] run summon bat
execute if items entity @s container.0 end_crystal run summon end_crystal ~ ~ ~ {ShowBottom: false}
execute if items entity @s container.0 bat_spawn_egg[item_model=end_crystal] run summon end_crystal ~ ~ ~ {ShowBottom: false}
execute if items entity @s container.0 tnt run function jkpof:state/1/special_item/spawn_egg/arrow/tnt
execute if items entity @s container.0 bat_spawn_egg[item_model=tnt] run function jkpof:state/1/special_item/spawn_egg/arrow/tnt

execute if items entity @s container.0 ender_dragon_spawn_egg run function jkpof:state/1/special_item/spawn_egg/arrow/ender_dragon
execute if items entity @s container.0 creeper_spawn_egg run function jkpof:state/1/special_item/spawn_egg/arrow/creeper

execute if items entity @s container.0 wither_spawn_egg run function jkpof:state/1/special_item/spawn_egg/arrow/type {type: place, entity: wither}
execute if items entity @s container.0 warden_spawn_egg run function jkpof:state/1/special_item/spawn_egg/arrow/type {type: place, entity: warden}
execute if items entity @s container.0 elder_guardian_spawn_egg run function jkpof:state/1/special_item/spawn_egg/arrow/type {type: place, entity: elder_guardian}
execute if items entity @s container.0 ghast_spawn_egg run function jkpof:state/1/special_item/spawn_egg/arrow/type {type: place, entity: ghast}
execute if items entity @s container.0 blaze_spawn_egg run function jkpof:state/1/special_item/spawn_egg/arrow/type {type: place, entity: blaze}
execute if items entity @s container.0 breeze_spawn_egg run function jkpof:state/1/special_item/spawn_egg/arrow/type {type: place, entity: breeze}
execute if items entity @s container.0 vex_spawn_egg run function jkpof:state/1/special_item/spawn_egg/arrow/type {type: place, entity: vex}

execute if items entity @s container.0 villager_spawn_egg run function jkpof:state/1/special_item/spawn_egg/arrow/variant {entity: villager, type: 1}
execute if items entity @s container.0 rabbit_spawn_egg run function jkpof:state/1/special_item/spawn_egg/arrow/variant {entity: rabbit, type: 1}
execute if items entity @s container.0 vindicator_spawn_egg run function jkpof:state/1/special_item/spawn_egg/arrow/variant {entity: vindicator, type: 1}
execute if items entity @s container.0 pillager_spawn_egg run function jkpof:state/1/special_item/spawn_egg/arrow/variant {entity: pillager, type: 1}
execute if items entity @s container.0 sheep_spawn_egg run function jkpof:state/1/special_item/spawn_egg/arrow/variant {entity: sheep, type: 1}
execute if items entity @s container.0 fox_spawn_egg run function jkpof:state/1/special_item/spawn_egg/arrow/variant {entity: fox, type: 1}

execute if items entity @s container.0 chicken_spawn_egg run function jkpof:state/1/special_item/spawn_egg/arrow/variant {entity: chicken, type: 2}
execute if items entity @s container.0 cow_spawn_egg run function jkpof:state/1/special_item/spawn_egg/arrow/variant {entity: cow, type: 2}
execute if items entity @s container.0 pig_spawn_egg run function jkpof:state/1/special_item/spawn_egg/arrow/variant {entity: pig, type: 2}
execute if items entity @s container.0 frog_spawn_egg run function jkpof:state/1/special_item/spawn_egg/arrow/variant {entity: frog, type: 2}

execute if items entity @s container.0 bee_spawn_egg run function jkpof:state/1/special_item/spawn_egg/arrow/type {type: hostile, entity: bee}
execute if items entity @s container.0 bogged_spawn_egg run function jkpof:state/1/special_item/spawn_egg/arrow/type {type: hostile, entity: bogged}
execute if items entity @s container.0 cave_spider_spawn_egg run function jkpof:state/1/special_item/spawn_egg/arrow/type {type: hostile, entity: cave_spider}
execute if items entity @s container.0 creaking_spawn_egg run function jkpof:state/1/special_item/spawn_egg/arrow/type {type: hostile, entity: creaking}
execute if items entity @s container.0 dolphin_spawn_egg run function jkpof:state/1/special_item/spawn_egg/arrow/type {type: hostile, entity: dolphin}
execute if items entity @s container.0 drowned_spawn_egg run function jkpof:state/1/special_item/spawn_egg/arrow/type {type: hostile, entity: drowned}
execute if items entity @s container.0 enderman_spawn_egg run function jkpof:state/1/special_item/spawn_egg/arrow/type {type: hostile, entity: enderman}
execute if items entity @s container.0 endermite_spawn_egg run function jkpof:state/1/special_item/spawn_egg/arrow/type {type: hostile, entity: endermite}
execute if items entity @s container.0 evoker_spawn_egg run function jkpof:state/1/special_item/spawn_egg/arrow/type {type: hostile, entity: evoker}
execute if items entity @s container.0 goat_spawn_egg run function jkpof:state/1/special_item/spawn_egg/arrow/type {type: hostile, entity: goat}
execute if items entity @s container.0 guardian_spawn_egg run function jkpof:state/1/special_item/spawn_egg/arrow/type {type: hostile, entity: guardian}
execute if items entity @s container.0 hoglin_spawn_egg run function jkpof:state/1/special_item/spawn_egg/arrow/type {type: hostile, entity: hoglin}
execute if items entity @s container.0 husk_spawn_egg run function jkpof:state/1/special_item/spawn_egg/arrow/type {type: hostile, entity: husk}
execute if items entity @s container.0 iron_golem_spawn_egg run function jkpof:state/1/special_item/spawn_egg/arrow/type {type: hostile, entity: iron_golem}
execute if items entity @s container.0 llama_spawn_egg run function jkpof:state/1/special_item/spawn_egg/arrow/type {type: hostile, entity: llama}
execute if items entity @s container.0 magma_cube_spawn_egg run function jkpof:state/1/special_item/spawn_egg/arrow/type {type: hostile, entity: magma_cube}
execute if items entity @s container.0 nautilus_spawn_egg run function jkpof:state/1/special_item/spawn_egg/arrow/type {type: hostile, entity: nautilus}
execute if items entity @s container.0 panda_spawn_egg run function jkpof:state/1/special_item/spawn_egg/arrow/type {type: hostile, entity: panda}
execute if items entity @s container.0 parched_spawn_egg run function jkpof:state/1/special_item/spawn_egg/arrow/type {type: hostile, entity: parched}
execute if items entity @s container.0 phantom_spawn_egg run function jkpof:state/1/special_item/spawn_egg/arrow/type {type: hostile, entity: phantom}
execute if items entity @s container.0 piglin_spawn_egg run function jkpof:state/1/special_item/spawn_egg/arrow/type {type: hostile, entity: piglin}
execute if items entity @s container.0 piglin_brute_spawn_egg run function jkpof:state/1/special_item/spawn_egg/arrow/type {type: hostile, entity: piglin_brute}
execute if items entity @s container.0 polar_bear_spawn_egg run function jkpof:state/1/special_item/spawn_egg/arrow/type {type: hostile, entity: polar_bear}
execute if items entity @s container.0 pufferfish_spawn_egg run function jkpof:state/1/special_item/spawn_egg/arrow/type {type: hostile, entity: pufferfish}
execute if items entity @s container.0 ravager_spawn_egg run function jkpof:state/1/special_item/spawn_egg/arrow/type {type: hostile, entity: ravager}
execute if items entity @s container.0 shulker_spawn_egg run function jkpof:state/1/special_item/spawn_egg/arrow/type {type: hostile, entity: shulker}
execute if items entity @s container.0 silverfish_spawn_egg run function jkpof:state/1/special_item/spawn_egg/arrow/type {type: hostile, entity: silverfish}
execute if items entity @s container.0 skeleton_spawn_egg run function jkpof:state/1/special_item/spawn_egg/arrow/type {type: hostile, entity: skeleton}
execute if items entity @s container.0 slime_spawn_egg run function jkpof:state/1/special_item/spawn_egg/arrow/type {type: hostile, entity: slime}
execute if items entity @s container.0 spider_spawn_egg run function jkpof:state/1/special_item/spawn_egg/arrow/type {type: hostile, entity: spider}
execute if items entity @s container.0 stray_spawn_egg run function jkpof:state/1/special_item/spawn_egg/arrow/type {type: hostile, entity: stray}
execute if items entity @s container.0 trader_llama_spawn_egg run function jkpof:state/1/special_item/spawn_egg/arrow/type {type: hostile, entity: trader_llama}
execute if items entity @s container.0 witch_spawn_egg run function jkpof:state/1/special_item/spawn_egg/arrow/type {type: hostile, entity: witch}
execute if items entity @s container.0 wither_skeleton_spawn_egg run function jkpof:state/1/special_item/spawn_egg/arrow/type {type: hostile, entity: wither_skeleton}
execute if items entity @s container.0 wolf_spawn_egg run function jkpof:state/1/special_item/spawn_egg/arrow/type {type: hostile, entity: wolf}
execute if items entity @s container.0 zoglin_spawn_egg run function jkpof:state/1/special_item/spawn_egg/arrow/type {type: hostile, entity: zoglin}
execute if items entity @s container.0 zombie_spawn_egg run function jkpof:state/1/special_item/spawn_egg/arrow/type {type: hostile, entity: zombie}
execute if items entity @s container.0 zombie_nautilus_spawn_egg run function jkpof:state/1/special_item/spawn_egg/arrow/type {type: hostile, entity: zombie_nautilus}
execute if items entity @s container.0 zombie_villager_spawn_egg run function jkpof:state/1/special_item/spawn_egg/arrow/type {type: hostile, entity: zombie_villager}
execute if items entity @s container.0 zombified_piglin_spawn_egg run function jkpof:state/1/special_item/spawn_egg/arrow/type {type: hostile, entity: zombified_piglin}

execute if items entity @s container.0 allay_spawn_egg run summon allay
execute if items entity @s container.0 armadillo_spawn_egg run summon armadillo
execute if items entity @s container.0 axolotl_spawn_egg run summon axolotl
execute if items entity @s container.0 camel_husk_spawn_egg run summon camel_husk
execute if items entity @s container.0 camel_spawn_egg run summon camel
execute if items entity @s container.0 cat_spawn_egg run summon cat
execute if items entity @s container.0 cod_spawn_egg run summon cod
execute if items entity @s container.0 copper_golem_spawn_egg run summon copper_golem
execute if items entity @s container.0 donkey_spawn_egg run summon donkey
execute if items entity @s container.0 glow_squid_spawn_egg run summon glow_squid
execute if items entity @s container.0 happy_ghast_spawn_egg run summon happy_ghast
execute if items entity @s container.0 horse_spawn_egg run summon horse
execute if items entity @s container.0 mooshroom_spawn_egg run summon mooshroom
execute if items entity @s container.0 mule_spawn_egg run summon mule
execute if items entity @s container.0 ocelot_spawn_egg run summon ocelot
execute if items entity @s container.0 parrot_spawn_egg run summon parrot
execute if items entity @s container.0 salmon_spawn_egg run summon salmon
execute if items entity @s container.0 skeleton_horse_spawn_egg run summon skeleton_horse
execute if items entity @s container.0 sniffer_spawn_egg run summon sniffer
execute if items entity @s container.0 snow_golem_spawn_egg run summon snow_golem
execute if items entity @s container.0 squid_spawn_egg run summon squid
execute if items entity @s container.0 strider_spawn_egg run summon strider
execute if items entity @s container.0 tadpole_spawn_egg run summon tadpole
execute if items entity @s container.0 tropical_fish_spawn_egg run summon tropical_fish
execute if items entity @s container.0 turtle_spawn_egg run summon turtle
execute if items entity @s container.0 wandering_trader_spawn_egg run summon wandering_trader
execute if items entity @s container.0 zombie_horse_spawn_egg run summon zombie_horse

kill @s
