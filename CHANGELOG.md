# 移行後の CHANGELOG

## [v0.5.4](https://github.com/japanese-dtv-tools/px4_drv/compare/v0.5.3...v0.5.4) - 2025-01-15
- リリース時にapt repositoryを作成する by @kounoike in https://github.com/japanese-dtv-tools/px4_drv/pull/23

## [v0.5.3](https://github.com/japanese-dtv-tools/px4_drv/compare/v0.5.2...v0.5.3) - 2025-01-15
- tagpr 導入 by @kounoike in https://github.com/japanese-dtv-tools/px4_drv/pull/1
- tagprのバージョンを環境変数から取得する by @kounoike in https://github.com/japanese-dtv-tools/px4_drv/pull/3
- Remove v-prefix by @kounoike in https://github.com/japanese-dtv-tools/px4_drv/pull/4
- READMEでこのフォークについての説明を更新 by @kounoike in https://github.com/japanese-dtv-tools/px4_drv/pull/5
- Add-labeler by @kounoike in https://github.com/japanese-dtv-tools/px4_drv/pull/6
- Add-CHANGELOG by @kounoike in https://github.com/japanese-dtv-tools/px4_drv/pull/7

## [v0.5.3](https://github.com/japanese-dtv-tools/px4_drv/compare/v0.5.2...v0.5.3) - 2025-01-15
- tagpr 導入 by @kounoike in https://github.com/japanese-dtv-tools/px4_drv/pull/1
- tagprのバージョンを環境変数から取得する by @kounoike in https://github.com/japanese-dtv-tools/px4_drv/pull/3
- Remove v-prefix by @kounoike in https://github.com/japanese-dtv-tools/px4_drv/pull/4
- READMEでこのフォークについての説明を更新 by @kounoike in https://github.com/japanese-dtv-tools/px4_drv/pull/5
- Add-labeler by @kounoike in https://github.com/japanese-dtv-tools/px4_drv/pull/6
- Add-CHANGELOG by @kounoike in https://github.com/japanese-dtv-tools/px4_drv/pull/7

## [v0.5.3](https://github.com/japanese-dtv-tools/px4_drv/compare/v0.5.2...v0.5.3) - 2025-01-15
- tagpr 導入 by @kounoike in https://github.com/japanese-dtv-tools/px4_drv/pull/1
- tagprのバージョンを環境変数から取得する by @kounoike in https://github.com/japanese-dtv-tools/px4_drv/pull/3
- Remove v-prefix by @kounoike in https://github.com/japanese-dtv-tools/px4_drv/pull/4
- READMEでこのフォークについての説明を更新 by @kounoike in https://github.com/japanese-dtv-tools/px4_drv/pull/5
- Add-labeler by @kounoike in https://github.com/japanese-dtv-tools/px4_drv/pull/6
- Add-CHANGELOG by @kounoike in https://github.com/japanese-dtv-tools/px4_drv/pull/7
- Release for v0.5.3 by @github-actions in https://github.com/japanese-dtv-tools/px4_drv/pull/2
- Release for v0.5.3 by @github-actions in https://github.com/japanese-dtv-tools/px4_drv/pull/8

## 移行以前の 変更点

### 変更点 (WinUSB 版)

- エラー発生時の MessageBox を表示しない設定を追加 
  - BonDriver の ini 内の `DisplayErrorMessage` を 1 に設定すると今まで通り MessageBox が表示される
- BS/CS の ChSet に2024年10月～2025年1月に行われた BS トランスポンダ再編後の物理チャンネル情報を反映
- [hendecarows 氏のフォーク](https://github.com/hendecarows/px4_drv) での更新を取り込み、DTV02A-1T1S-U / DTV03A-1TU / PX-M1UR / PX-S1UR に対応
- PX-Q3PE5 の inf ファイルを追加
- inf ファイルをより分かりやすい名前に変更
- inf ファイルを ARM 版 Windows でもインストールできるようにする
  - 実機がないので試せていないけど、おそらくインストールできるはず
  - ref: https://mevius.5ch.net/test/read.cgi/avi/1625673548/762
- inf ファイルを改善し、チューナーをタスクトレイの「ハードウェアの安全な取り外し」に表示しないようにする
  - ref: https://mevius.5ch.net/test/read.cgi/avi/1666581918/207
- inf ファイルに自己署名を行い、自己署名証明書のインストールだけで正式なドライバーと認識されるように
  - 以前は署名がないためインストール時にドライバー署名の強制の無効化が必要だったが、事前に自己署名証明書を適切な証明書ストアにインストールしておけばこの作業が不要になる
  - ref: https://mevius.5ch.net/test/read.cgi/avi/1577466040/104-108
- 自己署名証明書のインストール・アンインストールスクリプトを追加
  - 拡張子が .jse となっているが、これは PowerShell スクリプトにダブルクリックで実行させるための JScript コードを先頭の行に加えたもの
  - 実際に表示されないかは今のところ未確認
- 地上波の ChSet に物理 53ch ～ 62ch の定義を追加
  - 物理 53ch ～ 62ch は地上波の割り当て周波数から削除されているが、現在も ”イッツコムch10” など、一部ケーブルテレビの自主放送の割り当て周波数として使われている
- BS/CS の ChSet に2022年3月開局の BS 新チャンネル（BS松竹東急・BSJapanext・BSよしもと）の定義を追加
- バージョン情報が DLL のプロパティに表示されないのを修正
- ビルドとパッケージングを全自動で行うスクリプトを追加
  - Visual Studio 2019 が入っていれば、build.ps1 を実行するだけで全自動でビルドからパッケージングまで行える
- README（このページ）に WinUSB 版のインストール方法などを追記

### 変更点 (Linux 版)

動作確認は Ubuntu 20.04 LTS (x64) で行っています。

- チップ構成が一部変更された、ロット番号 2309 (2023年9月) 以降の DTV02A-1T1S-U に対応
- [otya 氏のフォーク](https://github.com/otya128/px4_drv) での更新を取り込み、安定性と互換性を改善
- [techmadot 氏のフォーク](https://github.com/techmadot/px4_drv) の内容を取り込み、PX-M1UR / PX-S1UR に対応
- [kznrluk 氏のフォーク](https://github.com/kznrluk/px4_drv) の内容を取り込み、Linux カーネル 6.4 系以降の API 変更に対応
- https://github.com/tsukumijima/px4_drv/pull/6 をマージし、Linux カーネル 6.8 系以降の API 変更に対応
- https://github.com/tsukumijima/px4_drv/pull/3 をマージし、`ctrl_timeout` をモジュールパラメーターに追加
- Debian パッケージ (.deb) の作成とインストールに対応
- DKMS でのインストール時にファームウェアを自動でインストールするように変更
- README (このページ) に Debian パッケージからのインストール方法などを追記
