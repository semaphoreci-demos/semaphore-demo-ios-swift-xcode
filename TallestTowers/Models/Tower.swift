import UIKit
import CoreLocation

struct Tower: Identifiable {
  let id = UUID()
  var name: String
  var city: String
  var country: String
  var height: Int
  var yearBuilt: Int
  var latitude: Double
  var longitude: Double

  var location: CLLocationCoordinate2D {
    CLLocationCoordinate2D(latitude: latitude, longitude: longitude)
  }

  var cityAndCountry: String {
    "\(city), \(country)"
  }
  
  var formattedHeight: String {
    "\(height)m"
  }
  
  static var tallestTowers: [ Tower ] {
    [ Tower(name: "Burj Khalifa", city: "Dubai", country: "United Arab Emirates", height: 828, yearBuilt: 2010, latitude: 25.186016587, longitude: 55.275198221),
      Tower(name: "Shanghai Tower", city: "Shanghai", country: "China", height: 632, yearBuilt: 2015, latitude: 31.226676271, longitude: 121.501873778),
      Tower(name: "Abraj Al-Bait Clock Tower", city: "Mecca", country: "Saudi Arabia", height: 601, yearBuilt: 2012, latitude: 21.413935301, longitude: 39.826183555),
      Tower(name: "Ping An Finance Center", city: "Shenzhen", country: "China", height: 599, yearBuilt: 2017, latitude: 22.532267288, longitude: 114.054613333),
      Tower(name: "Goldin Finance 117", city: "Tianjin", country: "China", height: 596, yearBuilt: 2019, latitude: 39.081763739, longitude: 117.088042333),
      Tower(name: "Lotte World Tower", city: "Seoul", country: "South Korea", height: 554, yearBuilt: 2016, latitude: 37.503934185, longitude: 127.103008333),
      Tower(name: "One World Trade Center", city: "New York City", country: "USA", height: 541, yearBuilt: 2014, latitude: 40.701346341, longitude: -74.012335000),
      Tower(name: "Guangzhou CTF Finance Center", city: "Guangzhou", country: "China", height: 530, yearBuilt: 2016,latitude: 23.110777163, longitude: 113.325901443),
      Tower(name: "Tianjin CTF Finance Center", city: "Tianjin", country: "China", height: 530, yearBuilt: 2018, latitude: 39.012823491, longitude: 117.698257222),
      Tower(name: "China Zun", city: "Beijing", country: "China", height: 528, yearBuilt: 2018, latitude: 39.907692870, longitude: 116.465015111) ]
  }
}
