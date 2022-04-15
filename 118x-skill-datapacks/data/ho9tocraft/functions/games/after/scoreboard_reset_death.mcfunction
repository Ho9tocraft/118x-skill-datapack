execute as @a[scores={death=1..}] at @s run effect give @s strength 40 3 false
execute as @a[scores={death=1..}] at @s run effect give @s resistance 20 4 false
execute as @a[scores={death=1..}] at @s run effect give @s invisibility 20 0 false
execute as @a[scores={death=1..}] at @s run effect give @s weakness 30 255 false

execute as @a[scores={death=1..},team=RED] at @s as @e[predicate=ho9tocraft:team_conditions/not_red,distance=..15] at @s run effect give @s weakness 30 3 false
execute as @a[scores={death=1..},team=RED] at @s as @e[predicate=ho9tocraft:team_conditions/not_red,distance=..15] at @s run effect give @s mining_fatigue 30 3 false

execute as @a[scores={death=1..},team=GRE] at @s as @e[predicate=ho9tocraft:team_conditions/not_gre,distance=..15] at @s run effect give @s weakness 30 3 false
execute as @a[scores={death=1..},team=GRE] at @s as @e[predicate=ho9tocraft:team_conditions/not_gre,distance=..15] at @s run effect give @s mining_fatigue 30 3 false

execute as @a[scores={death=1..},team=BLU] at @s as @e[predicate=ho9tocraft:team_conditions/not_blu,distance=..15] at @s run effect give @s weakness 30 3 false
execute as @a[scores={death=1..},team=BLU] at @s as @e[predicate=ho9tocraft:team_conditions/not_blu,distance=..15] at @s run effect give @s mining_fatigue 30 3 false

scoreboard players set @a[scores={death=1..}] death 0
