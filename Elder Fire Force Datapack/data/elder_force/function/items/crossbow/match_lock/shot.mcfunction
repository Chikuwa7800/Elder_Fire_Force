item modify entity @s weapon.mainhand elder_force:wfoas
item modify entity @s weapon.mainhand elder_force:match_lock/no_ammo
playsound elder_force:item.guns.match_lock.shot player @a ~ ~ ~ 3 1
execute positioned ~ ~1.6 ~ run particle flame ^ ^ ^0.5

execute anchored eyes positioned ^ ^ ^0.1 run function elder_force:entity/bullet/summon {"speed":5,"damage":16,"gravity":6}