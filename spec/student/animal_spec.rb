# frozen_string_literal: true

describe Animal do

  def expect_name_and_age(animal, name, age)
    expect(animal.name).to eq(name)
    expect(animal.age).to eq(age)
  end

  def expect_speak(animal, sound)
    expect(animal.speak).to eq(sound)
  end

  describe "dogs" do
    let(:dog) { Animal.new("Dog", 3, "Dog") }

    it "returns the correct name and age" do
      expect_name_and_age(dog, "Dog", 3)
    end

    it "speaks" do
      expect_speak(dog, "Woof!")
    end

  end

  describe "cats" do
    let(:cat) { Animal.new("Cat", 2, "Cat") }

    it "returns the correct name and age" do
      expect_name_and_age(cat, "Cat", 2)
    end

    it "speaks" do
      expect_speak(cat, "Meow!")
    end

  end

  describe "cows" do
    let(:cow) { Animal.new("Bessie", 5, "Cow") }

    it "speaks" do
      expect_speak(cow, "Moo!")
    end

  end

  describe "unknown species" do
    let(:nihar) { Animal.new("Mystery", 1) }

    it "speaks correctly for an unknown species" do
      expect_speak(nihar, "...")
    end
  end

end
