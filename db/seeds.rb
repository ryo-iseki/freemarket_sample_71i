# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# レディース
ladies_child_array = ['トップス','ジャケット/アウター','パンツ','スカート','ワンピース','靴','ルームウェア/パジャマ','レッグウェア','帽子','バッグ','アクセサリー','ヘアアクセサリー','小物','時計','ウィッグ/エクステ','浴衣/水着','スーツ/フォーマル/ドレス','マタニティ','その他']
ladies_grandchild_array = [
                            ['Tシャツ/カットソー(半袖/袖なし)','Tシャツ/カットソー(七分/長袖)','シャツ/ブラウス(半袖/袖なし)','シャツ/ブラウス(七分/長袖)','ポロシャツ','キャミソール','タンクトップ','ホルターネック','ニット/セーター','チュニック','カーディガン/ボレロ','アンサンブル','ベスト/ジレ','パーカー','トレーナー/スウェット','ベアトップ/チューブトップ','ジャージ','その他'], 
                            ['テーラードジャケット','ノーカラージャケット','Gジャン/デニムジャケット','レザージャケット','ダウンジャケット','ライダースジャケット','ミリタリージャケット','ダウンベスト','ジャンパー/ブルゾン','ポンチョ','ロングコート','トレンチコート','ダッフルコート','ピーコート','チェスターコート','モッズコート','スタジャン','毛皮/ファーコート','スプリングコート','スカジャン','その他'], 
                            ['デニム/ジーンズ','ショートパンツ','カジュアルパンツ','ハーフパンツ','チノパン','ワークパンツ/カーゴパンツ','クロップドパンツ','サロペット/オーバーオール','オールインワン','サルエルパンツ','ガウチョパンツ','その他'], 
                            ['ミニスカート','ひざ丈スカート','ロングスカート','キュロット','その他'], 
                            ['ミニワンピース','ひざ丈ワンピース','ロングワンピース','その他'], 
                            ['ハイヒール/パンプス','ブーツ','サンダル','スニーカー','ミュール','モカシン','ローファー/革靴','フラットシューズ/バレエシューズ','長靴/レインシューズ','その他'], 
                            ['パジャマ','ルームウェア'], 
                            ['ソックス','スパッツ/レギンス','ストッキング/タイツ','レッグウォーマー','その他'], 
                            ['ニットキャップ/ビーニー','ハット','ハンチング/ベレー帽','キャップ','キャスケット','麦わら帽子','その他'], 
                            ['ハンドバッグ','トートバッグ','エコバッグ','リュック/バックパック','ボストンバッグ','スポーツバッグ','ショルダーバッグ','クラッチバッグ','ポーチ/バニティ','ボディバッグ/ウェストバッグ','マザーズバッグ','メッセンジャーバッグ','ビジネスバッグ','旅行用バッグ/キャリーバッグ','ショップ袋','和装用バッグ','かごバッグ','その他'], 
                            ['ネックレス','ブレスレット','バングル/リストバンド','リング','ピアス(片耳用)','ピアス(両耳用)','イヤリング','アンクレット','ブローチ/コサージュ','チャーム','その他'], 
                            ['ヘアゴム/シュシュ','ヘアバンド/カチューシャ','ヘアピン','その他'], 
                            ['長財布','折り財布','コインケース/小銭入れ','名刺入れ/定期入れ','キーケース','キーホルダー','手袋/アームカバー','ハンカチ','ベルト','マフラー/ショール','ストール/スヌード','バンダナ/スカーフ','ネックウォーマー','サスペンダー','サングラス/メガネ','モバイルケース/カバー','手帳','イヤマフラー','傘','レインコート/ポンチョ','ミラー','タバコグッズ','その他'], 
                            ['腕時計(アナログ)','腕時計(デジタル)','ラバーベルト','レザーベルト','金属ベルト','その他'], 
                            ['前髪ウィッグ','ロングストレート','ロングカール','ショートストレート','ショートカール','その他'], 
                            ['浴衣','着物','振袖','長襦袢/半襦袢','水着セパレート','水着ワンピース','水着スポーツ用','その他'], 
                            ['スカートスーツ上下','パンツスーツ上下','ドレス','パーティーバッグ','シューズ','ウェディング','その他'], 
                            ['トップス','アウター','インナー','ワンピース','パンツ/スパッツ','スカート','パジャマ','授乳服','その他'], 
                            ['コスプレ','下着','その他']
                          ]
