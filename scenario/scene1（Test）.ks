[_tb_system_call storage=system/_scene1（Test）.ks]

*ランダム

[iscript]
//シャッフル設定
function arrShuffle(arr){
var len = arr.length;
while(len > 0){
var rnd = Math.floor(Math.random() * len);
var tmp = arr[len-1];
arr[len-1] = arr[rnd];
arr[rnd] = tmp;
len-=1;
}
}
//配列を生成
var arr = [1,2,3,4,5,6];
//配列をシャッフルする
arrShuffle(arr);
//配列をゲーム変数へ
f.ran1 = arr[0];
f.ran2 = arr[1];
f.ran3 = arr[2];
f.ran4 = arr[3];
[endscript]

[eval exp="f.cnt=1"]

*loopstart

[iscript]
if (f.cnt==1) {
f.label = "*"+f.ran1;
}
else if (f.cnt==2) {
f.label = "*"+f.ran2;
}
else if (f.cnt==3) {
f.label = "*"+f.ran3;
}
else if (f.cnt==4) {
f.label = "*"+f.ran4;
}
else if (f.cnt==5) {
f.label = "*"+f.ran5;
}
else if (f.cnt==6) {
f.label = "*"+f.ran6;
}
[endscript]

[jump  target="&f.label"  storage=""  ]
*1

[jump  storage="scene2.ks"  target="*症例A"  ]
[jump  target="*labelend"  storage=""  ]
*2

[jump  storage="scene3.ks"  target="*症例B"  ]
[jump  target="*labelend"  storage=""  ]
*3

[jump  storage="scene4.ks"  target="*症例C"  ]
[jump  target="*labelend"  storage=""  ]
*4

[jump  storage="scene5.ks"  target="*症例D"  ]
[jump  target="*labelend"  storage=""  ]
*5

[jump  storage="scene6.ks"  target="*症例E"  ]
[jump  target="*labelend"  storage=""  ]
*6

[jump  storage="scene7.ks"  target="*症例F"  ]
[jump  target="*labelend"  storage=""  ]
*labelend

[jump  target="*loopend"  cond="f.cnt==4"  storage=""  ]
[eval exp="f.cnt=f.cnt+1"]

[jump  target="*loopstart"  storage=""  ]
*loopend

*endingscene

[playbgm  volume="40"  time="1000"  loop="true"  storage="消えた絵画.mp3"  ]
[bg  time="1000"  method="crossfade"  storage="背景2_モニター.jpg"  ]
[chara_show  name="謎の人物"  time="1000"  wait="true"  left="1"  top="-1"  width="800"  height="1653"  reflect="false"  storage="chara/1/04_tsujo4.PNG"  ]
[tb_show_message_window  ]
[tb_start_text mode=1 ]
#謎の人物
ご苦労。[p]
#
うわ、いつの間に！[p]
#謎の人物
ここまでの監査の甲斐あって、診療内容がいくつか変更された。[p]
的確な監査による成果だ。[p]
感謝する。[p]
[_tb_end_text]

[chara_mod  name="謎の人物"  time="600"  cross="true"  storage="chara/1/02_tsujo2.PNG"  ]
[tb_start_text mode=1 ]
#謎の人物
もうすぐ夜が明ける。[p]
夜が明けてしまえば、月の力も弱まる。[p]
ここから出られなくなる前に、君の住む世界に戻りたまえ。[p]
#
え？　何ですって？？？[p]
#謎の人物
この診療所への道は、満月の夜に開ける。[p]
[_tb_end_text]

[chara_mod  name="謎の人物"  time="600"  cross="true"  storage="chara/1/18_hohoemu.PNG"  ]
[tb_start_text mode=1 ]
#謎の人物
またいずれ、会うことになるかもしれないな。[p]
#
・・・。[p]
[_tb_end_text]

[chara_mod  name="謎の人物"  time="600"  cross="true"  storage="chara/1/04_tsujo4.PNG"  ]
[tb_start_text mode=1 ]
#謎の人物
さらばだ。[p]
#
[_tb_end_text]

[chara_hide_all  time="1000"  wait="true"  ]
[tb_start_text mode=1 ]
#
えっ、ちょっと・・・。[p]
#
[_tb_end_text]

[quake  time="1000"  count="10"  hmax="10"  wait="false"  ]
[stopbgm  time="1000"  fadeout="true"  ]
[tb_start_text mode=1 ]
#
うわぁっっっっっ。[p]
#
[_tb_end_text]

[bg  time="1000"  method="crossfade"  storage="背景黒.png"  ]
[tb_hide_message_window  ]
[mask  time="1000"  effect="fadeIn"  color="0x000000"  ]
[playbgm  volume="60"  time="1000"  loop="true"  storage="horror_chime_ambience.mp3"  fadein="true"  ]
[mask_off  time="1000"  effect="fadeOut"  ]
[bg  time="1000"  method="fadeIn"  storage="図1.jpg"  ]
[wait  time="1000"  ]
[tb_show_message_window  ]
[tb_start_text mode=1 ]
#
目覚めると、夜が明けていた。[p]
どうやって帰ったか、記憶がほとんどない。[p]
ただ、明けの空にぼんやりと光る満月だけが、妙に印象に残っていた。[p]
#
あの診療所はいったい何だったのか。[p]
あそこで見た動画は？[p]
そして・・・あの人は？[p]
#
私は、いつかまた、「イケナイ診療所」を訪れるときがあるのだろうか・・・。[p]
[_tb_end_text]

[bg  time="1000"  method="crossfade"  storage="背景黒.png"  ]
[tb_hide_message_window  ]
[movie  volume="100"  storage="砂嵐画像-2.mp4"  ]
[movie  volume="100"  storage="ending.mp4"  ]
[stopbgm  time="2000"  fadeout="true"  ]
[jump  storage="scene1.ks"  target="*スタート画面"  ]
[s  ]
