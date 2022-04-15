#重力波
execute as @s[predicate=ho9tocraft:skill_conditions/war_cry,team=RED] at @s if entity @a[predicate=ho9tocraft:team_conditions/not_red] run teleport @a[predicate=ho9tocraft:team_conditions/not_red] @s
execute as @s[predicate=ho9tocraft:skill_conditions/war_cry,team=RED] at @s if entity @a[predicate=ho9tocraft:team_conditions/not_gre] run teleport @a[predicate=ho9tocraft:team_conditions/not_gre] @s
execute as @s[predicate=ho9tocraft:skill_conditions/war_cry,team=RED] at @s if entity @a[predicate=ho9tocraft:team_conditions/not_blu] run teleport @a[predicate=ho9tocraft:team_conditions/not_blu] @s
