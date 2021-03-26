module Core
  class EmployeeOnboardingProcessConsumer < Racecar::Consumer
    subscribes_to "todo"

    def process(message)
      # TODO
    end
  end
end
