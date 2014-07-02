require "swagger_roar/version"

module SwaggerRoar
  def documentation
    Hash[
      attrs_hash.map { |k, v|
        [key_to_doc_key(k), v[:documentation]]
      }
    ]
  end

  private

  def key_to_doc_key(k)
    return unless representable_attrs.has_key? k
    definition = representable_attrs[k]
    return definition[:as].evaluate({}).to_sym if definition[:as].present?
    k.to_sym
  end

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