parent = Category.create(name: 'レディース')
ladies_child_array.each_with_index do |child, i|
  child = parent.children.create(name: child)
  ladies_grandchild_array[i].each do |grandchild|
    child.children.create(name: grandchild)
  end
end

#メンズ
mens_child_array = ['トップス', 'ジャケット/アウター', 'パンツ', '靴', 'バック', 'スーツ', '帽子', 'アクセサリー', '小物', '時計', '水着', 'レッグウェア', 'アンダーウェア', 'その他']
mens_grandchild_array = [
                          ['Tシャツ/カットソー(半袖/袖なし)','Tシャツ/カットソー(七分/長袖)','シャツ/ブラウス(半袖/袖なし)','シャツ/ブラウス(七分/長袖)','ポロシャツ','タンクトップ', 'ニット/セーター', 'パーカー', 'カーディガン', 'ジャージ', 'ベスト', 'その他'],
                          ['テーラードジャケット', 'ノーカラージャケット', 'Gジャン/デニムジャケット', 'レザージャケット', 'ダウンジャケット', 'ライダースジャケット', 'ミリタリージャケット', 'ダウンベスト', 'ジャンパー/ブルゾン', 'ポンチョ', 'ロングコート', 'トレンチコート', 'ダッフルコート', 'ピーコート', 'チェスターコート', 'モッズコート', 'スタジャン', '毛皮/ファーコート', 'スプリングコート', 'スカジャン', 'その他'],
                          ['デニム/ジーンズ', 'ワークパンツ/カーゴパンツ', 'スラックス', 'チノパン', 'ショートパンツ', 'ペインターパンツ', 'サルエルパンツ', 'オーバーオール', 'その他'],
                          ['スニーカー', 'サンダル', 'ブーツ', 'モカシン', 'ドレス/ビジネス', '長靴/レインシューズ', 'デッキシューズ', 'その他'],
                          ['ショルダーバッグ', 'トートバッグ', 'ボストンバッグ', 'リュック/バックパック', 'ウエストポーチ', 'ボディーバック', 'ドラムバック', 'ビジネスバック', 'トラベルバック', 'メッセンジャーバック', 'エコバック', 'その他'],
                          ['スーツジャケット', 'スーツベスト', 'スラック', 'セットアップ', 'その他'],
                          ['キャンプ', 'ハット', 'ニットキャップ/ビーニー', 'ハンチング/ベレー帽', 'キャスケット', 'サンバイザー', 'その他'],
                          ['ネックレス', 'ブレスレット', 'バングル/リストバンド', 'リング', 'ピアス(片耳用)', 'ピアス(片耳用)', 'ピアス(両耳用)', 'アンクレット', 'その他'],
                          ['長財布', '折り財布', 'マネークリップ', 'コインケース/小銭入れ', '名刺入れ/定期入れ', 'キーケース', 'キーホルダー', 'ネクタイ', '手袋', 'ハンカチ', 'ベルト', 'マフラー', 'ストール', 'バンダナ', 'ネックウォーマー', 'サスペンダー', 'ウォレットチェーン', 'サングラス/メガネ', 'モバイルケース/カバー', '手帳', 'ストラップ', 'ネクタイピン', 'カフリンクス', 'イヤマフラー', '傘', 'レインコート', 'ミラー', 'タバコグッズ', 'その他'],
                          ['腕時計(アナログ)', '腕時計(デジタル)', 'ラバーベルト', 'レザーベルト', '金属ベルト', 'その他'],
                          ['一般水着', 'スポーツ用', 'アクセサリー', 'その他'],
                          ['ソックス', 'レギンス/スパッツ', 'レッグウォーマー', 'その他'],
                          ['トランクス', 'ボクサーパンツ', 'その他'],
                          ['母子手帳用品']
                        ]

parent = Category.create(name:'メンズ')
mens_child_array.each_with_index do |child, i|
  child = parent.children.create(name: child)
  mens_grandchild_array[i].each do |grandchild|
    child.children.create(name: grandchild)
  end
