## スコア設定
 # キノコ棒を使ったかの検知
  scoreboard objectives add eff.using_stick minecraft.used:warped_fungus_on_a_stick
 # リロード用
  scoreboard objectives add eff.reload_tick dummy
 # エンティティid
  scoreboard objectives add eff.entity_id dummy
 # 弾の再帰
  scoreboard objectives add eff.bullet.rerun dummy
 # 弾の経過時間
  scoreboard objectives add eff.bullet.tick dummy
 # 弾のダメージ
  scoreboard objectives add eff.bullet.damage dummy
 # 銃の最大耐久値
  scoreboard objectives add eff.gun.max_damage dummy
 # 銃の耐久値
  scoreboard objectives add eff.gun.damage dummy
 # 減らしたい耐久値
  scoreboard objectives add eff.gun.will_damage dummy
 # リコイルtick
  scoreboard objectives add eff.recoil_tick dummy
 # 10
  scoreboard objectives add eff.10 dummy
  scoreboard players set $eff.amount eff.10 10