## 弾丸移動
 # 次の移動先が読み込み範囲外なら消去
  $execute unless loaded ^ ^ ^$(speed) run function elder_force:entity/bullet/hit_to_ground
 # 移動中の処理
  function elder_force:entity/bullet/do_on_moving with entity @s data
 # 等速直線運動とかよくないからね、gravity値を超えると簡易的な重力影響を受ける
  $execute if score @s eff.bullet.tick matches $(gravity).. run tp @s ~ ~ ~ ~ ~0.5
 # 移動速度分移動
  $tp @s ^ ^ ^$(speed)