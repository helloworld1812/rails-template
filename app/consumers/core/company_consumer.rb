module Core
  class CompanyConsumer < Racecar::Consumer
    subscribes_to "core.onboarding.companies"

    def process(message)
      msg = ::Workstream::Protocol::Onboarding::CompanyEvent.decode(message.value)
      company = Core::Company.find_or_create_by!(uuid: msg.uuid)

      company.update!(
        name: msg.name,
        status: msg.status,
        core_created_at: msg.created_at&.to_datetime,
        core_updated_at: msg.updated_at&.to_datetime,
        core_deleted_at: msg.deleted_at&.to_datetime
        )

      puts "Company #{company.uuid} has been updated."
      company
    end
  end
end
