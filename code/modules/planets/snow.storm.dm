/datum/weather/snow_storm
	name = "snow storm"
	desc = "������� ������� ���� ������ �� ������� ���� ����������� �������, ������ ����� �������, ���������� ���������, ����� ��������� �� �� ����."
	probability = 90

	telegraph_message = "<span class='warning'>���������� ������� ����� �������� ��������� ���� ������...</span>"
	telegraph_duration = 300
	telegraph_overlay = "light_snow"

	weather_message = "<span class='userdanger'><i>������ ����� �����������, ����� � ���� �������� ������ ������ ����! � �������!</i></span>"
	weather_overlay = "snow_storm"
	weather_duration_lower = 600
	weather_duration_upper = 1500

	end_duration = 100
	end_message = "<span class='boldannounce'>�������� �������, �������� �� ����� ����� ���������.</span>"

	area_type = /area
	protect_indoors = TRUE
	target_trait = ZTRAIT_SNOWSTORM

	immunity_type = WEATHER_SNOW

	barometer_predictable = TRUE



