require 'spec_helper'

describe "sensor_data/index" do
  before(:each) do
    assign(:sensor_data, [
      stub_model(SensorDatum,
        :sensor => "Sensor",
        :data => "Data"
      ),
      stub_model(SensorDatum,
        :sensor => "Sensor",
        :data => "Data"
      )
    ])
  end

  it "renders a list of sensor_data" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Sensor".to_s, :count => 2
    assert_select "tr>td", :text => "Data".to_s, :count => 2
  end
end
