require 'pry'

class Doctor

  attr_accessor :name
  @@all = []
  def initialize(name)
    @name = name
    @@all << self
  end

  def appointments
    Appointment.all.select {|doc| doc.doctor == self}
  end

  def patients
    appointments.map {|appointment| appointment.patients}
  end

  def self.all
    @@all
  end


  def new_appointment(patient, date)
    Appointment.new(patient, date, self)
  end



end
