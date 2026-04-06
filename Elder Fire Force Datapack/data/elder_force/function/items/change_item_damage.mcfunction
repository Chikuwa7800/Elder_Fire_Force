## アイテム耐久値加算
## マクロ: {"amount": int}
 # 演算処理
  # 最大耐久値を取得
   execute store result score @s eff.gun.max_damage run data get entity @s SelectedItem.components."minecraft:max_damage"
  # 現耐久値を取得
   execute store result score @s eff.gun.damage run data get entity @s SelectedItem.components."minecraft:damage"
  # 追加したいダメージ取得
   $scoreboard players set @s eff.gun.will_damage $(amount)
  # 演算
   scoreboard players operation @s eff.gun.damage += @s eff.gun.will_damage
  # 演算結果が最大耐久値以上なら耐久を0にする
   execute if score @s eff.gun.damage > @s eff.gun.max_damage run scoreboard players operation @s eff.gun.damage = @s eff.gun.max_damage

 # アイテムに代入
  # 代替エンティティ召喚
   summon item_display ~ ~ ~ {Tags:["eff.damage_add"],transformation:{scale:[0,0,0],left_rotation:[0,0,0,0],right_rotation:[0,0,0,0],translation:[0,0,0]}}
  # 代替エンティティにアイテムをコピー
   item replace entity @n[type=item_display,tag=eff.damage_add] contents from entity @s weapon.mainhand
  # 代替エンティティにダメージ代入
   execute store result entity @n[type=item_display,tag=eff.damage_add] item.components."minecraft:damage" int 1 run scoreboard players get @s eff.gun.damage
  # 実行者にアイテムを移す
   item replace entity @s weapon.mainhand from entity @n[type=item_display,tag=eff.damage_add] contents

 # 後始末
  # 代替エンティティキル
   kill @n[type=item_display,tag=eff.damage_add]
  # 誤爆が怖いので一応スコアリセット
   scoreboard players reset @s eff.gun.damage
   scoreboard players reset @s eff.gun.will_damage
   scoreboard players reset @s eff.gun.max_damage