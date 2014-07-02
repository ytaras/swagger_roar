module RenamedPropertyMapping
  class GrapeEntity < Grape::Entity
    expose :body, as: :post_body, documentation: {type: "String"}
  end
  module RoarRepresenter
    include Roar::Representer::JSON
    extend SwaggerRoar

    property :body, as: :post_body, documentation: {type: "String"}
  end
end
