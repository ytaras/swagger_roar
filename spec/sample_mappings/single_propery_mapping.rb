module SinglePropertyMapping
  class GrapeEntity < Grape::Entity
    expose :title, documentation: {type: "String", desc: "Status update text"}
  end

  class RoarRepresenter
    include Roar::Representer::JSON
    extend SwaggerRoar

    property :title, documentation: {type: "String", desc: "Status update text"}
  end
end
