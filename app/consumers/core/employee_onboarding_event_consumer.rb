module Core
  class EmployeeOnboardingEventConsumer < Racecar::Consumer
    subscribes_to "todo"

    def process(message)
      # TODO
    end
  end
end
