require "pry"
require "swagger_roar"

RSpec::Matchers.define :generate_swagger_documentation do
  match do |m|

    grape_doc(m) == roar_doc(m)
  end

  def grape_doc(m)
    "#{m}::GrapeEntity".constantize.documentation
  end

  def roar_doc(m)
    "#{m}::RoarRepresenter".constantize.documentation
  end

  failure_message do |m|
    "expected that Roar doc would be #{grape_doc(m)}, but was #{roar_doc(m)}"
  end
end
