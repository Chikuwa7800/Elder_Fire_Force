execute if score @s eff.bullet.tick matches 3 run data modify entity @s data."speed" set value 7
execute if score @s eff.bullet.tick matches 3..61 run playsound elder_force:entity.missile.fly neutral @a ~ ~ ~ 3
particle campfire_cosy_smoke ~ ~ ~ 0.0 0.0 0.0 0 1 force
execute if score @s eff.bullet.tick matches 3..61 run particle large_smoke ~ ~ ~ 0.0 0.0 0.0 0 1 force
execute if score @s eff.bullet.tick matches 3.. run particle electric_spark ~ ~ ~ 0.0 0.0 0.0 0 1 force
execute if score @s eff.bullet.tick matches 62 run data modify entity @s data."speed" set value 9
execute if score @s eff.bullet.tick matches 62.. run playsound item.trident.throw neutral @a ~ ~ ~ 0.75 0