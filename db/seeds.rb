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
    },
    {
      id: '8',
      name: 'porter',
    }
  ]
)

Brewery.create!(
  id: '100',
  name: 'ヤッホーブルーイング',
  country: 'JP',
  detail: '1996年5月に設立、1997年に創業された、エールビール専門のクラフトビール製造メーカー（ブルワリー）。創業者は星野リゾート代表の星野佳路。主要なブランドは「よなよなエール」「インドの青鬼」「水曜日のネコ」「東京ブラック」など。リアルエールとバーレーワイン（長期熟成エールビール）といったバラエティ豊かなクラフトビールを製造・販売',
)

Beer.create!(
  [
    {
      id: '100',
      name: 'よなよなエール',
      volume: 5,
      detail: '長野県軽井沢町のヤッホーブルーイングの定番アイテム。上面発酵（エール）によってつくられたフルーティーで複雑な味わいをもつアメリカンペールエール。アメリカン産のホップをきかせて苦味や香りを際立たせているのが特徴で、色合いはやや濃いめの銅色に仕上げられている。',
      category_id: '2',
      brewery_id: '100',
    },
    {
      id: '101',
      name: 'インドの青鬼',
      volume: 7,
      detail: 'グレープフルーツのような華やかなホップの香りの陰に、ホップの強烈な苦味が隠れています。この苦さと深いコクが飲むものを虜にしてやまない個性派ビール',
      category_id: '3',
      brewery_id: '100',
    },
    {
      id: '102',
      name: '水曜日のネコ',
      volume: 5,
      detail: '青りんごを思わせる香りとオレンジピールの爽やかな香り。ほのかなハーブ感がフルーティさを引き立て、すっきりとした飲み口がやさしホワイトエール。苦みが少ないので普段ビールを飲まない方にもおすすめ',
      category_id: '2',
      brewery_id: '100',
    },
    {
      id: '103',
      name: '東京ブラック',
      volume: 5,
      detail: 'ロースト麦芽によって生まれる黒い色と、コーヒーやココアを思わせる香りが特徴の黒ビール。なめらかな口当たりと、ほのかに感じられる麦芽の甘みのおかげで、飲んだあとの印象がとても穏やかなのが特徴。',
      category_id: '8',
      brewery_id: '100',
    },
  ]
)

Post.create!(
  id: '100',
  content: '表参道の専門店で飲んでます。',
  photo: 'noimage',
  user_id: '100',
  beer_id: '100',
)

Record.create!(
  id: '100',
  feeling: 1,
  serving_style: 1,
  location: nil,
  post_id: '100',
)

Tast.create!(
  id: '100',
  record_id: '100',
  bitterness: 3,
  sweetness: 3,
  sourness: 3,
  flavor: 3,
)

Wishlist.create!(
  [
    {
      id: '100',
      complete: true,
      user_id: '100',
      beer_id: '100',
    },
    {
      id: '101',
      complete: true,
      user_id: '100',
      beer_id: '101',
    },
    {
      id: '102',
      complete: false,
      user_id: '100',
      beer_id: '102',
    }
  ]
)