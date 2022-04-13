#ハイパーノヴァ
execute as @s[predicate=ho9tocraft:skill_conditions/hypernova] at @s run playsound entity.blaze.shoot player @a[distance=..40] ~ ~ ~
execute as @s[predicate=ho9tocraft:skill_conditions/hypernova] at @s run particle flame ~ ~ ~ 30 30 30 1 160000 normal @a[distance=..50]
execute as @s[predicate=ho9tocraft:skill_conditions/hypernova,team=RED] at @s as @e[type=!#undead,distance=..30,predicate=ho9tocraft:team_conditions/not_red] at @s run effect give @s instant_damage 1 1 false
execute as @s[predicate=ho9tocraft:skill_conditions/hypernova,team=GRE] at @s as @e[type=!#undead,distance=..30,predicate=ho9tocraft:team_conditions/not_gre] at @s run effect give @s instant_damage 1 1 false
execute as @s[predicate=ho9tocraft:skill_conditions/hypernova,team=BLU] at @s as @e[type=!#undead,distance=..30,predicate=ho9tocraft:team_conditions/not_blu] at @s run effect give @s instant_damage 1 1 false
execute as @s[predicate=ho9tocraft:skill_conditions/hypernova,team=MOB] at @s as @e[type=!#undead,distance=..30,predicate=ho9tocraft:team_conditions/not_mob] at @s run effect give @s instant_damage 1 1 false
execute as @s[predicate=ho9tocraft:skill_conditions/hypernova,team=RED] at @s as @e[type=#undead,distance=..30,predicate=ho9tocraft:team_conditions/not_red] at @s run effect give @s instant_health 1 1 false
execute as @s[predicate=ho9tocraft:skill_conditions/hypernova,team=GRE] at @s as @e[type=#undead,distance=..30,predicate=ho9tocraft:team_conditions/not_gre] at @s run effect give @s instant_health 1 1 false
execute as @s[predicate=ho9tocraft:skill_conditions/hypernova,team=BLU] at @s as @e[type=#undead,distance=..30,predicate=ho9tocraft:team_conditions/not_blu] at @s run effect give @s instant_health 1 1 false
execute as @s[predicate=ho9tocraft:skill_conditions/hypernova,team=MOB] at @s as @e[type=#undead,distance=..30,predicate=ho9tocraft:team_conditions/not_mob] at @s run effect give @s instant_health 1 1 false

execute as @s[predicate=ho9tocraft:skill_conditions/hypernova,team=RED] at @s as @e[distance=..30,predicate=ho9tocraft:team_conditions/not_red] at @s run effect give @s slowness 30 0 false
execute as @s[predicate=ho9tocraft:skill_conditions/hypernova,team=GRE] at @s as @e[distance=..30,predicate=ho9tocraft:team_conditions/not_gre] at @s run effect give @s slowness 30 0 false
execute as @s[predicate=ho9tocraft:skill_conditions/hypernova,team=BLU] at @s as @e[distance=..30,predicate=ho9tocraft:team_conditions/not_blu] at @s run effect give @s slowness 30 0 false
execute as @s[predicate=ho9tocraft:skill_conditions/hypernova,team=MOB] at @s as @e[distance=..30,predicate=ho9tocraft:team_conditions/not_mob] at @s run effect give @s slowness 30 0 false

execute as @s[predicate=ho9tocraft:skill_conditions/hypernova,team=RED] at @s as @e[distance=..30,predicate=ho9tocraft:team_conditions/not_red] at @s run effect give @s weakness 30 0 false
execute as @s[predicate=ho9tocraft:skill_conditions/hypernova,team=GRE] at @s as @e[distance=..30,predicate=ho9tocraft:team_conditions/not_gre] at @s run effect give @s weakness 30 0 false
execute as @s[predicate=ho9tocraft:skill_conditions/hypernova,team=BLU] at @s as @e[distance=..30,predicate=ho9tocraft:team_conditions/not_blu] at @s run effect give @s weakness 30 0 false
execute as @s[predicate=ho9tocraft:skill_conditions/hypernova,team=MOB] at @s as @e[distance=..30,predicate=ho9tocraft:team_conditions/not_mob] at @s run effect give @s weakness 30 0 false

execute as @s[predicate=ho9tocraft:skill_conditions/hypernova,team=RED] at @s as @e[distance=..30,predicate=ho9tocraft:team_conditions/not_red] at @s run effect give @s mining_fatigue 30 1 false
execute as @s[predicate=ho9tocraft:skill_conditions/hypernova,team=GRE] at @s as @e[distance=..30,predicate=ho9tocraft:team_conditions/not_gre] at @s run effect give @s mining_fatigue 30 1 false
execute as @s[predicate=ho9tocraft:skill_conditions/hypernova,team=BLU] at @s as @e[distance=..30,predicate=ho9tocraft:team_conditions/not_blu] at @s run effect give @s mining_fatigue 30 1 false
execute as @s[predicate=ho9tocraft:skill_conditions/hypernova,team=MOB] at @s as @e[distance=..30,predicate=ho9tocraft:team_conditions/not_mob] at @s run effect give @s mining_fatigue 30 1 false
