# == Schema Information
#
# Table name: connector_example_models
#
#  deleted_at :datetime
#  uuid       :uuid             not null, primary key
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
require 'rails_helper'

RSpec.describe Connector::ExampleModel, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
