## 撃った後
 # アイテム入れ替え
  item modify entity @s contents elder_force:wfoas
  item modify entity @s contents elder_force:match_lock/no_ammo
 # アイテムのダメージを移動
  execute store result entity @s Item.components."minecraft:damage" int 1 positioned ~ ~-1100 ~ run data get entity @p SelectedItem.components."minecraft:damage" 1
 # 移す
  execute positioned ~ ~-1100 ~ run item replace entity @p weapon.mainhand from entity @s contents
 # 終了
  kill @s