# TAKE OUT FOOD　投稿アプリ

飲食などのテイクアウトにフォーカスした、食べ物を投稿するSNSアプリを作成しました。
コロナの環境下で生活スタイルが変わってきている中で活用できるアプリケーション、かつ身近に使えるものがいいと思い食べ物に関わるサービスを考えました。
テイクアウトしてきた食べ物の写真とタイトル、説明と一緒に住所も入力してもらう事でgooglemapで表示できるようになっています。
投稿一覧の中から新たな発見でユーザー自身の楽しみが増えたり、投稿してもらったお店側は宣伝にもなりこの状況下で少しは世の中に貢献できるのではないかと思い作成に至りました。
  
使用技術としてはスクールでは使用しなかったものを取り入れたいと思い、google,facebookでのSNS認証や投稿時や投稿詳細ページでgooglemapを表示させるための
Maps JavaScript API,Geocoding APIを使用してみました。


## 🌐 App URL

### **http://18.181.143.79**

user: admin <br>
pass: asd17f

## 🌐 開発環境
  
・Ruby/Ruby on Rails <br>
・MySQL <br>
・Github <br>
・AWS <br>
・Visual Studio Code
  
## 🌐 アプリの機能
  
### 1. ユーザー新規登録/ログイン（SNS認証）
  
各情報を入力することで新規登録、ログインができます。
  
Test Account  
  
  Email: test@gmail.com <br>
  password: test123<br>
    
新規登録ページ<br>
<img src="https://github.com/ginobili17/mysns7/blob/master/signup.png" width="600" height="450">


ログインページ<br>
<img src="https://github.com/ginobili17/mysns7/blob/master/login.png" width="600" height="450">

googleで登録する場合<br>
※ローカルのみで確認<br>
<img src="https://github.com/ginobili17/mysns7/blob/master/googlesignup.png" width="600" height="450">

facebookで登録、ログインする場合、まだgoogleで登録してない時のgoogleでログインをした場合<br>
ニックネーム、emailが自動で入力されます。<br>
次回から何も入力せずにログインできるようになります。<br>
※ローカルのみで確認<br>
<img src="https://github.com/ginobili17/mysns7/blob/master/facebooksignup.png" width="600" height="500">
  
  
  
### 2. 投稿
  
ヘッダーのADD NEWより内容を入力して新規投稿をする事ができます。 <br>
  
<img src="https://github.com/ginobili17/mysns7/blob/master/%E6%8A%95%E7%A8%BF%E3%83%98%E3%82%9A%E3%83%BC%E3%82%B7%E3%82%99%EF%BC%91.png" width="900" height="500">
 　
<img src="https://github.com/ginobili17/mysns7/blob/master/%E6%8A%95%E7%A8%BF%E3%83%98%E3%82%9A%E3%83%BC%E3%82%B7%E3%82%99%EF%BC%92.png" width="900" height="500">
  

### 3. 投稿内容の確認
  
写真をクリックすると投稿詳細ページに遷移する事ができます。 <br>
ヘッダーの「カテゴリから探す」からカテゴリを選択する事でカテゴリー別の投稿を表示する事ができます。  

一覧ページ<br>

<img src="https://github.com/ginobili17/mysns7/blob/master/%E6%8A%95%E7%A8%BF%E4%B8%80%E8%A6%A7%E3%83%98%E3%82%9A%E3%83%BC%E3%82%B7%E3%82%99%EF%BC%91.jpg" width="９00" height="500"><br>

カテゴリー別一覧ページ<br>

<img src="https://github.com/ginobili17/mysns7/blob/master/%E3%82%AB%E3%83%86%E3%82%B3%E3%82%99%E3%83%AA%E4%B8%80%E8%A6%A7%E3%83%98%E3%82%9A%E3%83%BC%E3%82%B7%E3%82%99%EF%BC%91.png" width="900" height="500"><br>

投稿詳細ページ<br>

<img src="https://github.com/ginobili17/mysns7/blob/master/%E6%8A%95%E7%A8%BF%E8%A9%B3%E7%B4%B0%E3%83%98%E3%82%9A%E3%83%BC%E3%82%B7%E3%82%99%EF%BC%91.png" width="900" height="500">
  
  
<img src="https://github.com/ginobili17/mysns7/blob/master/%E6%8A%95%E7%A8%BF%E8%A9%B3%E7%B4%B0%E3%83%98%E3%82%9A%E3%83%BC%E3%82%B7%E3%82%99%EF%BC%92.png" width="900" height="500">   
   
<img src="https://github.com/ginobili17/mysns7/blob/master/%E6%8A%95%E7%A8%BF%E8%A9%B3%E7%B4%B0%E3%83%98%E3%82%9A%E3%83%BC%E3%82%B7%E3%82%99%EF%BC%93.png" width="900" height="500">
   
### 4. コメント機能
  
投稿詳細ページより投稿に対してのコメントをする事ができます。
  
### 5. 投稿内容の編集・削除
  
投稿詳細ページにて投稿主のみが投稿した内容を編集・削除する事ができます。
  
## 🌐 今後実装予定の機能
  
・いいね機能 <br>
・投稿検索機能
  
## 🌐 DB設計
  
### categoriesテーブル

|Column|Type|Options|
|------|----|-------|
|name|string|null: false|

### Association

- has_many :post_categories
- has_many :posts, through: :post_categories

## post_categoriesテーブル

|Column|Type|Options|
|------|----|-------|
|post_id|integer|null: false|
|post_id|integer|null: false|


### Association

- belongs_to :post
- belongs_to :category


## postsテーブル

|Column|Type|Options|
|------|----|-------|
|title|string|null: false|
|body|text|null: false|
|image|string|null: false|
|user_id|integer|null: false|
|category_id|integer|null: false|

### Association

- belongs_to :user
- has_one :spot, dependent: :destroy
- accepts_nested_attributes_for :spot
- has_many :post_categories
- has_many :categories, through: :post_categories
- has_many :comments, dependent: :destroy

## sns_credentialsテーブル

|Column|Type|Options|
|------|----|-------|
|provider|string|null: false|
|uid|string|null: false|
|user|references|foreign_key: true|

### Association

- belongs_to :user, optional: true

## spotsテーブル

|Column|Type|Options|
|------|----|-------|
|address|string|null: false|
|latitude|float|null: false|
|longitude|float|null: false|
|post|reference|foreign_key: true|


### Association

- belongs_to :post 
- geocoded_by :address
- after_validation :geocode

## usersテーブル

|Column|Type|Options|
|------|----|-------|
|nickname|string|null: false|
|firstname|string|null: false|
|lastname|string|null: false|
|birthday|date|null: false|
|email|string|null: false|


### Association

- has_many :posts
- has_many :comments
- has_many :sns_credentials

## commentsテーブル

|Column|Type|Options|
|------|----|-------|
|user_id|integer|null: false|
|post_id|integer|null: false|
|body|string|null: false|
|post|reference|foreign_key: true|


### Association

- belongs_to :post
- belongs_to :user
