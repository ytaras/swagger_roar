require "swagger_roar/version"

module SwaggerRoar
  def documentation
    Hash[
      attrs_hash.map { |k, v|
        [k.to_sym, v[:documentation]]
      }
    ]
  end

  private

  def attrs_hash
    a = representable_attrs
    return a.to_h if a.respond_to? :to_h
    Hash[
      a.keys.map { |k|
        [k.to_sym, a[k]]
      }
    ]
  end
end
