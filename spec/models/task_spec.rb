# == Schema Information
#
# Table name: tasks
#
#  id                                                    :bigint           not null, primary key
#  assignee_type                                         :string           not null
#  assignee_uuids                                        :string           default([]), is an Array
#  company_uuid                                          :uuid             not null
#  configuration_uuid                                    :uuid             not null
#  group_uuid(which employee does this task belongs to.) :uuid             not null
#  role                                                  :string           not null
#  status                                                :string           not null
#  uuid                                                  :uuid             not null
#  created_at                                            :datetime         not null
#  updated_at                                            :datetime         not null
#
# Indexes
#
#  index_tasks_on_company_uuid        (company_uuid)
#  index_tasks_on_configuration_uuid  (configuration_uuid)
#  index_tasks_on_group_uuid          (group_uuid)
#  index_tasks_on_uuid                (uuid)
#
require 'rails_helper'

RSpec.describe Task, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
