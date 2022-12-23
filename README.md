# My dotfiles(Mac Setup)

## I use Macbook

- OS:MacOS 12.6.1
- Macbook pro 2019


## Tool

- vim
- alacirtty
- zshrc
- starship

## 初期設定
- 購入したばかりなら画面に従って設定する。
- OSの再インストールなら以下を参考にする。
  - [macOS を再インストールする方法](https://support.apple.com/ja-jp/HT204904)
  - [[完全版]macOS Catalinaをクリーンインストールする方法](https://qiita.com/PaSeRi/items/59e9785580dbd518ac93)

とりあえず最初の言語設定などが終わったものとする。

### Command Line Tools
まずこれがないと初期コマンドしか動かないのでInstall
```
xcode-select --install
```
### Homebrew
これがないと生きていけません。
```
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
```
### あとは自由に好きなソフトウェアをインストール
内容はinstall.sh

### OS周りの設定
これなんの設定かと言うと、電源つけた時音がなるとか、ファイアーウォールをオンにするとか、こう言うのをコマンドで設定したいという話。公式では出てないらしく、有志で作ってくれているのを紹介。

 - [macOS defaults list](https://macos-defaults.com/)
 - [Git Hub](https://github.com/mathiasbynens/dotfiles/blob/master/.macos)

バージョンによって違ったりするので、面倒だけどけどうまくいかないものは手動で。

内容は macos.sh

### シンボリックリンク
あとは適当に設定ファイルのシンボリックシンクを張る。
内容はlinks.sh
 
## 下記の内容をまとめたものを一行で実行。(実行は保証しません)
```
sh ./setup.sh
```
