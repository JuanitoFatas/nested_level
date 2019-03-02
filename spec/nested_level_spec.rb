RSpec.describe NestedLevel do
  it "has a version number" do
    expect(NestedLevel::VERSION).not_to be nil
  end

  it "returns 0 for integer" do
    input = 0

    result = NestedLevel.call(input)

    expect(result).to eq(0)
  end

  it "returns 0 for symbol" do
    input = :a

    result = NestedLevel.call(input)

    expect(result).to eq(0)
  end

  it "returns 0 for string" do
    input = ""

    result = NestedLevel.call(input)

    expect(result).to eq(0)
  end

  it "returns 1 for plain array" do
    input = []

    result = NestedLevel.call(input)

    expect(result).to eq(1)
  end

  it "returns 2 for 2-level deep array" do
    input = [1, [2]]

    result = NestedLevel.call(input)

    expect(result).to eq(2)
  end

  it "returns 42 for 42-level deep array" do
    input = nested_array(42)

    result = NestedLevel.call(input)

    expect(result).to eq(42)
  end

  it "returns 100 for 100-level deep array" do
    input = nested_array(100)

    result = NestedLevel.call(input)

    expect(result).to eq(100)
  end

  it "returns 1 for plain hash" do
    input = { a: 1 }

    result = NestedLevel.call(input)

    expect(result).to eq(1)
  end

  it "returns 2 for 2-level deep hash" do
    input = { a: { b: :c } }

    result = NestedLevel.call(input)

    expect(result).to eq(2)
  end

  it "returns 42 for 42-level deep hash" do
    input = nested_hash(42)


    result = NestedLevel.call(input)

    expect(result).to eq(42)
  end

  it "returns 100 for 100-level deep hash" do
    input = nested_hash(100)

    result = NestedLevel.call(input)

    expect(result).to eq(100)
  end

  def nested_array(level)
    (level-1).times.inject([]) do |accumulator, element|
      [accumulator]
    end
  end

  def nested_hash(level)
    (level-1).times.inject({}) do |accumulator, element|
      { key: accumulator }
    end
  end
end
