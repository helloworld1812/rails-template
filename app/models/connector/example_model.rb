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
class Connector::ExampleModel < ApplicationRecord
end
