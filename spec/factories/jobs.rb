FactoryGirl.define do
  factory :job do

    sequence :title do |i|
      "Developer#{i}"
    end

    sequence :level_of_interest do |i|
      "Level of Interest: #{50 + i}"
    end

    sequence :city do |i|
      "City #{i}"
    end

    company
    category
  end
end
