# == Schema Information
#
# Table name: core_hrs
#
#  core_company_uuid :uuid             not null
#  deleted_at        :datetime
#  email             :string
#  name              :string
#  phone             :string
#  status            :string
#  uuid              :uuid
#  created_at        :datetime         not null
#  updated_at        :datetime         not null
#
# Indexes
#
#  index_core_hrs_on_core_company_uuid  (core_company_uuid)
#  index_core_hrs_on_uuid               (uuid)
#
class Core::Hr < ApplicationRecord
end
