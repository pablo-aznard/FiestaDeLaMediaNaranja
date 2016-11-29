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
    @IBOutlet weak var resultadoLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        nacimientoLabel.text = nacimiento?.description
        enamoramientoLabel.text = enamoramiento?.description
        
        let fechaResultado = calculoFecha(fecha1: nacimiento!, fecha2: enamoramiento!)
        let fechaResultadoF = formatoFecha(fecha: fechaResultado)
        resultadoLabel.text = fechaResultadoF
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func calculoFecha(fecha1: Date, fecha2: Date) -> Date {
        let tiempo = fecha2.timeIntervalSince(fecha1)
        let fecha = fecha2
        return fecha.addingTimeInterval(tiempo)
    }
    
    func formatoFecha(fecha: Date) -> String {
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "dd-MM-yyyy"
        let fechaFormateada = dateFormatter.string(from: fecha)
        return fechaFormateada
        
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
