advancement revoke @s only jkpof:hurt/player/player_attack
execute unless score @s jkpof.damage.type.now matches 298 run function jkpof:state/1/hurt/player/_real {id: 201}
