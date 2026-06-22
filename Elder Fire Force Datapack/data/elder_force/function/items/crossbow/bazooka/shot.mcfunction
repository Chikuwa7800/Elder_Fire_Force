## 射撃
 # 演出
  playsound elder_force:item.guns.bazooka.shot player @a ~ ~ ~ 3 1
  execute anchored eyes positioned ^ ^ ^0.5 run particle large_smoke ~ ~-0.125 ~
  execute anchored eyes positioned ^ ^ ^-1 run particle campfire_cosy_smoke ~ ~-0.125 ~ 0.5 0.5 0.5 0 10
 # 弾射出
  execute anchored eyes positioned ^ ^ ^0.1 run function elder_force:entity/bullet/summon {"speed":3,"damage":7,"head_damage":12,"gravity":63,"tick":"elder_force:items/crossbow/bazooka/tick","hit":"elder_force:items/crossbow/bazooka/explotion","delete_time":83,"model":"elder_force:bullets/rocket_ammo"}
 # 反動
  effect give @s slowness 1 1 true
 # アイテムにダメージを与える
  execute if entity @s[gamemode=!creative,gamemode=!spectator] run function elder_force:items/change_item_damage {"amount": 1}
 # アイテム入れ替え
  item modify entity @s weapon.mainhand elder_force:ammo/0
  summon item_display ~ ~1100 ~ {item:{id:"minecraft:acacia_button"},transformation:{scale:[0,0,0],left_rotation:[0,0,0,0],right_rotation:[0,0,0,0],translation:[0,0,0]},Tags:["eff.change_item"]}
  execute positioned ~ ~1100 ~ run item replace entity @n[type=item_display,tag=eff.change_item] contents from entity @s weapon.mainhand
  execute positioned ~ ~1100 ~ as @n[type=item_display,tag=eff.change_item] run function elder_force:items/crossbow/bazooka/change_item
  