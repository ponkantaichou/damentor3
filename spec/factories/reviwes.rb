FactoryBot.define do
  factory :review do
    content              { '良い' }
    score                { '4' }
    association :user
    association :mentor
  end
end
