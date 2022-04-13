#--AoE展開--
execute as @e[type=area_effect_cloud,tag=TEAM_RED,tag=AOE_ACID_SURGE] at @s as @e[predicate=ho9tocraft:team_conditions/not_red,distance=..5] at @s run effect give @s poison 5 3 false
execute as @e[type=area_effect_cloud,tag=TEAM_GRE,tag=AOE_ACID_SURGE] at @s as @e[predicate=ho9tocraft:team_conditions/not_gre,distance=..5] at @s run effect give @s poison 5 3 false
execute as @e[type=area_effect_cloud,tag=TEAM_BLU,tag=AOE_ACID_SURGE] at @s as @e[predicate=ho9tocraft:team_conditions/not_blu,distance=..5] at @s run effect give @s poison 5 3 false
execute as @e[type=area_effect_cloud,tag=TEAM_MOB,tag=AOE_ACID_SURGE] at @s as @e[predicate=ho9tocraft:team_conditions/not_mob,distance=..5] at @s run effect give @s poison 5 3 false
