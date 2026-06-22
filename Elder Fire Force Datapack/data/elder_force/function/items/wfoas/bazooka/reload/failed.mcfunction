## リロード失敗
 # アイテム入れ替え
  item modify entity @s weapon.mainhand elder_force:bazooka/loaded
 # チャットで知らせる
  title @s actionbar [{translate:"notice.eff.no_ammo",color:dark_red},{text:" "},{translate:"attribute.eff.name.compatible_ammunition",color:dark_red},{translate:"item.eff.rocket_ammo",color:dark_red}]
 # 音
  playsound item.armor.equip_leather player @a ~ ~ ~ 0.5 0.75