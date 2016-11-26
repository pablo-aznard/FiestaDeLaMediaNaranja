//
//  AmorVC.swift
//  Fiesta de la Media Naranja
//
//  Created by Pablo on 26/11/16.
//  Copyright © 2016 Pablo. All rights reserved.
//

import UIKit

class AmorVC: UIViewController {

    var nacimiento: Date?
    
    @IBOutlet weak var datePicker: UIDatePicker!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if segue.identifier == "AmorCheck" {
            
            if datePicker.date.timeIntervalSince(nacimiento!)<0{
                
                let alert = UIAlertController(
                    title: "Fecha incorrecta",
                    message: "No puedes enamorarte antes de nacer",
                    preferredStyle: .alert)
                
                present(alert, animated: true)
                alert.addAction(UIAlertAction(title: "OK", style: .default))
            }
            else if let rvc = segue.destination as? ResultadoVC {
                
                rvc.nacimiento = nacimiento
                rvc.enamoramiento = datePicker.date
                
            }
        }
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
