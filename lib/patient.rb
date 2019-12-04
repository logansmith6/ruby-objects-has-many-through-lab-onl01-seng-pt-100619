require 'pry'

class Patient

  attr_accessor :name, :appointent, :doctor
  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def new_appointment(doctor, date)
    Appointment.new(self, date, doctor)
  end

  def appointments
    return Appointment.all.select {|pat| pat.patient == self}

  end

  def doctors
    appointments.collect {|appointment| appointment.doctor}
  end

end
