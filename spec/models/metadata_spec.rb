require 'rails_helper'

RSpec.describe Task, type: :model do
  let(:meta) { YAML.load_file(Rails.root.join('config/metadatas/v1.yml')).with_indifferent_access}

  describe 'keys' do
    it 'should contains essential keys' do
      [:app_name, :version, :authors, :tasks, :options].each do |key|
        expect(meta[key].present?).to be true
      end
    end
  end

  describe '#app_name' do
    it 'should be a snake' do
      expect(/^[a-z\_]+$/ === meta[:app_name]).to be true
    end

    it 'you should replace the placeholder with your app name' do
      if !RSpec.configuration.is_example?
        expect(meta[:app_name] != 'your_app_name').to be true
      end
    end
  end

  describe '#authors' do
    it 'should be an array' do
      expect(meta[:authors].is_a?(Array)).to be true
    end

    it 'you should replace the todo with contacts of developer/QA/PM' do
      if !RSpec.configuration.is_example?
        meta[:authors].each do |author|
          expect(author[:name] != 'todo').to be true
          expect(author[:email] != 'todo@example.com').to be true
        end
      end
    end
  end

  describe '#tasks' do
    it 'task name should be a snake' do
      meta[:tasks].keys.each do |key|
        expect(/^[a-z\_]+$/ === key).to be true
      end
    end

    it 'task props should contains assignment category' do
      meta[:tasks].with_indifferent_access.each do |task_name, props|
        expect(props[:assignment_category].present?).to be true
      end
    end

    it 'assignment_category should be assigned allowed values, hr or employee' do
      meta[:tasks].with_indifferent_access.each do |task_name, props|
        expect(%w[hr employee].include?(props[:assignment_category])).to be true
      end
    end

    it 'the sequence of each task should be uniq' do
      sequences = meta[:tasks].with_indifferent_access.map { |_, v| v[:sequence] }
      expect(sequences.count == sequences.uniq.count).to be true
    end

    it 'the sequence of each task should be present' do
      meta[:tasks].with_indifferent_access.each do |task_name, props|
        expect(props[:sequence].present?).to be true
      end
    end

    it 'the sequence of each task should be an integer' do
      meta[:tasks].with_indifferent_access.each do |task_name, props|
        expect(props[:sequence].is_a?(Integer)).to be true
      end
    end
  end
end
