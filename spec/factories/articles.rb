FactoryGirl.define do
  factory :article do
    sequence( :title) { |n| "ArticleTitle#{n}"}
    sequence( :text) { |n| "ArticleText#{n}"}
  end
end