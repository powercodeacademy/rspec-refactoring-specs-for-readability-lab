
# Lab 3: Refactoring Specs for Readability (Animal)

In this lab, you'll refactor messy, repetitive specs for the **Animal** Ruby class to make them more readable and maintainable. You'll focus on using RSpec best practices to test the Animal's attributes and behaviors.

**Make sure you have Ruby installed and run `bundle install` before starting this lab.**

## Instructions

1. **Open the provided specs for the Animal class in `spec/student/` and refactor them for clarity and maintainability.**
   - Examine all `it` blocks for repeated setup or expectations related to Animal.
   - "Refactor the specs" means: remove repetition, use `let` for repeated Animal objects, and use `before` hooks for shared setup.

2. Use RSpec hooks (`before`, `after`), `let`, and helper methods to DRY up your Animal specs.
   - Use `let` to define Animal objects or values that are used in multiple tests.
   - Use `before` to set up any shared Animal state needed for your tests.
   - A "helper method" in a spec is a method you define inside your Animal spec file to keep your tests clean and readable.

3. Do **not** change any Animal implementation code—only refactor the specs.
4. Do **not** change any files in `spec/meta/`—these are lab checker specs that verify your Animal specs. In the test output, any spec labeled with `[LAB CHECKER]` is an official lab checker (not written by you) and is there to help you know if your specs meet the requirements.
5. Run `bin/rspec` frequently to make sure your Animal spec refactoring doesn't break any tests.

## Example: Refactoring Repeated Setup (not a solution)

Suppose you see this repeated in several `it` blocks for Animal:

```ruby
# spec/student/animal_spec.rb
it "speaks" do
   animal = Animal.new("Dog", 3)
   expect(animal.speak).to eq("Woof!")
end

it "moves" do
   animal = Animal.new("Dog", 3)
   expect(animal.move).to eq("runs")
end
```

You could refactor the repeated `animal = Animal.new("Dog", 3)` using a `let` or a `before` block.

## What to focus on

- Remove duplication in your Animal specs using hooks and `let`.
- Make your Animal specs easier to read and maintain.
- Follow best practices from the RSpec lessons.

## Resources

- [RSpec Documentation](https://rspec.info/documentation/)
