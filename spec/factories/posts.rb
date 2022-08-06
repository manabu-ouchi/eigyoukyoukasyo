FactoryBot.define do
  factory :post do
    title { 'あいうえお' }
    content { 'あいうえお' }
    genre_id { '2' }
    association :user
    
    
  end
end
