#default: 咆哮
execute as @s[predicate=ho9tocraft:skill_conditions/howling] at @s run effect give @s strength 5 0 false
#RED→BLU,GRE,MOB
execute as @s[predicate=ho9tocraft:skill_conditions/howling,team=RED] at @s as @e[predicate=ho9tocraft:team_conditions/not_red,distance=..3] at @s run effect give @s slowness 5 0 false
#GRE→BLU,RED,MOB
execute as @s[predicate=ho9tocraft:skill_conditions/howling,team=GRE] at @s as @e[predicate=ho9tocraft:team_conditions/not_gre,distance=..3] at @s run effect give @s slowness 5 0 false
#BLU→RED,GRE,MOB
execute as @s[predicate=ho9tocraft:skill_conditions/howling,team=BLU] at @s as @e[predicate=ho9tocraft:team_conditions/not_blu,distance=..3] at @s run effect give @s slowness 5 0 false
#MOB→RED,GRE,BLU
execute as @s[predicate=ho9tocraft:skill_conditions/howling,team=MOB] at @s as @e[predicate=ho9tocraft:team_conditions/not_mob,distance=..3] at @s run effect give @s slowness 5 0 false

#亜種: 獣の咆哮
execute as @s[predicate=ho9tocraft:skill_conditions/beast_howling] at @s run effect give @s strength 5 0 false
#RED→BLU,GRE,MOB
execute as @s[predicate=ho9tocraft:skill_conditions/beast_howling,team=RED] at @s as @e[predicate=ho9tocraft:team_conditions/not_red,distance=..5] at @s run effect give @s slowness 5 1 false
#GRE→BLU,RED,MOB
execute as @s[predicate=ho9tocraft:skill_conditions/beast_howling,team=GRE] at @s as @e[predicate=ho9tocraft:team_conditions/not_gre,distance=..5] at @s run effect give @s slowness 5 1 false
#BLU→RED,GRE,MOB
execute as @s[predicate=ho9tocraft:skill_conditions/beast_howling,team=BLU] at @s as @e[predicate=ho9tocraft:team_conditions/not_blu,distance=..5] at @s run effect give @s slowness 5 1 false
#MOB→RED,GRE,BLU
execute as @s[predicate=ho9tocraft:skill_conditions/beast_howling,team=MOB] at @s as @e[predicate=ho9tocraft:team_conditions/not_mob,distance=..5] at @s run effect give @s slowness 5 1 false
