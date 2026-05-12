## リロード1段階目失敗
 # アイテム入れ替え
  item modify entity @s weapon.mainhand elder_force:match_lock/reload_failed_in_1
 # チャットで知らせる
  tellraw @s [{translate:"notice.eff.no_ammo",color:dark_red},{text:" "},{translate:"attribute.eff.name.compatible_ammunition",color:dark_red},{translate:"item.eff.wooden_cartridge",color:dark_red}]
 # 音
  playsound block.chain.break player @a ~ ~ ~ 0.5 0.75