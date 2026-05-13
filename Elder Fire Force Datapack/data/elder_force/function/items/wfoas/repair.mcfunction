execute store result score @s eff.gun.max_damage run data get entity @s SelectedItem.components."minecraft:max_damage"
execute store result score @s eff.gun.damage run data get entity @s SelectedItem.components."minecraft:damage"
execute unless score @s eff.gun.damage < @s eff.gun.max_damage run return fail
summon item_display ~ ~1100 ~ {item:{id:"minecraft:acacia_button"},transformation:{scale:[0,0,0],left_rotation:[0,0,0,0],right_rotation:[0,0,0,0],translation:[0,0,0]},Tags:["eff.repair_item"]}
execute positioned ~ ~1100 ~ run item replace entity @n[type=item_display,tag=eff.repair_item] contents from entity @s weapon.mainhand
execute if score @s eff.gun.damage matches 0 run data modify entity @n[type=item_display,tag=eff.repair_item] item.components."minecraft:custom_data"."broken" set value false
execute positioned ~ ~1100 ~ run item replace entity @s weapon.mainhand from entity @n[type=item_display,tag=eff.repair_item] contents