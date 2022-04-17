#キルオーラ
execute as @s[predicate=ho9tocraft:skill_conditions/earthean_edge,team=RED] at @s as @a[predicate=ho9tocraft:team_conditions/not_red,distance=..15] at @s run effect give @s instant_damage 1 0 false
execute as @s[predicate=ho9tocraft:skill_conditions/earthean_edge,team=GRE] at @s as @a[predicate=ho9tocraft:team_conditions/not_gre,distance=..15] at @s run effect give @s instant_damage 1 0 false
execute as @s[predicate=ho9tocraft:skill_conditions/earthean_edge,team=BLU] at @s as @a[predicate=ho9tocraft:team_conditions/not_blu,distance=..15] at @s run effect give @s instant_damage 1 0 false
