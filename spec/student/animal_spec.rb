# frozen_string_literal: true

describe Animal do

  context 'when animal is a dog' do
    let(:animal) { Animal.new("Dog", 3, "Dog") }
    it "returns the correct name multiple times" do
      expect(animal.name).to eq("Dog")
      
    end

    it "returns the correct age" do
      expect(animal.age).to eq(3)
    end

    it "speaks correctly for a dog" do
      expect(animal.speak).to eq("Woof!")
    end

    it "returns the correct name for a dog again" do
      expect(animal.name).to eq("Dog")
    end

    it "returns the correct age for a dog again" do
      expect(animal.age).to eq(3)
    end

    it "speaks correctly for a dog again" do
      expect(animal.speak).to eq("Woof!")
    end
  end

  context 'when animal is a cat' do  
    let(:animal) { Animal.new("Cat", 2, "Cat") }
    it "returns the correct name for a cat" do
      expect(animal.name).to eq("Cat")
    end

    it "returns the correct age for a cat" do
      expect(animal.age).to eq(2)
    end

    it "speaks correctly for a cat" do
      expect(animal.speak).to eq("Meow!")
    end

    it "returns the correct name for a cat again" do
      expect(animal.name).to eq("Cat")
    end

    it "returns the correct age for a cat again" do
      expect(animal.age).to eq(2)
    end

    it "speaks correctly for a cat again" do
      expect(animal.speak).to eq("Meow!")
    end
  end

  it "speaks correctly for a cow" do
    animal = Animal.new("Bessie", 5, "Cow")
    expect(animal.speak).to eq("Moo!")
  end

  it "speaks correctly for an unknown species" do
    animal = Animal.new("Mystery", 1)
    expect(animal.speak).to eq("...")
  end

end
