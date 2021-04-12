require 'rails_helper'

RSpec.describe "Translations", type: :request do
  describe "GET /show" do
    context 'en' do
      it 'should succeed' do
        get '/translations/en'
        expect(response.code).to eq('200')

        result = JSON.parse(response.body).with_indifferent_access
        result[:tasks].each do |k, v|
          expect(v[:title].split.size < 7).to be true
        end
      end
    end

    context 'zh-CN' do
      it 'should succeed' do
        get '/translations/zh-CN'

        expect(response.code).to eq('200')
        result = JSON.parse(response.body).with_indifferent_access
        result[:tasks].each do |k, v|
          expect(v[:title].size < 15).to be true
        end
      end
    end
  end
end
