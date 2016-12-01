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
        let defaults = UserDefaults.standard
        if let almacenado = defaults.object(forKey: "enamoramiento") as? Date {
            datePicker.setDate(almacenado, animated: true)
        }


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


    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        let defaults = UserDefaults.standard
        defaults.set(datePicker.date, forKey: "enamoramiento")
        defaults.synchronize()
        
    }

}
