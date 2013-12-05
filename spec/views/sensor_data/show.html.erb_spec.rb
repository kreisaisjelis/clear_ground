require 'spec_helper'

describe "sensor_data/show" do
  before(:each) do
    @sensor_datum = assign(:sensor_datum, stub_model(SensorDatum,
      :sensor => "Sensor",
      :data => "Data"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Sensor/)
    rendered.should match(/Data/)
  end
end
