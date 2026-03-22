tag @s add eff.bullet
tag @s add eff.normal_bullet
execute store result score @s eff.entity_id run scoreboard players get @n[tag=eff.shot] eff.entity_id
execute store result entity @s data."owner" float 1 run scoreboard players get @n[tag=eff.shot] eff.entity_id
$data merge entity @s {teleport_duration:1,shadow_radius:0.1,shadow_strength:1,data:{"speed":"$(speed)","damage":"$(damage)","gravity":"$(gravity)"}}
execute rotated as @n[tag=eff.shot] run rotate @s ~ ~
