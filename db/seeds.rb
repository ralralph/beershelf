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


Record.create!(
  id: '100',
  feeling: 0,
  serving_style: 0,
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