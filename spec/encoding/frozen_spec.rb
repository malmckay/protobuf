require 'spec_helper'
require PROTOS_PATH.join('google_unittest.pb')

RSpec.describe ::Protobuf do
  it "can encode a frozen proto" do
    message = Protobuf_unittest::TestAllTypes.new.freeze
    expect(message.to_s).to be an_instance_of(String)
  end
end
