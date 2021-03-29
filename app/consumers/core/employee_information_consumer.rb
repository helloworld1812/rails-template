module Core
  class EmployeeInformationConsumer < Racecar::Consumer
    subscribes_to "core.onboarding.employee_informations"

    def process(message)
      msg = ::Workstream::Protocol::Onboarding::EmployeeInformationEvent.decode(message.value)
      ei = Core::EmployeeInformation.find_by(uuid: msg.uuid)

      if ei.present?
        ei.update!(
          core_company_uuid: msg.company_uuid,
          core_created_at: msg.created_at&.to_datetime,
          core_updated_at: msg.updated_at&.to_datetime,
          core_deleted_at: msg.deleted_at&.to_datetime,
          first_name: msg.first_name,
          middle_name: msg.middle_name,
          last_name: msg.last_name,
          prior_last_name: msg.prior_last_name,
          preferred_name: msg.preferred_name,
          salutation: msg.salutation,
          ethnicity: msg.ethnicity,
        gender: msg.gender,
          marital_status: msg.marital_status,
          ssn: msg.marital_status,
          smoker: msg.smoker,
          nationality: msg.nationality,
        # todo some fields are missing
        )
      else
        ei = Core::Employee.create!(
          uuid: msg.uuid,
          core_company_uuid: msg.company_uuid,
          core_created_at: msg.created_at&.to_datetime,
          core_updated_at: msg.updated_at&.to_datetime,
          core_deleted_at: msg.deleted_at&.to_datetime,
          first_name: msg.first_name,
          middle_name: msg.middle_name,
          last_name: msg.last_name,
          prior_last_name: msg.prior_last_name,
          preferred_name: msg.preferred_name,
          salutation: msg.salutation,
          ethnicity: msg.ethnicity,
          gender: msg.gender,
          marital_status: msg.marital_status,
          ssn: msg.marital_status,
          smoker: msg.smoker,
          nationality: msg.nationality,
        # todo some fields are missing
        )
      end

      puts "Employee #{ei.uuid} has been updated."
    end
  end
end
