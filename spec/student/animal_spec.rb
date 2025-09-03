# frozen_string_literal: true

describe Animal do

  def expect_speak(animal, sound)
    expect(animal.speak).to eq(sound)
  end
  describe "dogs" do
    let(:dog) { Animal.new("Dog", 3, "Dog") }

    it "returns the correct name and age" do
      expect(dog.name).to eq("Dog")
      expect(dog.age).to eq(3)
    end

    it "speaks" do
      expect_speak(dog, "Woof!")
    end

  end

  describe "cats" do
    let(:cat) { Animal.new("Cat", 2, "Cat") }

    it "returns the correct name and age" do
      expect(cat.name).to eq("Cat")
      expect(cat.age).to eq(2)

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
