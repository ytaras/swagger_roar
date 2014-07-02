require "swagger_roar/version"

module SwaggerRoar
  def documentation
    Hash[
      representable_attrs.keys.map { |k|
        key_to_doc_entry(k)
      }
    ]
  end

  private

  def key_to_doc_entry(k)
    [key_to_doc_key(k), key_to_doc(k)]
  end

  def key_to_doc_key(k)
    return unless representable_attrs.has_key? k
    definition = representable_attrs[k]
    return definition[:as].evaluate({}).to_sym if definition[:as].present?
    k.to_sym
  end

  def key_to_doc(k)
    representable_attrs[k][:documentation]
  end
end
