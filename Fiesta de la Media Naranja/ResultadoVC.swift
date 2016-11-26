//
//  ResultadoVC.swift
//  Fiesta de la Media Naranja
//
//  Created by Pablo on 26/11/16.
//  Copyright © 2016 Pablo. All rights reserved.
//

import UIKit

class ResultadoVC: UIViewController {

    var nacimiento: Date?
    var enamoramiento: Date?
    
    @IBOutlet weak var nacimientoLabel: UILabel!
    @IBOutlet weak var enamoramientoLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        nacimientoLabel.text = nacimiento?.description
        enamoramientoLabel.text = enamoramiento?.description

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
