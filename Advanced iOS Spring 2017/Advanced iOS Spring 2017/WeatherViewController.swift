//
//  WeatherViewController.swift
//  Advanced iOS Spring 2017
//
//  Created by Jorge Centeno on 6/1/17.
//  Copyright © 2017 ___AdvancediOS___. All rights reserved.
//

import UIKit

class WeatherViewController: UIViewController {

  @IBOutlet weak var bkgImage: UIImageView!
  @IBOutlet weak var cityLabel: UILabel!
  @IBOutlet weak var tempLabel: UILabel!
    @IBOutlet weak var cityImage: UIImageView!
    
    var passedValue:Weather?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        cityLabel.text = passedValue?.city
        tempLabel.text = String(describing: passedValue?.temperature)
        cityImage.image = passedValue?.picture
        
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
        /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
