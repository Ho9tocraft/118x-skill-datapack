#構え／Stance[Broadsword]
execute as @s[predicate=ho9tocraft:skill_conditions/stance_broadsword,team=RED] at @s as @e[predicate=ho9tocraft:team_conditions/not_red,distance=..3] at @s run effect give @s slowness 5 3 false
execute as @s[predicate=ho9tocraft:skill_conditions/stance_broadsword,team=GRE] at @s as @e[predicate=ho9tocraft:team_conditions/not_gre,distance=..3] at @s run effect give @s slowness 5 3 false
execute as @s[predicate=ho9tocraft:skill_conditions/stance_broadsword,team=BLU] at @s as @e[predicate=ho9tocraft:team_conditions/not_blu,distance=..3] at @s run effect give @s slowness 5 3 false
execute as @s[predicate=ho9tocraft:skill_conditions/stance_broadsword,team=MOB] at @s as @e[predicate=ho9tocraft:team_conditions/not_mob,distance=..3] at @s run effect give @s slowness 5 3 false

execute as @s[predicate=ho9tocraft:skill_conditions/stance_broadsword,team=RED] at @s as @e[predicate=ho9tocraft:team_conditions/not_red,distance=..6,limit=1,sort=nearest] at @s run tag @s add TARGET_STANCE_BROADSWORD
execute as @s[predicate=ho9tocraft:skill_conditions/stance_broadsword,team=GRE] at @s as @e[predicate=ho9tocraft:team_conditions/not_gre,distance=..6,limit=1,sort=nearest] at @s run tag @s add TARGET_STANCE_BROADSWORD
execute as @s[predicate=ho9tocraft:skill_conditions/stance_broadsword,team=BLU] at @s as @e[predicate=ho9tocraft:team_conditions/not_blu,distance=..6,limit=1,sort=nearest] at @s run tag @s add TARGET_STANCE_BROADSWORD
execute as @s[predicate=ho9tocraft:skill_conditions/stance_broadsword,team=MOB] at @s as @e[predicate=ho9tocraft:team_conditions/not_mob,distance=..6,limit=1,sort=nearest] at @s run tag @s add TARGET_STANCE_BROADSWORD

execute as @s[predicate=ho9tocraft:skill_conditions/stance_broadsword] at @s run tag @s add WARP_HOST_BROADSWORD
execute as @s[predicate=ho9tocraft:skill_conditions/stance_broadsword] at @s run schedule function ho9tocraft:skills/delayed_effect/delayed_id0003 10t append
