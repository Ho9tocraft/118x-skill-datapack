#酸の噴射／Acid Surge
execute as @s[predicate=ho9tocraft:skill_conditions/acid_surge] at @s run playsound item.bucket.empty player @a[distance=..15] ~ ~ ~
execute as @s[predicate=ho9tocraft:skill_conditions/acid_surge,team=RED] at @s run summon area_effect_cloud ~ ~ ~ {Particle:"dust 0.918 0.333 0.314 1",Radius:3f,ReapplicationDelay:1,Duration:600,Age:0,Tags:["TEAM_RED","AOE_ACID_SURGE"]}
execute as @s[predicate=ho9tocraft:skill_conditions/acid_surge,team=GRE] at @s run summon area_effect_cloud ~ ~ ~ {Particle:"dust 0.918 0.333 0.314 1",Radius:3f,ReapplicationDelay:1,Duration:600,Age:0,Tags:["TEAM_GRE","AOE_ACID_SURGE"]}
execute as @s[predicate=ho9tocraft:skill_conditions/acid_surge,team=BLU] at @s run summon area_effect_cloud ~ ~ ~ {Particle:"dust 0.918 0.333 0.314 1",Radius:3f,ReapplicationDelay:1,Duration:600,Age:0,Tags:["TEAM_BLU","AOE_ACID_SURGE"]}
execute as @s[predicate=ho9tocraft:skill_conditions/acid_surge,team=MOB] at @s run summon area_effect_cloud ~ ~ ~ {Particle:"dust 0.918 0.333 0.314 1",Radius:3f,ReapplicationDelay:1,Duration:600,Age:0,Tags:["TEAM_MOB","AOE_ACID_SURGE"]}
