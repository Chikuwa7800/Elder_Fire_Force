## リロード2段階目失敗
 # アイテム入れ替え
  item modify entity @s weapon.mainhand elder_force:match_lock/reload_failed_in_2
 # チャットで知らせる
  title @s actionbar [{translate:"notice.eff.no_required_item",color:dark_red},{text:" "},{translate:"attribute.eff.name.required_for_loading",color:dark_red},{translate:"item.minecraft.gunpowder",color:dark_red}]
 # 音
  playsound block.sand.place player @a ~ ~ ~ 0.5 0.75