class Department < ActiveHash::Base
  self.data = [
    { id: 1, name: '---' },
    { id: 2, name: '本社1課' },
    { id: 3, name: '本社2課' },
    { id: 4, name: '西東京支店' },
    { id: 5, name: '千葉支店' },
    { id: 6, name: '埼玉支店' },
  ]
  include ActiveHash::Associations
  has_many :users
  end