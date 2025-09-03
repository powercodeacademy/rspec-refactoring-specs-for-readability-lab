# frozen_string_literal: true

describe Animal do

  describe "dogs" do
    let(:dog) { Animal.new("Dog", 3, "Dog") }

    it "returns the correct name and age" do
      expect(dog.name).to eq("Dog")
      expect(dog.age).to eq(3)
    end

    it "speaks correctly for a dog" do
      expect(dog.speak).to eq("Woof!")
    end

  end

  describe "cats" do
    let(:cat) { Animal.new("Cat", 2, "Cat") }

    it "returns the correct name and age" do
      expect(cat.name).to eq("Cat")
      expect(cat.age).to eq(2)

    end

    it "speaks correctly for a cat" do
      expect(cat.speak).to eq("Meow!")
    end

  end

  describe "cows" do
    let(:cow) { Animal.new("Bessie", 5, "Cow") }

    it "speaks correctly for a cow" do
      expect(cow.speak).to eq("Moo!")
    end

  end

  describe "unknown species" do
    let(:nihar) { Animal.new("Mystery", 1) }

    it "speaks correctly for an unknown species" do
      expect(nihar.speak).to eq("...")
    end
  end


end
