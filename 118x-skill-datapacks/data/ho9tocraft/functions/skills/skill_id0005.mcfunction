#地より湧き出る奔流
execute as @s[predicate=ho9tocraft:skill_conditions/earthean_edge] at @s run playsound entity.wither.shoot player @a[distance=..15] ~ ~ ~
execute as @s[predicate=ho9tocraft:skill_conditions/earthean_edge,team=RED] at @s as @e[predicate=ho9tocraft:team_conditions/not_red,sort=nearest,limit=5,distance=..15,type=!#undead] at @s run effect give @s instant_damage 60 1 false
execute as @s[predicate=ho9tocraft:skill_conditions/earthean_edge,team=GRE] at @s as @e[predicate=ho9tocraft:team_conditions/not_gre,sort=nearest,limit=5,distance=..15,type=!#undead] at @s run effect give @s instant_damage 60 1 false
execute as @s[predicate=ho9tocraft:skill_conditions/earthean_edge,team=BLU] at @s as @e[predicate=ho9tocraft:team_conditions/not_blu,sort=nearest,limit=5,distance=..15,type=!#undead] at @s run effect give @s instant_damage 60 1 false
execute as @s[predicate=ho9tocraft:skill_conditions/earthean_edge,team=MOB] at @s as @e[predicate=ho9tocraft:team_conditions/not_mob,sort=nearest,limit=5,distance=..15,type=!#undead] at @s run effect give @s instant_damage 60 1 false

execute as @s[predicate=ho9tocraft:skill_conditions/earthean_edge,team=RED] at @s as @e[predicate=ho9tocraft:team_conditions/not_red,sort=nearest,limit=5,distance=..15,type=#undead] at @s run effect give @s instant_health 60 1 false
execute as @s[predicate=ho9tocraft:skill_conditions/earthean_edge,team=GRE] at @s as @e[predicate=ho9tocraft:team_conditions/not_gre,sort=nearest,limit=5,distance=..15,type=#undead] at @s run effect give @s instant_health 60 1 false
execute as @s[predicate=ho9tocraft:skill_conditions/earthean_edge,team=BLU] at @s as @e[predicate=ho9tocraft:team_conditions/not_blu,sort=nearest,limit=5,distance=..15,type=#undead] at @s run effect give @s instant_health 60 1 false
execute as @s[predicate=ho9tocraft:skill_conditions/earthean_edge,team=MOB] at @s as @e[predicate=ho9tocraft:team_conditions/not_mob,sort=nearest,limit=5,distance=..15,type=#undead] at @s run effect give @s instant_health 60 1 false

execute as @s[predicate=ho9tocraft:skill_conditions/earthean_edge,team=RED] at @s as @e[predicate=ho9tocraft:team_conditions/not_red,sort=nearest,limit=5,distance=..15] at @s run effect give @s levitation 3 9 false
execute as @s[predicate=ho9tocraft:skill_conditions/earthean_edge,team=GRE] at @s as @e[predicate=ho9tocraft:team_conditions/not_gre,sort=nearest,limit=5,distance=..15] at @s run effect give @s levitation 3 9 false
execute as @s[predicate=ho9tocraft:skill_conditions/earthean_edge,team=BLU] at @s as @e[predicate=ho9tocraft:team_conditions/not_blu,sort=nearest,limit=5,distance=..15] at @s run effect give @s levitation 3 9 false
execute as @s[predicate=ho9tocraft:skill_conditions/earthean_edge,team=MOB] at @s as @e[predicate=ho9tocraft:team_conditions/not_mob,sort=nearest,limit=5,distance=..15] at @s run effect give @s levitation 3 9 false

execute as @s[predicate=ho9tocraft:skill_conditions/earthean_edge,team=RED] at @s as @e[predicate=ho9tocraft:team_conditions/not_red,sort=nearest,limit=5,distance=..15] at @s run tag @s add EARTHEAN_EDGE
execute as @s[predicate=ho9tocraft:skill_conditions/earthean_edge,team=GRE] at @s as @e[predicate=ho9tocraft:team_conditions/not_gre,sort=nearest,limit=5,distance=..15] at @s run tag @s add EARTHEAN_EDGE
execute as @s[predicate=ho9tocraft:skill_conditions/earthean_edge,team=BLU] at @s as @e[predicate=ho9tocraft:team_conditions/not_blu,sort=nearest,limit=5,distance=..15] at @s run tag @s add EARTHEAN_EDGE
execute as @s[predicate=ho9tocraft:skill_conditions/earthean_edge,team=MOB] at @s as @e[predicate=ho9tocraft:team_conditions/not_mob,sort=nearest,limit=5,distance=..15] at @s run tag @s add EARTHEAN_EDGE

execute as @s[predicate=ho9tocraft:skill_conditions/earthean_edge,team=RED] at @s as @e[predicate=ho9tocraft:team_conditions/not_red,sort=nearest,limit=1,distance=..15] at @s run particle dust 0.933 0.471 0.000 1 ~ ~ ~ 5 10 5 1 10000 normal @a[distance=..5]
execute as @s[predicate=ho9tocraft:skill_conditions/earthean_edge,team=GRE] at @s as @e[predicate=ho9tocraft:team_conditions/not_gre,sort=nearest,limit=1,distance=..15] at @s run particle dust 0.933 0.471 0.000 1 ~ ~ ~ 5 10 5 1 10000 normal @a[distance=..5]
execute as @s[predicate=ho9tocraft:skill_conditions/earthean_edge,team=BLU] at @s as @e[predicate=ho9tocraft:team_conditions/not_blu,sort=nearest,limit=1,distance=..15] at @s run particle dust 0.933 0.471 0.000 1 ~ ~ ~ 5 10 5 1 10000 normal @a[distance=..5]
execute as @s[predicate=ho9tocraft:skill_conditions/earthean_edge,team=MOB] at @s as @e[predicate=ho9tocraft:team_conditions/not_mob,sort=nearest,limit=1,distance=..15] at @s run particle dust 0.933 0.471 0.000 1 ~ ~ ~ 5 10 5 1 10000 normal @a[distance=..5]
