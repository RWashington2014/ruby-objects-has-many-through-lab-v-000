class Patient
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
      ap_obj.patient = self
    end

    def doctors
      self.appointments.collect do |app|
        app.doctors
    end

    end
end
