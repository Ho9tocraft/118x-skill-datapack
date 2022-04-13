#踏み込み／Stance[Greatsword]
execute as @s[predicate=ho9tocraft:skill_conditions/stance_greatsword] at @s run playsound entity.player.attack.crit player @a[distance=..15]
execute as @s[predicate=ho9tocraft:skill_conditions/stance_greatsword] at @s run effect give @s strength 3 3 false
execute as @s[predicate=ho9tocraft:skill_conditions/stance_greatsword] at @s run effect give @s resistance 3 3 false
