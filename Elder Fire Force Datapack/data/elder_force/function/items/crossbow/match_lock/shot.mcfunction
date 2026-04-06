## 射撃
 # 演出
  playsound elder_force:item.guns.match_lock.shot player @a ~ ~ ~ 3 1
  execute positioned ~ ~1.6 ~ run particle electric_spark ^ ^ ^0.5
  execute positioned ~ ~1.6 ~ run particle minecraft:white_smoke ^ ^ ^1
 # 弾射出
  execute if predicate elder_force:aim anchored eyes positioned ^ ^ ^0.1 run function elder_force:entity/bullet/summon {"speed":7,"damage":16,"head_damage":23,"gravity":5}
  execute unless predicate elder_force:aim anchored eyes positioned ^ ^ ^0.1 rotated ~1 ~-1.5 run function elder_force:entity/bullet/summon {"speed":7,"damage":16,"head_damage":23,"gravity":5}
 # リコイル
  execute if predicate elder_force:aim run function elder_force:entity/player/recoil/start {"yaw":0,"picth":-1}
  execute unless predicate elder_force:aim run function elder_force:entity/player/recoil/start {"yaw":1.5,"picth":-2}
 # アイテムにダメージを与える
  execute if entity @s[gamemode=!creative,gamemode=!spectator] run function elder_force:items/change_item_damage {"amount": 1}
 # アイテム入れ替え
  summon item_display ~ ~1100 ~ {item:{id:"minecraft:acacia_button"},transformation:{scale:[0,0,0],left_rotation:[0,0,0,0],right_rotation:[0,0,0,0],translation:[0,0,0]},Tags:["eff.change_item"]}
  execute positioned ~ ~1100 ~ run item replace entity @n[type=item_display,tag=eff.change_item] contents from entity @s weapon.mainhand
  execute positioned ~ ~1100 ~ as @n[type=item_display,tag=eff.change_item] run function elder_force:items/crossbow/match_lock/change_item
  