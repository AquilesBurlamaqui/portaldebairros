                var geocoder;
                var map;
                var lat;
                var long;
                var add;
                var lastMarker;
                
                geocoder = new google.maps.Geocoder();

                function getCoordinates(address, callback){
                var coordinates;
                geocoder.geocode({address : address}, function (results, status){
                coord_obj = results[0].geometry.location;
                coordinates = [coord_obj.B, coord_obj.k];
                callback(coordinates);
                 });
                }

                
                function initialize() {
                  getCoordinates('Natal', function(coords){
                  var mapOptions = {
                    zoom: 17,
                    center: new google.maps.LatLng(coords[1], coords[0])
                  };
                  map = new google.maps.Map(document.getElementById('map-canvas'), mapOptions);
                  
                  });
          
                }
               
                function save(){
                   var address = document.getElementById("address").value;
                   
                   getCoordinates(address, function(coords){
                   console.log(address);
                   lat = coords[0];
                   long = coords[1];
                   add = address;
                   console.log(lat);
                   console.log(long);
                   document.getElementById("lat").value=lat;
                   document.getElementById("long").value=long;
                   document.getElementById("add").value=add;
                   });
                   
                   
                }
             

                function codeAddress() {
                  var address = document.getElementById('address').value;
                  geocoder.geocode( { 'address': address}, function(results, status) {
                    if (status === google.maps.GeocoderStatus.OK) {
                      map.setCenter(results[0].geometry.location);
                      var marker = new google.maps.Marker({
                          map: map,
                          position: results[0].geometry.location
                      });
                    } else {
                      alert('Geocode was not successful for the following reason: ' + status);
                    }
                  });
                }
                

                google.maps.event.addDomListener(window, 'load', initialize);
                google.maps.event.addListener(map, 'click', function(event) {
                    placeMarker(event.latLng);
                });
                    
                 
               
