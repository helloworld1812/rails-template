require 'rails_helper'

RSpec.describe "Metadata", type: :request do
  describe "GET /metadata" do
    it 'should succeed' do
      get '/metadata'
      expect(response.code).to eq('200')

      result = JSON.parse(response.body).with_indifferent_access

      expect(result[:app_name].present?).to be true
      expect(result[:version].present?).to be true
      expect(result[:author][:name].present?).to be true
      expect(result[:author][:email].present?).to be true
      expect(result[:tasks].present?).to be true

      result[:tasks].each do |task_name, task_schema|
        expect(%w[hr employee].include? task_schema['assignee_type']).to be true
        expect(task_schema[:sequence].present?).to be true
        expect(task_schema[:sequence].is_a?(Integer)).to be true
      end
    end
  end
end
