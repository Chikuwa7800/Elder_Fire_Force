## 発射準備
 summon item_display ~ ~1100 ~ {item:{id:"minecraft:acacia_button"},transformation:{scale:[0,0,0],left_rotation:[0,0,0,0],right_rotation:[0,0,0,0],translation:[0,0,0]},Tags:["eff.change_item"]}
 execute positioned ~ ~1100 ~ run item replace entity @n[type=item_display,tag=eff.change_item] contents from entity @s weapon.mainhand
 # 火縄銃
  execute if predicate elder_force:gun/match_lock positioned ~ ~1100 ~ as @n[type=item_display,tag=eff.change_item] run function elder_force:items/wfoas/match_lock/ready
  