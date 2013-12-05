require 'spec_helper'

describe "sensor_data/new" do
  before(:each) do
    assign(:sensor_datum, stub_model(SensorDatum,
      :sensor => "MyString",
      :data => "MyString"
    ).as_new_record)
  end

  it "renders new sensor_datum form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", sensor_data_path, "post" do
      assert_select "input#sensor_datum_sensor[name=?]", "sensor_datum[sensor]"
      assert_select "input#sensor_datum_data[name=?]", "sensor_datum[data]"
    end
  end
end
