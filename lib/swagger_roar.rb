require "swagger_roar/version"

module SwaggerRoar
  def documentation
    attrs = representable_attrs.to_h.map { |k, v|
      [k.to_sym, v[:documentation]]
    }
    Hash[attrs]
  end
end
