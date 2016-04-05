FactoryGirl.define do
  factory :log do
    user nil
    date_on "2016-04-04"
    date_off "2016-04-04"
    time_on "2016-04-04 23:06:07"
    time_off "2016-04-04 23:06:07"
    frequency "MyString"
    callsign "MyString"
    operator_name "MyString"
    mode "MyString"
    his_rst 1
    my_rst 1
    power "MyString"
    qth "MyString"
    state "MyString"
    country "MyString"
    notes "MyText"
  end
end
