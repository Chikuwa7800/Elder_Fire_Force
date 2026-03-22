## エンティティid
scoreboard players add $eff.entity_id_counter eff.entity_id 1
scoreboard players operation @s eff.entity_id = $eff.entity_id_counter eff.entity_id
tag @s add eff.has.entity_id
execute if score $eff.entity_id_counter eff.entity_id matches 2147483647 run scoreboard players set $eff.entity_id_counter eff.entity_id -2147483648
