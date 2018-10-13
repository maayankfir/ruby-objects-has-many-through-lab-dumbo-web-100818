class Appointment
  attr_accessor :patient, :doctor, :date

  @@appointments = []

  def initialize (patient, doctor, date)
    @patient = patient
    @doctor = doctor
    @date = date
    @@appointments << self
  end

  def self.all
    @@appointments
  end

end
