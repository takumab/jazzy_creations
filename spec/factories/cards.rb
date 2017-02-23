FactoryGirl.define do
  factory :card do
    title { Faker::Commerce.product_name }
    image_url { Faker::File.file_name('path/to')}
    description { Faker::Lorem.sentence }
    price { Faker::Commerce.price }
  end
end
