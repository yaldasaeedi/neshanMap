//
//  ViewController.swift
//  neshanMap
//
//  Created by Helen Besharatian on 6/14/1402 AP.
//

import UIKit

class ViewController: UIViewController {
    var mapview:NTMapView?

    @IBOutlet weak var mapViewUIV: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        mapview = NTMapView();
        let neshan = NTNeshanServices.createBaseMap(NTNeshanMapStyle.NESHAN)
        mapview?.getLayers().add(neshan)
        
        let neshan2 = NTNeshanServices.createTrafficLayer()
        mapview?.getLayers().add(neshan2)
        
        let neshan3 = NTNeshanServices.createPOILayer(false)
        mapview?.getLayers().add(neshan3)
        
        mapview?.setFocalPointPosition(NTLngLat(x:59.2,y:36.5), durationSeconds: 0.4)
        mapview?.setZoom(13, durationSeconds: 0.4)
        mapViewUIV = mapview
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}
