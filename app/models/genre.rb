class Genre < ActiveHash::Base
  self.data = [
    { id: 1, name: '---' },
    { id: 2, name: 'フロント' },
    { id: 3, name: 'クロージング' },
    { id: 4, name: 'その他' },
  ]
  include ActiveHash::Associations
  has_many :posts
  end