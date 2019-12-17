import SwiftUI
import MapKit

struct MapView: UIViewRepresentable {
  var coordinate: CLLocationCoordinate2D
  var latLonDelta: CLLocationDegrees

  func makeUIView(context: Context) -> MKMapView {
    let mapView = MKMapView(frame: .zero)
    mapView.mapType = .satellite
    return mapView
  }
  
  func updateUIView(_ mapView: MKMapView, context: Context) {
    let span = MKCoordinateSpan(latitudeDelta: latLonDelta, longitudeDelta: latLonDelta)
    let region = MKCoordinateRegion(center: coordinate, span: span)
    mapView.setRegion(region, animated: false)
  }
}

struct MapViewPreview: PreviewProvider {
  static var previews: some View {
    MapView(coordinate: Tower.tallestTowers[0].location, latLonDelta: 0.025)
  }
}
