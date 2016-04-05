FactoryGirl.define do
  factory :log do
    user
    date_on "2016-04-04"
    date_off "2016-04-04"
    time_on "2016-04-04 23:06:07"
    time_off "2016-04-04 23:06:07"
    frequency "7.130"
    callsign "9M2ROL"
    operator_name "Amirol AHmad"
    mode "CW"
    his_rst "599"
    my_rst "599"
    power "50"
    qth "Mobile"
    state "Puncak Alam"
    country "West Malaysia"
    notes "QSL sent!"
  end
end
