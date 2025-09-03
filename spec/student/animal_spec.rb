# frozen_string_literal: true

describe Animal do

  context 'when animal is a dog' do
    let(:animal) { Animal.new("Dog", 3, "Dog") }
      
    2.times do   
      it "returns the correct name for a dog both times" do
        expect(animal.name).to eq("Dog")
      end

      it "returns the correct age for a dog both times" do
          expect(animal.age).to eq(3)
      end

      it "speaks correctly for a dog both times" do
          expect(animal.speak).to eq("Woof!")
      end
    end
  end
  

  context 'when animal is a cat' do  
    let(:animal) { Animal.new("Cat", 2, "Cat") }
    2.times do
      it "returns the correct name for a cat both times" do
        expect(animal.name).to eq("Cat")
      end

      it "returns the correct age for a cat both times" do
          expect(animal.age).to eq(2)
      end

      it "speaks correctly for a cat both times" do
          expect(animal.speak).to eq("Meow!")
      end
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
