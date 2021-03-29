module Core
  class CompanyStaffConsumer < Racecar::Consumer
    subscribes_to "core.onboarding.company_staffs"

    def process(message)
      msg = ::Workstream::Protocol::Onboarding::CompanyStaffEvent.decode(message.value)
      company_staff = Core::CompanyStaff.find_by(uuid: msg.uuid)

      if company_staff.present?
        company_staff.update!(
          core_company_uuid: msg.company_uuid,
          phone_country_code: msg.phone&.country_code,
          phone_number: msg.phone&.number,
          phone_extension: msg.phone&.extension,
          name: msg.name,
          email: msg.email,
          status: msg.status,
          core_created_at: msg.created_at&.to_datetime,
          core_updated_at: msg.updated_at&.to_datetime,
          core_deleted_at: msg.deleted_at&.to_datetime
        )
      else
        company_staff = Core::CompanyStaff.create!(
          uuid: msg.uuid,
          core_company_uuid: msg.company_uuid,
          phone_country_code: msg.phone&.country_code,
          phone_number: msg.phone&.number,
          phone_extension: msg.phone&.extension,
          name: msg.name,
          email: msg.email,
          status: msg.status,
          core_created_at: msg.created_at&.to_datetime,
          core_updated_at: msg.updated_at&.to_datetime,
          core_deleted_at: msg.deleted_at&.to_datetime
        )
      end

      puts "CompanyStaff #{company_staff.uuid} has been updated."
      company_staff
    end
  end
end
