//
//  AddCityController.swift
//  Advanced iOS Spring 2017
//
//  Created by Jorge Centeno on 6/1/17.
//  Copyright © 2017 ___AdvancediOS___. All rights reserved.
//

import UIKit
import os.log

class AddCityController: UIViewController {

  @IBOutlet weak var inputCity: UITextField!
  @IBOutlet weak var inputTemp: UIPickerView!
  @IBOutlet weak var inputImage: UIImageView!
  @IBOutlet weak var inputTextTemp: UITextField!
  @IBOutlet weak var saveButton: UIBarButtonItem!
 
  var weather: Weather?
  
  let array = ["hn","paris","prague","berlin","sun","helsinki","cloudy","rain"]
  var randomIndex = 0
    
  @IBAction func cancelButton(_ sender: Any) {
    //completition is what happens when the action completes.
    dismiss(animated:true, completion:nil)
  }
  
  @IBAction func save(_ sender: Any) {
    
  }
    override func viewDidLoad() {
        super.viewDidLoad()

        randomIndex = Int(arc4random_uniform(UInt32(array.count)))
        inputImage.image = UIImage(named:array[randomIndex])
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
  

  
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
      super.prepare(for: segue, sender: sender)
      guard let button = sender as? UIBarButtonItem, button == saveButton else{
        os_log("Save button not pressed", log: OSLog.default, type: .debug )
        return
      }
        
      //let array = ["hn","Paris","sun"]
      //let randomIndex = Int(arc4random_uniform(UInt32(array.count)))
      
        
      let city = inputCity.text
      let temp = inputTextTemp.text
      weather = Weather(city: city!, temperature: Int(temp!)!, picture: inputImage.image)
        
    }
}
  


