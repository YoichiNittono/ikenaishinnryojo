[_tb_system_call storage=system/_scene6.ks]

[cm  ]
*症例E

[movie  volume="50"  storage="砂嵐画像-2.mp4"  ]
[tb_hide_message_window  ]
[bg  time="0"  method="fadeIn"  storage="診療場面.jpg"  ]
[chara_show  name="カルテの情報"  time="1000"  wait="true"  storage="chara/3/患者シルエット.png"  width="213"  height="325"  left="142"  top="75"  reflect="false"  ]
[wait  time="1000"  ]
[tb_show_message_window  ]
[tb_start_text mode=1 ]
#【カルテの情報】
48歳の男性。主訴は右眼の視力障害。[p]
#
[_tb_end_text]

[tb_hide_message_window  ]
[l  ]
[tb_show_message_window  ]
[tb_start_text mode=1 ]
#医師
次の方、どうぞ。[p]
#
[_tb_end_text]

[chara_show  name="医師の影"  time="1000"  wait="false"  left="920"  top="75"  width="216"  height="332"  reflect="false"  ]
[tb_start_text mode=1 ]
#医師
どうされましたか？[p]
#患者
右目が見えなくなりまして・・・。[p]
#医師
どのような状況で？[p]
#患者
工作をしていまして、木材をカットしていたときに釘のようなものが飛んできて。[p]
#医師
目に当たったんですか？　保護眼鏡などは装着されていなかったんですね。[p]
#患者
はい。[p]
目に当たって、そしたら右目が見えなくなって・・・。[p]
#医師
視力検査の結果は・・・。[p]
#【カルテの情報】
視力：右眼手動弁（矯正不能）、左眼1.2（矯正不能）[p]
#
[_tb_end_text]

[tb_start_text mode=1 ]
#医師
わかりました。[p]
眼内に異物が残っているかもしれません。[p]
眼窩部のMRI検査を行いますので、お待ちください。[p]
#患者
はい。[p]
#
[_tb_end_text]

[tb_hide_message_window  ]
[chara_hide_all  time="1000"  wait="true"  ]
[movie  volume="50"  storage="砂嵐画像-2.mp4"  ]
[tb_show_message_window  ]
[bg  time="0"  method="fadeIn"  storage="背景2_モニター.jpg"  ]
[wait  time="1000"  ]
[tb_start_text mode=1 ]
#
いまの会話に、おかしなところはあったか？[p]
[_tb_end_text]

[tb_hide_message_window  ]
[glink  color="black"  storage="scene2.ks"  size="20"  x="471"  y="260"  width=""  height=""  text="何かおかしい・・・引き返す"  _clickable_img=""  target="*正解2"  ]
[glink  color="black"  storage="scene6.ks"  size="20"  x="471"  y="346"  width=""  height=""  text="特に問題はない・・・・進む"  _clickable_img=""  target="*失格"  ]
[s  ]
*失格

[playbgm  volume="40"  time="1000"  loop="true"  storage="消えた絵画.mp3"  ]
[chara_show  name="謎の人物"  time="1000"  wait="true"  left="1"  top="-1"  width=""  height=""  reflect="false"  ]
[tb_show_message_window  ]
[tb_start_text mode=1 ]
#謎の人物
何も問題がないと・・・本当にそう思ったのか？[p]
#
うわ、いつの間に！[p]
[_tb_end_text]

[chara_mod  name="謎の人物"  time="600"  cross="true"  storage="chara/1/09_okoru2.PNG"  ]
[tb_start_text mode=1 ]
#謎の人物
患者は工作中に「釘のようなもの」が飛んできて目に当たったと言っている。[p]
確かに、眼窩内に異物が残留していないか探索することは重要だ。[p]
だが、[font size=40 color=yellow bold=true]眼窩内に鉄片が残っている状態で、MRIの強力な磁場[resetfont]を与えたら・・・。[p]
想像しただけで背筋が凍る話だ。[p]
[_tb_end_text]

