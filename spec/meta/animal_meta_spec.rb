# frozen_string_literal: true

describe '[LAB CHECKER] Animal Refactoring Spec Requirements' do
  files = Dir[File.expand_path('../../student/*_spec.rb', __FILE__)]

  it 'has at least one animal-related spec file in spec/student/' do
    expect(files.any? { |f| f =~ /animal.*_spec/ }).to be true
  end

  files.each do |file|
    content = File.read(file)

    it "has at least 3 'it' blocks in #{File.basename(file)}" do
      expect(content.scan(/it\s+['"]/).size).to be >= 3
    end

    it "uses let or before hooks to DRY up repeated setup in #{File.basename(file)}" do
      expect(content.scan(/let\s*\(|before\s*\(/).size).to be >= 1
      expect(content).to match(/let\s*\(|before\s*\(/), "Expected your specs to use let or before hooks to DRY up repeated setup."
    end
  end
end
