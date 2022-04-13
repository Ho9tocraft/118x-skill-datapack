#効果／地より湧き出る奔流
execute as @e[tag=EARTHEAN_EDGE,team=RED] at @s as @e[team=RED,distance=..5,type=!#undead] at @s run effect give @s instant_damage 1 0 false
execute as @e[tag=EARTHEAN_EDGE,team=GRE] at @s as @e[team=GRE,distance=..5,type=!#undead] at @s run effect give @s instant_damage 1 0 false
execute as @e[tag=EARTHEAN_EDGE,team=BLU] at @s as @e[team=BLU,distance=..5,type=!#undead] at @s run effect give @s instant_damage 1 0 false
execute as @e[tag=EARTHEAN_EDGE,team=MOB] at @s as @e[team=MOB,distance=..5,type=!#undead] at @s run effect give @s instant_damage 1 0 false

execute as @e[tag=EARTHEAN_EDGE,team=RED] at @s as @e[team=RED,distance=..5,type=#undead] at @s run effect give @s instant_health 1 0 false
execute as @e[tag=EARTHEAN_EDGE,team=GRE] at @s as @e[team=GRE,distance=..5,type=#undead] at @s run effect give @s instant_health 1 0 false
execute as @e[tag=EARTHEAN_EDGE,team=BLU] at @s as @e[team=BLU,distance=..5,type=#undead] at @s run effect give @s instant_health 1 0 false
execute as @e[tag=EARTHEAN_EDGE,team=MOB] at @s as @e[team=MOB,distance=..5,type=#undead] at @s run effect give @s instant_health 1 0 false

execute as @e[tag=EARTHEAN_EDGE,team=RED] at @s as @e[team=RED,distance=..5] at @s if predicate ho9tocraft:randomizer/random_quarter run tag @s add EARTHEAN_EDGE
execute as @e[tag=EARTHEAN_EDGE,team=GRE] at @s as @e[team=GRE,distance=..5] at @s if predicate ho9tocraft:randomizer/random_quarter run tag @s add EARTHEAN_EDGE
execute as @e[tag=EARTHEAN_EDGE,team=BLU] at @s as @e[team=BLU,distance=..5] at @s if predicate ho9tocraft:randomizer/random_quarter run tag @s add EARTHEAN_EDGE
execute as @e[tag=EARTHEAN_EDGE,team=MOB] at @s as @e[team=MOB,distance=..5] at @s if predicate ho9tocraft:randomizer/random_quarter run tag @s add EARTHEAN_EDGE

execute as @e[tag=EARTHEAN_EDGE,sort=random,limit=5] at @s run tag @s remove EARTHEAN_EDGE
execute as @e[tag=EARTHEAN_EDGE,sort=random,limit=5] at @s if predicate ho9tocraft:randomizer/random_half run tag @s remove EARTHEAN_EDGE
execute as @e[tag=EARTHEAN_EDGE,sort=random,limit=5] at @s if predicate ho9tocraft:randomizer/random_thirdpart run tag @s remove EARTHEAN_EDGE
execute as @e[tag=EARTHEAN_EDGE,sort=random,limit=5] at @s if predicate ho9tocraft:randomizer/random_quarter run tag @s remove EARTHEAN_EDGE
