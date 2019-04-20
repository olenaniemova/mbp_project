# frozen_string_literal: true

FactoryBot.define do
  factory :article do
    title { 'Test Title' }
    text { 'test text test text test text test text' }
    source { 'http://source' }
    published { true }
  end
end
