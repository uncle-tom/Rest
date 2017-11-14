module PlacesHelper
	def google_map
		@key = Rails.application.secrets.google_places_key
	  "https://maps.googleapis.com/maps/api/js?key=#{@key}&callback=initMap"
	end

	def google_map_address(id)
		@place = Place.find(params[:id])
		latitude = @place.latitude
		longitude = @place.longitude
	  'function initMap() {
      var myLatLng = {lat: latitude, lng: longitude};

      var map = new google.maps.Map(document.getElementById("map"), {
        center: myLatLng,
        zoom: 4
      });

      var marker = new google.maps.Marker({
        map: map,
        position: myLatLng
      });
    }'
	end
end
