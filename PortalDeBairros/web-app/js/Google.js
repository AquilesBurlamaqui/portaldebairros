      var geocoder;
                var map;
                var lat;
                var long;
                var add;
                function initialize() {
                  getCoordinates('01 Rua São josé Parnamirim Brasil', function(coords){
                  var mapOptions = {
                    zoom: 18,
                    center: new google.maps.LatLng(coords[1], coords[0])
                  };
                  map = new google.maps.Map(document.getElementById('map-canvas'), mapOptions);
                  })
                  geocoder = new google.maps.Geocoder();

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
                    if (status == google.maps.GeocoderStatus.OK) {
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
               
