#ディレイ／残り火1
execute as @e[tag=EMBERSTRIKE,predicate=ho9tocraft:skill_conditions/the_ember_strike,team=RED] at @s as @e[type=!#undead,distance=..5,predicate=ho9tocraft:team_conditions/not_red] at @s run effect give @s instant_damage 1 0 false
execute as @e[tag=EMBERSTRIKE,predicate=ho9tocraft:skill_conditions/the_ember_strike,team=RED] at @s as @e[type=#undead,distance=..5,predicate=ho9tocraft:team_conditions/not_red] at @s run effect give @s instant_health 1 1 false

execute as @e[tag=EMBERSTRIKE,predicate=ho9tocraft:skill_conditions/the_ember_strike,team=GRE] at @s as @e[type=!#undead,distance=..5,predicate=ho9tocraft:team_conditions/not_gre] at @s run effect give @s instant_damage 1 0 false
execute as @e[tag=EMBERSTRIKE,predicate=ho9tocraft:skill_conditions/the_ember_strike,team=GRE] at @s as @e[type=#undead,distance=..5,predicate=ho9tocraft:team_conditions/not_gre] at @s run effect give @s instant_health 1 1 false

execute as @e[tag=EMBERSTRIKE,predicate=ho9tocraft:skill_conditions/the_ember_strike,team=BLU] at @s as @e[type=!#undead,distance=..5,predicate=ho9tocraft:team_conditions/not_blu] at @s run effect give @s instant_damage 1 0 false
execute as @e[tag=EMBERSTRIKE,predicate=ho9tocraft:skill_conditions/the_ember_strike,team=BLU] at @s as @e[type=#undead,distance=..5,predicate=ho9tocraft:team_conditions/not_blu] at @s run effect give @s instant_health 1 1 false

execute as @e[tag=EMBERSTRIKE,predicate=ho9tocraft:skill_conditions/the_ember_strike,team=MOB] at @s as @e[type=!#undead,distance=..5,predicate=ho9tocraft:team_conditions/not_mob] at @s run effect give @s instant_damage 1 0 false
execute as @e[tag=EMBERSTRIKE,predicate=ho9tocraft:skill_conditions/the_ember_strike,team=MOB] at @s as @e[type=#undead,distance=..5,predicate=ho9tocraft:team_conditions/not_mob] at @s run effect give @s instant_health 1 1 false

execute as @e[tag=EMBERSTRIKE,predicate=ho9tocraft:skill_conditions/the_ember_strike] at @s run particle flame ~ ~ ~ 5 5 5 1 900 normal
execute as @e[tag=EMBERSTRIKE,predicate=ho9tocraft:skill_conditions/the_ember_strike] at @s run schedule function ho9tocraft:skills/delayed_effect/delayed_id0008/delayed_id0008_0004 10t append
execute as @e[tag=EMBERSTRIKE,predicate=!ho9tocraft:skill_conditions/the_ember_strike] at @s run tag @s remove EMBERSTRIKE
