# Swiftライブラリのサンプル

## 開発環境
- Xcode version 12.4
- Swift version 5.0
- pod version 1.9.3

## 概要
- Swift/Xcodeを使ったライブラリの作り方とそのサンプル
- ディレクトリ構成
  - Main：FrameworkとAppプロジェクトが一体となったもの
  - OriginalFramework：Frameworkプロジェクト

## 手順
- /Main
  1. Xcodeより新しく `Framwork` のテンプレートを選んでプロジェクトを作る
  2. ビルドして.framwork作成したらこのライブラリを使うアプリにembedするだけ
- /OriginalFramework
  1. Any iOS Deviceでビルドする
  2. Productディレクトリに出来た.frameworkを/Main/SampleSwiftLibrary/Orignlibにコピー
  3. 対象targetのBuildPaseにあるEmbeded Framework、Link Binaly With Libraliesに登録  

#### 注意
/OriginalFramework  
Framework単体プロジェクトは実機用・シミュレータ用でビルドをしないと、importして使うアプリをそれぞれの環境で実行出来ないので注意！
  
  

#### 補足  
/Main  
ライブラリにサンプルソースを置きたい場合は 
1. File > New > Target > App　で Exampleプロジェクトファイル を作成
2. ExampleのBuild Phasesにある`Link Binary With Libraries`に作ったライブラリを追加
3. ExampleのGeneralにある`Frameworks, Libraries, and Embedded Content`に追加したライブラリがあることを確認し、Embed欄を`Embed & Sign`に変更する
4. 各ファイルで`impor 自作ライブラリ名`とすることでライブラリを使用できるようになる

## 参考
- [【iOS】オープンソースSwiftライブラリのつくり方](https://qiita.com/shtnkgm/items/0f62398c66af159401a6)
- [【Swift5】自作画面を Framework で再利用する](https://exgyaruo.com/programming/swift/swift5-original-framework)
- [[Xcode6] iOSアプリプロジェクト内にframeworkプロジェクト](https://mushikago.com/i/?p=5671)