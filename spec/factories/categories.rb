FactoryGirl.define do
  factory :category do

    sequence :title do |i|
      "Web Development #{i}"
    end
  end
end
