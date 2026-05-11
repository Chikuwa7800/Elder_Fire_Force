## 発射準備解除
 # アイテム入れ替え
  item modify entity @s contents elder_force:wfoas
  item modify entity @s contents elder_force:match_lock/loaded
 # アイテムのダメージを移動
  execute store result entity @s Item.components."minecraft:damage" int 1 positioned ~ ~-1100 ~ run data get entity @p SelectedItem.components."minecraft:damage" 1
 # 移す
  execute positioned ~ ~-1100 ~ run item replace entity @p weapon.mainhand from entity @s contents
 # 音
  playsound block.iron_trapdoor.close player @a ~ ~-1100 ~ 0.5 1
 # 終了
  kill @s