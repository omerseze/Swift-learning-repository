//
//  ViewController.swift
//  TravelBook
//
//  Created by ömer  faruk sezer on 25.02.2024.
//

import UIKit
import CoreData
import MapKit
import CoreLocation




class ViewController: UIViewController,MKMapViewDelegate,CLLocationManagerDelegate {

    
    @IBOutlet weak var nameTextt: UITextField!
    @IBOutlet weak var commentText: UITextField!
    @IBOutlet weak var mapView: MKMapView!
    
        var locationManager = CLLocationManager()
        var chosenLatitude = Double()
        var chosenLongitude = Double()
        var selectedTitle = ""
        var selectedTitleID : UUID?
        var annotationTitle = ""
        var annotationSubtitle = ""
        var annotationLatitude = Double()
        var annotationLongitude = Double()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        mapView.delegate = self
        locationManager.delegate = self
        locationManager.desiredAccuracy = kCLLocationAccuracyBest
        locationManager.requestWhenInUseAuthorization()
        locationManager.startUpdatingLocation()
        
        
        let gestureRecognizer = UILongPressGestureRecognizer(target: self, action:#selector(chooselocation(gestureRecognizer: )))
        
        gestureRecognizer.minimumPressDuration = 3
        mapView.addGestureRecognizer(gestureRecognizer)
        

    }
    
    @objc func chooselocation(gestureRecognizer:UILongPressGestureRecognizer){
        
        if gestureRecognizer.state == .began {
            let touchedPoint = gestureRecognizer.location(in: self.mapView)
            let toucedCoordinat = self.mapView.convert(touchedPoint, toCoordinateFrom: self.mapView)
            
            let annotation = MKPointAnnotation()
            annotation.coordinate = toucedCoordinat
            annotation.title = nameTextt.text
            annotation.subtitle = commentText.text
            
            self.mapView.addAnnotation(annotation)
            
            
        }
        
    }
    
    func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
        let location = CLLocationCoordinate2D(latitude: locations[0].coordinate.latitude, longitude: locations[0].coordinate.longitude)
        let span = MKCoordinateSpan(latitudeDelta: 0.1, longitudeDelta: 0.1)
        let regigon = MKCoordinateRegion(center: location, span: span)
        mapView.setRegion(regigon, animated: true)
    }
    
    func mapView(_ mapView: MKMapView, viewFor annotation: MKAnnotation) -> MKAnnotationView? {
          
          if annotation is MKUserLocation {
              return nil
          }
          
          let reuseId = "myAnnotation"
          var pinView = mapView.dequeueReusableAnnotationView(withIdentifier: reuseId) as? MKMarkerAnnotationView
          
          if pinView == nil {
              pinView = MKMarkerAnnotationView(annotation: annotation, reuseIdentifier: reuseId)
              pinView?.canShowCallout = true
              pinView?.tintColor = UIColor.black
              
              let button = UIButton(type: UIButton.ButtonType.detailDisclosure)
              pinView?.rightCalloutAccessoryView = button
              
          } else {
              pinView?.annotation = annotation
          }
          
          
          
          return pinView
      }
      
      
      func mapView(_ mapView: MKMapView, annotationView view: MKAnnotationView, calloutAccessoryControlTapped control: UIControl) {
          if selectedTitle != "" {
              
              let requestLocation = CLLocation(latitude: annotationLatitude, longitude: annotationLongitude)
              
              
              CLGeocoder().reverseGeocodeLocation(requestLocation) { (placemarks, error) in
                  //closure
                  
                  if let placemark = placemarks {
                      if placemark.count > 0 {
                                        
                          let newPlacemark = MKPlacemark(placemark: placemark[0])
                          let item = MKMapItem(placemark: newPlacemark)
                          item.name = self.annotationTitle
                          let launchOptions = [MKLaunchOptionsDirectionsModeKey:MKLaunchOptionsDirectionsModeDriving]
                          item.openInMaps(launchOptions: launchOptions)
                                        
                  }
              }
          }
              
              
          }
      
      
      
      
      }
      
      
    
    
    @IBAction func saveButtonClicked(_ sender: Any) {
        
        
        let appDelegate = UIApplication.shared.delegate as! AppDelegate
        let context = appDelegate.persistentContainer.viewContext
        
        let newPlace = NSEntityDescription.insertNewObject(forEntityName: "Places", into: context)
        
        newPlace.setValue(nameTextt.text, forKey: "title")
        newPlace.setValue(commentText.text, forKey: "subtitle")
        newPlace.setValue(chosenLatitude, forKey: "latitude")
        newPlace.setValue(chosenLongitude, forKey: "longitude")
        newPlace.setValue(UUID(), forKey: "id")
        do {
                  try context.save()
                  print("success")
              } catch {
                  print("error")
              }
              
              NotificationCenter.default.post(name: NSNotification.Name("newPlace"), object: nil)
              navigationController?.popViewController(animated: true)
              
        
    }
    

}

