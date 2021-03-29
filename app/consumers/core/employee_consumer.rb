module Core
  class EmployeeConsumer < Racecar::Consumer
    subscribes_to "core.onboarding.employees"

    def process(message)
      msg = ::Workstream::Protocol::Onboarding::EmployeeEvent.decode(message.value)
      employee = Core::Employee.find_by(uuid: msg.uuid)

      if employee.present?

        employee.update!(
          core_company_uuid: msg.company_uuid,
          core_created_at: msg.created_at&.to_datetime,
          core_updated_at: msg.updated_at&.to_datetime,
          core_deleted_at: msg.deleted_at&.to_datetime
        )
      else
        employee = Core::Employee.create(
          uuid: msg.uuid,
          core_company_uuid: msg.company_uuid,
          core_created_at: msg.created_at&.to_datetime,
          core_updated_at: msg.updated_at&.to_datetime,
          core_deleted_at: msg.deleted_at&.to_datetime
        )
      end

      puts "Employee #{employee.uuid} has been updated."
    end
  end
end
