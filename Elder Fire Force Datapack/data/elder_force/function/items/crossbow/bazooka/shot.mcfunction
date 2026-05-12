## 射撃
 # 演出
  playsound elder_force:item.guns.bazooka.shot player @a ~ ~ ~ 3 1
  execute positioned ~ ~1.6 ~ run particle electric_spark ^ ^ ^0.5
  execute positioned ~ ~1.6 ~ run particle minecraft:white_smoke ^ ^ ^1
 # 弾射出
  execute anchored eyes positioned ^ ^ ^0.1 run function elder_force:entity/bullet/summon {"speed":7,"damage":16,"head_damage":23,"gravity":5,"tick":"elder_force:","hit":"elder_force:"}
 # 反動
  effect give @s slowness 1 1
 # アイテムにダメージを与える
  execute if entity @s[gamemode=!creative,gamemode=!spectator] run function elder_force:items/change_item_damage {"amount": 1}
 # アイテム入れ替え
  summon item_display ~ ~1100 ~ {item:{id:"minecraft:acacia_button"},transformation:{scale:[0,0,0],left_rotation:[0,0,0,0],right_rotation:[0,0,0,0],translation:[0,0,0]},Tags:["eff.change_item"]}
  execute positioned ~ ~1100 ~ run item replace entity @n[type=item_display,tag=eff.change_item] contents from entity @s weapon.mainhand
  execute positioned ~ ~1100 ~ as @n[type=item_display,tag=eff.change_item] run function elder_force:items/crossbow/bazooka/change_item
  