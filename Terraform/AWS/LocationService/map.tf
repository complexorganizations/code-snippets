// Create a map using aws location service
resource "aws_location_map" "map" {
  configuration {
    style = "VectorHereBerlin"
  }
  map_name = "map"
}

// Create a place index using aws location service
resource "aws_location_place_index" "place_index" {
  data_source = "Esri"
  description = "place index"
  index_name  = "place_index"
}

// Create a route calculator using aws location service
resource "aws_location_route_calculator" "route_calculator" {
  calculator_name = "route_calculator"
  data_source     = "Esri"
  description     = "route calculator"
}

// Create a tracker resource using aws location service
resource "aws_location_tracker" "tracker" {
  description  = "tracker"
  tracker_name = "tracker"
}

// Create a geofence collection using aws location service
resource "aws_location_geofence_collection" "geofence_collection" {
  collection_name = "geofence_collection"
  description     = "geofence collection"
}

// Create a aws location tracker assocication
resource "aws_location_tracker_association" "tracker_resource_association" {
  depends_on   = [aws_location_tracker.tracker]
  consumer_arn = aws_location_map.map.arn
  tracker_name = aws_location_tracker.tracker.tracker_name
}
