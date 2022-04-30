#残り火
execute as @s[predicate=ho9tocraft:skill_conditions/the_ember_strike] at @s run tag @s add EMBERSTRIKE
execute as @s[predicate=ho9tocraft:skill_conditions/the_ember_strike] at @s run schedule function ho9tocraft:skills/delayed_effect/delayed_id0008/delayed_id0008_0001 10t append
