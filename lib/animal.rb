# frozen_string_literal: true

require 'pry'

class Animal
  attr_reader :name, :age, :species, :mood

  def initialize(name, age, species = 'Unknown')
    @name = name
    @age = age
    @species = species
    @mood = 'neutral'
  end

  def speak
    case @species.downcase
    when 'dog' then 'Woof!'
    when 'cat' then 'Meow!'
    when 'cow' then 'Moo!'
    else '...'
    end
  end

  def birthday!
    @age += 1
  end

  def play!
    @mood = 'happy'
  end

  def sleep!
    @mood = 'sleepy'
  end

  def hungry?
    @mood == 'hungry'
  end

  def feed!
    @mood = 'full'
  end
end
