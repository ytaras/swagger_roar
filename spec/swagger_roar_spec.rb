require "spec_helper"
require "grape-entity"
require "roar/representer/json"

describe SwaggerRoar do
  describe 'should generate documentation' do
    it 'for simple entity' do
      class TestEntity < Grape::Entity
        expose :title, documentation: {type: "String", desc: "Status update text"}
      end
      class TestRoarRepresenter
        include Roar::Representer::JSON
        extend SwaggerRoar

        property :title, documentation: {type: "String", desc: "Status update text"}
      end
      expect(TestRoarRepresenter.documentation).to eq(TestEntity.documentation)
    end
  end
end
