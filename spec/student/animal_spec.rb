# frozen_string_literal: true

describe Animal do
  let(:dog) { Animal.new("Dog", 3, "Dog") }
  let(:cat) { Animal.new("Cat", 2, "Cat") }
  
  it "returns the correct name" do
    expect(dog.name).to eq("Dog")
  end

  it "returns the correct age" do
    expect(dog.age).to eq(3)
  end

  it "speaks correctly for a dog" do
    expect(dog.speak).to eq("Woof!")
  end

  it "returns the correct name for a cat" do
    expect(cat.name).to eq("Cat")
  end

  it "returns the correct age for a cat" do
    expect(cat.age).to eq(2)
  end

  it "speaks correctly for a cat" do
    expect(cat.speak).to eq("Meow!")
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
