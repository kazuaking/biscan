== README

ビジネスモデルキャンパスの登録更新を行うアプリです


### 環境

* ruby  2.1
* bundler
* development = mysql(posgressqlを入れるのがめんどくさいから)
* production = posgressql(mysqlはheroku上プラグインだから)

* rails 4.04


for develop

```shell
 $ git clone biscan git@github.com:kazuaking/biscan.git
 $ bundle exec rake db:create
 $ bundle exec rails s
   or
 $ bundle exec foreman start
```

### 設計

| モデル名 | テーブル名 |  概要 |
| --- | --- | --- |
| BusinessModelCanvase | business_model_canvases | ビジネスモデルキャンバスの以下の要素をもつ |
| CustomerSegment | customer_segments | ①顧客セグメント（CS：Customer Segments)：ターゲットとする特定の顧客グループ |
| ValueProposition | value_propositions | ②価値提案(VP:Value Propositions)：提供する製品やサービス、顧客価値 |
| Channel | channels | ③チャネル(CH:Channels)：どのように顧客に価値を届けるか、販売経路 |
| CustomerRelationship | customer_relationships | ④顧客との関係(CR:Customer Relationships)：顧客に対してどのような関係を結ぶか |
| RevenueStream | revenue_streams | ⑤収益の流れ(R$：Revenue Streams)：生み出す売上の流れ |
| KeyResource | key_resources | ⑥経営資源(KR:Key Resources)：事業に必要な資産 |
| Keyactivity | key_activities | ⑦主要活動(KA:Key Activities)：企業がメインで行う活動 |
| KeyPartnership | key_partnerships | ⑧パートナー(KP:Key Partnerships)：サプライヤーと事業パートナー |
| CostStructure | cost_structures | ⑨コスト構造(C$：Cost Structure)：事業を運営するためのコスト構造 |


#### 基本構造

| カラム | colmun      | type      |
| ---    | ---         | ---       |
| 名前   | name        |  string   |
| 詳細   | description | text      |
| 更新者  | updated_by | accocetion |


### つくりかた

```
b rails g scaffold business_model_canvases name:string description:text

b rails g migration CreateCustomerSegments business_model_canvases:references name:string description:text updated_by:integer


```

### TODO

* 日本語化
* プロジェクト名の変更 (biscan->bizcan)
* 履歴機能
* 更新時のメール送信
* angularJS化 or TruboLink化
 * view上のみで、各モデルの登録/変更を可能にする
 * view上のみで、ビジネスモデルキャンバスの登録/変更を可能にする
 * http://tech.gmo-media.jp/post/70940891525/angularjs-on-rails
* 各モデルをmasterの扱いにして、同じnameのものは使い回せるようにする
* Rails4.1対応

* マージ機能を考える