end

#ベビー・キッズ
baby_child_array = ['ベビー服(女の子用) ~95cm', 'ベビー服(男の子用) ~95cm','ベビー服(男女兼用) ~95cm', 'キッズ服(女の子用) 100cm~', 'キッズ服(男の子用)', 'キッズ服(男女兼用) 100cm~', 'キッズ靴', '子供用ファッション小物']
baby_grandchild_array = [
                          ['トップス', 'アウター', 'パンツ', 'スカート', 'ワンピース', 'ベビードレス', 'おくるみ', '下着/肌着',  'パジャマ', 'ロンパース', 'その他'],
                          ['トップス', 'アウター', 'パンツ', 'おくるみ', '下着/肌着',  'パジャマ', 'ロンパース', 'その他'],
                          ['トップス', 'アウター', 'パンツ', 'おくるみ', '下着/肌着',  'パジャマ', 'ロンパース', 'その他'],
                          ['コート', 'ジャケット/上着', 'トップス(Tシャツ/カットソー)', 'トップス(トレーナー)', 'トップス(チュニック)', 'トップス(タンクトップ)', 'トップス(その他)', 'スカート', 'パンツ', 'ワンピース', 'セットアップ', 'パジャマ', 'フォーマル/ドレス', '和服', '浴衣', '甚平', '水着', 'その他'],
                          ['コート', 'ジャケット/上着', 'トップス(Tシャツ/カットソー)', 'トップス(トレーナー)', 'トップス(その他)', 'パンツ', 'セットアップ', 'パジャマ', 'フォーマル/ドレス', '和服', '浴衣', '甚平', '水着', 'その他'],
                          ['コート', 'ジャケット/上着', 'トップス(Tシャツ/カットソー)', 'トップス(トレーナー)', 'トップス(その他)', 'ボトムス', 'パジャマ', 'その他'],
                          ['スニーカー', 'サンダル', 'ブーツ', '長靴', 'その他'],
                          ['靴下/スパッツ', '帽子', 'エプロン', 'サスペンダー', 'タイツ', 'ハンカチ', 'バンダナ', 'ベルト', 'マフラー', '傘', '手袋', 'スタイ', 'バッグ', 'その他'],
                        ]

parent = Category.create(name:'ベビー・キッズ')
baby_child_array.each_with_index do |child, i|
  child = parent.children.create(name: child)
  baby_grandchild_array[i].each do |grandchild|
    child.children.create(name: grandchild)
  end
end

#ゲーム・本・音楽
book_child_array = ['本', '漫画', '雑誌', 'CD', 'DVD/ブルーレイ', 'レコード', 'テレビゲーム']
book_grandchild_array = [
                          ['文学/小説', '人文/社会', 'ノンフィクション/教養', '地図/旅行ガイド', 'ビジネス/経済', '健康/医学', 'コンピュータ/IT', '趣味/スポーツ/実用', '住まい/暮らし/子育て', 'アート/エンタメ', '洋書', '絵本', '参考書', 'その他'],
                          ['少年漫画', '少女漫画', '青年漫画', '女性漫画', '同人誌', 'その他'],
                          ['アート/エンタメ/ホビー', 'ファッション', 'ニュース/総合', '趣味/スポーツ', 'その他'],
                          ['邦楽', '洋楽', 'アニメ', 'クラシック', 'K-POP/アジア', 'キッズ/ファミリー', 'その他'],
                          ['外国映画', '日本映画', 'アニメ', 'TVドラマ', 'ミュージック', 'お笑い/バラエティ', 'スポーツ/フィットネス', 'キッズ/ファミリー', 'その他'],
                          ['邦楽', '洋楽', 'その他'],
                          ['家庭用ゲーム本体', '家庭用ゲームソフト', '携帯用ゲーム本体', '携帯用ゲームソフト', 'PCゲーム', 'その他']
                        ]

parent = Category.create(name:'ゲーム・本・音楽')
book_child_array.each_with_index do |child, i|
  child = parent.children.create(name: child)
  book_grandchild_array[i].each do |grandchild|
    child.children.create(name: grandchild)
  end
end