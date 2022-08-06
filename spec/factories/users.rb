FactoryBot.define do
  factory :user do
    email { Faker::Internet.free_email }
    password { Faker::Internet.password(min_length: 6) }
    password_confirmation { password }
    first_name          { '大内おおうちオオウチ' }
    last_name           { '学まなぶマナブ' }
    department_id { '2' }
    profile  { 'あいうえお' }    
  end
end
