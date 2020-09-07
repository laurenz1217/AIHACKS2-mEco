
import UIKit
import MapKit

struct Stadium {
  var name: String
  var lattitude: CLLocationDegrees
  var longtitude: CLLocationDegrees
}

class MapViewController: UIViewController {

  let locationManager = CLLocationManager()
  @IBOutlet weak var mapView: MKMapView!
  
    let stadiums = [Stadium(name: "Union Apparel", lattitude: 34.073158, longtitude: -118.343750),
                    Stadium(name: "A&D Wholesale Vintage Clothing", lattitude: 34.016730, longtitude: -118.202480),
                    Stadium(name: "Angela Dean Womenswear", lattitude: 34.039930, longtitude: -118.342390),
                    Stadium(name: "CharLi Beauty Bar", lattitude: 34.047731, longtitude: -118.348729),
                    Stadium(name: "CJ's Elegance", lattitude: 33.988623, longtitude: -118.353417),
                    Stadium(name: "post & beam", lattitude: 34.009704, longtitude: -118.339085),
                    Stadium(name: "MCO Construction and Services", lattitude: 25.834420, longtitude: -80.241370),
                    Stadium(name: "Phanord & Associates", lattitude: 25.883464, longtitude: -80.219553),
                    Stadium(name: "Glam Hair 305", lattitude: 25.939869, longtitude: -80.245339),
                    Stadium(name: "Showcase BBQ", lattitude: 40.458122, longtitude: -79.905985),
                    Stadium(name: "Simon & Co Jewelers", lattitude: 41.261481, longtitude: -75.896980),
                    Stadium(name: "Dreamshot Images", lattitude: 44.872754, longtitude: -91.455618),
                    Stadium(name: "DRE Media Group", lattitude: 43.098999, longtitude: -87.998997),
                    Stadium(name: "Orchid Blue Salon", lattitude: 39.956570, longtitude: -75.209805),
                    Stadium(name: "The Purse Lady LLC", lattitude: 25.648874, longtitude: -80.350956),
                    Stadium(name: "Mahogany Natural Hair Salon, Spa and Wellness Center", lattitude: 26.617962, longtitude: -80.149872),
                    Stadium(name: "Lemuel Forte", lattitude: 39.824074, longtitude: -75.784785),
                    Stadium(name: "Emery's Cafe", lattitude: 41.278970, longtitude: -95.947370),
                    Stadium(name: "Donkey Mo's Korean Fried Chicken", lattitude: 30.482900, longtitude: -97.786190),
                    Stadium(name: "Evergreen Market", lattitude: 47.927160, longtitude: -122.222090),
                    Stadium(name: "Merry Pets", lattitude: 40.723760, longtitude: -111.854590),
                    Stadium(name: "Anima Cocina", lattitude: 46.805557, longtitude: -100.784427),]

  
  override func viewDidLoad() {
    super.viewDidLoad()
    checkLocationServices()
    fetchStadiumsOnMap(stadiums)
    self.view.gradientLayer(with: .mainBackground)
  }
  
  
  func checkLocationServices() {
    if CLLocationManager.locationServicesEnabled() {
      checkLocationAuthorization()
    } else {
      // Show alert letting the user know they have to turn this on.
    }
  }
  
  
  func checkLocationAuthorization() {
    switch CLLocationManager.authorizationStatus() {
    case .authorizedWhenInUse:
      mapView.showsUserLocation = true
  
    // For these case, you need to show a pop-up telling users what's up and how to turn on permisneeded if needed
    case .denied:
      break
    case .notDetermined:
      locationManager.requestWhenInUseAuthorization()
      mapView.showsUserLocation = true
    case .restricted:
      break
    case .authorizedAlways:
      break
    }
  }
  
  func fetchStadiumsOnMap(_ stadiums: [Stadium]) {
    for stadium in stadiums {
      let annotations = MKPointAnnotation()
      annotations.title = stadium.name
      annotations.coordinate = CLLocationCoordinate2D(latitude: stadium.lattitude, longitude: stadium.longtitude)
      mapView.addAnnotation(annotations)
    }
  }
    
    @IBAction func actionBack(_ sender: UIButton) {
          self.navigationController?.popViewController(animated: true)
      }
      
    @IBAction func actionHome(_ sender: UIButton) {
          self.navigationController?.popToRootViewController(animated: true)
      }

    
    
}
