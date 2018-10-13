class Doctor
  attr_accessor :name

  @@doctors = []

  def initialize(name)
    @name = name
    @@doctors << self
  end

  def self.all
    @@doctors
  end

  def new_appointment(patient, date)
    Appointment.new(patient, self, date)
  end

  def appointments
    Appointment.all.select do |appointment|
      appointment.doctor == self
    end
  end

  def patients
    appointments.map do |appointment|
      appointment.patient
    end
  end


end
