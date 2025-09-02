# frozen_string_literal: true

describe Animal do
  it "returns the correct name" do
    animal = Animal.new("Dog", 3, "Dog")
    expect(animal.name).to eq("Dog")
  end

  it "returns the correct age" do
    animal = Animal.new("Dog", 3, "Dog")
    expect(animal.age).to eq(3)
  end

  it "speaks correctly for a dog" do
    animal = Animal.new("Dog", 3, "Dog")
    expect(animal.speak).to eq("Woof!")
  end

  it "returns the correct name for a cat" do
    animal = Animal.new("Cat", 2, "Cat")
    expect(animal.name).to eq("Cat")
  end

  it "returns the correct age for a cat" do
    animal = Animal.new("Cat", 2, "Cat")
    expect(animal.age).to eq(2)
  end

  it "speaks correctly for a cat" do
    animal = Animal.new("Cat", 2, "Cat")
    expect(animal.speak).to eq("Meow!")
  end

  it "speaks correctly for a cow" do
    animal = Animal.new("Bessie", 5, "Cow")
    expect(animal.speak).to eq("Moo!")
  end

  it "speaks correctly for an unknown species" do
    animal = Animal.new("Mystery", 1)
    expect(animal.speak).to eq("...")
  end

  it "returns the correct name for a dog again" do
    animal = Animal.new("Dog", 3, "Dog")
    expect(animal.name).to eq("Dog")
  end

  it "returns the correct age for a dog again" do
    animal = Animal.new("Dog", 3, "Dog")
    expect(animal.age).to eq(3)
  end

  it "speaks correctly for a dog again" do
    animal = Animal.new("Dog", 3, "Dog")
    expect(animal.speak).to eq("Woof!")
  end

  it "returns the correct name for a cat again" do
    animal = Animal.new("Cat", 2, "Cat")
    expect(animal.name).to eq("Cat")
  end

  it "returns the correct age for a cat again" do
    animal = Animal.new("Cat", 2, "Cat")
    expect(animal.age).to eq(2)
  end

  it "speaks correctly for a cat again" do
    animal = Animal.new("Cat", 2, "Cat")
    expect(animal.speak).to eq("Meow!")
  end

  it "speaks correctly for a cow again" do
    animal = Animal.new("Bessie", 5, "Cow")
    expect(animal.speak).to eq("Moo!")
  end

  it "speaks correctly for an unknown species again" do
    animal = Animal.new("Mystery", 1)
    expect(animal.speak).to eq("...")
  end
end
