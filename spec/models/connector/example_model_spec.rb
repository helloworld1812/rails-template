# == Schema Information
#
# Table name: connector_example_models
#
#  uuid       :uuid
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
# Indexes
#
#  index_connector_example_models_on_uuid  (uuid)
#
require 'rails_helper'

RSpec.describe Connector::ExampleModel, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
