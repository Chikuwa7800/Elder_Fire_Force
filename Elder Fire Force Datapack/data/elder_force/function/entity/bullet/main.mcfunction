scoreboard players add @s eff.bullet.tick 1

particle dust{color:8421504,scale:0.1} ~ ~ ~ 0 0 0 0 1 force

function elder_force:entity/bullet/move with entity @s data

execute if entity @s[scores={eff.bullet.tick=100..}] run function elder_force:entity/bullet/hit_to_ground