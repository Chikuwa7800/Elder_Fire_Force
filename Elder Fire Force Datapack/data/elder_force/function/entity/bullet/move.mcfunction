function elder_force:entity/bullet/do_on_moving with entity @s data

particle smoke ^ ^ ^ 0.0125 0.0125 0.0125 0 1 force
particle smoke ^ ^ ^0.5 0.0125 0.0125 0.0125 0 1 force
particle smoke ^ ^ ^1 0.0125 0.0125 0.0125 0 1 force
$execute if score @s eff.bullet.tick matches $(gravity).. run tp @s ~ ~ ~ ~ ~0.5
$tp @s ^ ^ ^$(speed)