FactoryBot.define do
  factory :order_address do
    post_code { '123-4567' }
    ship_from_area_id { 2 }
    city { '横浜市' }
    address { '青山1-1-1' }
    building {'赤ビル111'}
    phone_number { '09012345678' }
    token { 'tok_abcdefghijk00000000000000000' }
  end
end
