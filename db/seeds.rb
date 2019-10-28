User.create!(
  [
    {
      id: '100',
      name: 'A太郎',
      email: 'test1@test.com',
      password: 'password',
    },
    {
      id: '101',
      name: 'B太郎',
      email: 'test2@test.com',
      password: 'password',
    }
  ]
)

Category.create!(
  [
    {
      id: '1',
      name: 'pilsner',
    },
    {
      id: '2',
      name: 'paleale',
    },
    {
      id: '3',
      name: 'ipa',
    },
    {
      id: '4',
      name: 'weizen',
    },
    {
      id: '5',
      name: 'fruit_beer',
    },
    {
      id: '6',
      name: 'stout',
    },
    {
      id: '7',
      name: 'barler_whine',
    }
  ]
)

Record.create!(
  id: '100',
  feeling: 1,
  serving_style: 1,
  location: nil,
)

Tast.create!(
  id: '100',
  record_id: '100',
  bitterness: 3,
  sweetness: 3,
  sourness: 3,
  flavor: 3,
)

Brewery.create!(
  id: '1',
  name: 'ヤッホーブルーイング',
  country: 'JP',
  detail: '1996年5月に設立、1997年に創業された、エールビール専門のクラフトビール製造メーカー（ブルワリー）。創業者は星野リゾート代表の星野佳路。主要なブランドは「よなよなエール」「インドの青鬼」「水曜日のネコ」「東京ブラック」など。リアルエールとバーレーワイン（長期熟成エールビール）といったバラエティ豊かなクラフトビールを製造・販売',
)

Beer.create!(
  id: '100',
  name: 'よなよなエール',
  volume: 5,
  detail: '長野県軽井沢町のヤッホーブルーイングさんの定番アイテムがこのよなよなエールです。上面発酵（エール）によってつくられたフルーティーで複雑な味わいをもつビールで、飲みなれた大手ビールメーカーのものと比べると、味わいの深さは格別です。ドイツやベルギー・イギリスなど世界のビールは、約80種類のビアスタイルがありますが、この、よなよなエールは「アメリカンペールエール」というスタイル。アメリカン産のホップをきかせて苦味や香りを際立たせているのが特徴で、色合いはやや濃いめの銅色に仕上げられています。',
  category_id: '2',
  brewery_id: '1',
)

Post.create!(
  id: 100,
  content: '表参道の専門店で飲んでます。',
  photo: 'noimage',
  user_id: 100,
  beer_id: 100,
  record_id: 100,
)
