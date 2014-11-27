geocoder = new google.maps.Geocoder();

function getCoordinates(address, callback){
var coordinates;
geocoder.geocode({address : address}, function (results, status){
coord_obj = results[0].geometry.location;
coordinates = [coord_obj.B, coord_obj.k]
callback(coordinates);
 })
}



