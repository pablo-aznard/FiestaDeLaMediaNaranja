//
//  NacimientoVC.swift
//  Fiesta de la Media Naranja
//
//  Created by Pablo on 26/11/16.
//  Copyright © 2016 Pablo. All rights reserved.
//

import UIKit

class NacimientoVC: UIViewController {

    @IBOutlet weak var datePicker: UIDatePicker!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func cancel2Selected(_ segue: UIStoryboardSegue) {
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if segue.identifier == "NacimientoCheck" {
            
            if datePicker.date.timeIntervalSinceNow>0 {
                
                let alert = UIAlertController(
                    title: "Fecha incorrecta",
                    message: "¿Vienes del futuro?",
                    preferredStyle: .alert)
                
                present(alert, animated: true)
                alert.addAction(UIAlertAction(title: "OK", style: .default))
            }

            else if let avc = segue.destination as? AmorVC {
                
                avc.nacimiento = datePicker.date
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
