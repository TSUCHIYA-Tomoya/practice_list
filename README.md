# practice_list
一時的にポートフォリオの代わりとして作成、公開。

<details><summary>目次</summary><div>
	
- [01_fizz_buzz](#01_fizz_buzzrb)
- [02_color_converter](#02_color_converterrb)
- [03_docker_deploy_kaldy](#03_docker_deploy_kaldy)
- [99_その他](#99_その他)
</div></details>

## 01_fizz_buzz.rb
かの有名なfizz_buzz
### demo
```
$ ruby 01_fizz_buzz.rb
4 			# <= input
4 			# <= output

$ ruby 01_fizz_buzz.rb
3
Fizz

$ ruby 01_fizz_buzz.rb
5
Buzz

$ ruby 01_fizz_buzz.rb
15
Fizz Buzz
```

## 02_color_converter.rb
RGB値とhtmlカラーコードとで色の値を変換するプログラム。
『プロを目指す人のためのRuby入門』を読む課程で作成したもの。
### 機能
- あるRGB値を入力するとhtmlカラーコードを返す。例：255,255,255=>#ffffff
- あるhtmlカラーコードを入力するとRGB値を返す。例：#ffffff=>255,255,255
- ついでに入力した色を表す[原色大辞典](https://www.colordic.org/)のWebページを開く(但し、Linux限定)
### demo
```
$ ruby 02_color_converter.rb 
変換したい色のRGB値(例：255,255,255)もしくはカラーコード(例：#FFFFFF, #0c0c0c)を入力し、エンターキーを押してください。
145,136,45
"#91882d"
"色確認用URL：https://www.colordic.org/colorsample/91882d"
"※5秒後にこのページをブラウザで開きます。"

$ ruby 02_color_converter.rb 
変換したい色のRGB値(例：255,255,255)もしくはカラーコード(例：#FFFFFF, #0c0c0c)を入力し、エンターキーを押してください。
#0d0f06
[13, 15, 6]
"色確認用URL：https://www.colordic.org/colorsample/0d0f06"
"※5秒後にこのページをブラウザで開きます。"
```


## 03_docker_deploy_kaldy
dockerの練習がてらカスタムコンテナを作成し、[gatsby-starter-netlify-cms](https://github.com/netlify-templates/gatsby-starter-netlify-cms)をデプロイしてみました。
### 手順
```
git clone https://github.com/netlify-templates/gatsby-starter-netlify-cms.git
cd gatsby-starter-netlify-cms
mv Dockerfile default.conf .dockerignore gatsby-starter-netlify-cms/
# build
docker build -t gatsby-starter-netlify/website .
# コンテナを実行してデプロイする
docker run --rm -p 80:80 gatsby-starter-netlify/website
```
#### demo
こんなページがlocalhost:8000に表示されるはず。
![kaldy-pic](image/0301.png)
#### 上手く行かないときは
starterページの[このissue](https://github.com/netlify-templates/gatsby-starter-netlify-cms/issues/659)を参考にgatsby-config.jsを書き換えることで上手く行くかも知れません。
### これを通して出来るようになったこと
- dockerカスタムコンテナの作成
- 知らぬ間に使われているportの見つけ方とkillのやり方
	- 今回はapache2が80番ポートをLISTEN状態で塞いでいた。

## 99_その他
現状、ポートフォリオと呼べるようなものが無いので、色々羅列しておきます。

- アルバイト先で作成しているWebサイト：[名大の授業](https://ocw.nagoya-u.jp/ja/)
- 最近始めたAtCoder：[sardine_bird](https://atcoder.jp/users/sardine_bird)
