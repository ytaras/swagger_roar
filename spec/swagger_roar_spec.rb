require "spec_helper"
require "grape-entity"
require "roar/representer/json"
require "sample_mappings"

describe SwaggerRoar do
  describe 'should generate documentation' do
    it 'for single property mapping' do
      expect(SinglePropertyMapping).to generate_swagger_documentation
    end
    it 'for renamed property mapping' do
      expect(RenamedPropertyMapping).to generate_swagger_documentation
    end
  end
end
