FactoryBot.define do
  factory :item do
    name { 'ボール' }
    description { '商品説明' }
    category_id { 2 }
    condition_id { 2 }
    shipping_charge_id { 2 }
    ship_from_area_id { 2 }
    shipping_day_id { 2 }
    price { 300 }

    association :user

    after(:build) do |item|
      item.image.attach(io: File.open('public/images/test_image.png'), filename: 'test_image.png')
    end
  end
end
