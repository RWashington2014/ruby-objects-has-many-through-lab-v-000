class Appointment
  attr_accessor :doctors, :patient

    def initialize(date, doctor)
      @date = date
      @doctors = doctor
      doctor.add_appointment(self)
    end
end
