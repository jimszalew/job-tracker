FactoryGirl.define do
  factory :company do
    sequence :name do |i|
      "ESPN#{i}"
    end
  end
end
