class Patient
  attr_accessor :name, :appointments, :doctors

  @@all = []

  def self.all
    @@all
  end

  def initialize(name)
    @name = name
    @@all << self
  end

  def new_appointment(doctor, date)
    Appointment.new(self, doctor, date)
  end

  def appointments
    Appointment.all.select do |appt|
      appt.patient == self
    end
  end

 def doctors
   appointments.map(&:doctor)
 end

end
