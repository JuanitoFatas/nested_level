require "nested_level/version"

module NestedLevel
  def self.call(obj)
    if obj.is_a?(Array)
      obj.map { |element| call(element).to_i }.max.to_i + 1
    elsif obj.is_a?(Hash)
      obj.values.map { |value| call(value).to_i }.max.to_i + 1
    else
      0
    end
  end
end
