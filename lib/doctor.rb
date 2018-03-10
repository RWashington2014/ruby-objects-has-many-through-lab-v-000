class Doctor
  attr_accessor :name

    def initialize(name)
      @name = name
      @appointments = []
    end

    def appointments
      @appointments
    end

    def add_appointment(ap_obj)
      self.appointments << ap_obj
      ap_obj.doctor = self
    end

    def patients
      self.appointments.collect do |app|
        app.patient
      end
    end

end # => End Doctor class
