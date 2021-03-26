module Core
  class HrConsumer < Racecar::Consumer
    subscribes_to "user_banned"

    def process(message)
      # TODO
    end
  end
end