[chara_mod  name="謎の人物"  time="600"  cross="true"  storage="chara/1/07_iradatsu.PNG"  ]
[tb_start_text mode=1 ]
#謎の人物
患者は眼球組織を障害され、場合によっては失明の危険も追うことになる。[p]
こんなミスを見逃すとは・・・。[p]
残念だが、君は失格だ。[p]
#
[_tb_end_text]

[chara_hide  name="謎の人物"  time="1000"  wait="true"  pos_mode="true"  ]
[tb_hide_message_window  ]
[stopbgm  time="1500"  fadeout="true"  ]
[wait  time="1000"  ]
[playse  volume="100"  time="0"  buf="0"  clear="true"  storage="ドーン-2.mp3"  ]
[bg  time="0"  method="fadeIn"  storage="Game_Over.mov.001.png"  ]
[s  ]
*正解2

[playbgm  volume="40"  time="0"  loop="true"  fadein="false"  storage="ホータロウ監査官.mp3"  ]
[bg  time="0"  method="fadeIn"  storage="背景2_モニター.jpg"  ]
[tb_show_message_window  ]
[tb_start_text mode=1 ]
#
患者は受傷時に「釘のようなもの」が目に当たったと言っている。[p]
眼窩内の異物を探索することは大切だ。[p]
だが、[font size=40 color=red bold=true]MRIで探索するのはダメ[resetfont]だ。[p]
励起した強力な磁場が異物を移動させたり、眼内で発熱させる危険だってある。[p]
これは[font size=40 color=yellow bold=true]CTや細隙灯顕微鏡を使って異物探索を行うべきケース[resetfont]だ。[p]
この対応は[delay speed=220] ・・・[resetdelay][font size=60 bold=true]間違っている！[resetfont][p]
#
[_tb_end_text]

[tb_hide_message_window  ]
[playse  volume="100"  time="1000"  buf="0"  storage="ドーン.mp3"  clear="false"  ]
[chara_show  name="問題あり、なし"  time="200"  wait="true"  storage="chara/4/問題あり.png"  width="451"  height="451"  left="620"  top="42"  reflect="false"  ]
[l  ]
[stopse  time="1500"  buf="0"  fadeout="true"  ]
[chara_hide  name="問題あり、なし"  time="1000"  wait="true"  pos_mode="true"  ]
[tb_show_message_window  ]
[stopbgm  time="1500"  fadeout="true"  ]
[wait  time="2000"  ]
[movie  volume="50"  storage="砂嵐画像-2.mp4"  ]
[bg  time="0"  method="fadeIn"  storage="集中治療室.jpg"  ]
[chara_show  name="医師の影"  time="1000"  wait="false"  left="920"  top="75"  width="216"  height="332"  reflect="false"  ]
[chara_show  name="カルテの情報"  time="1000"  wait="true"  storage="chara/3/患者シルエット.png"  width="213"  height="325"  left="142"  top="75"  reflect="false"  ]
[tb_show_message_window  ]
[wait  time="1000"  ]
[tb_start_text mode=1 ]
#医師
わかりました。[p]
眼内に異物が残っているかもしれません。[p]
眼窩部のCT検査を行いますので、お待ちください。[p]
#患者
はい。[p]
#
[_tb_end_text]

[chara_hide_all  time="1000"  wait="true"  ]
[tb_hide_message_window  ]
[movie  volume="50"  storage="砂嵐画像-2.mp4"  ]
[bg  time="0"  method="fadeIn"  storage="背景2_モニター.jpg"  ]
[tb_show_message_window  ]
[wait  time="1000"  ]
[tb_start_text mode=1 ]
#
検査方法がMRIからCTに変更された。[p]
よかった。次の症例に進もう。[p]
[_tb_end_text]

[jump  storage="scene1（Test）.ks"  target="*labelend"  cond=""  ]
[s  ]
