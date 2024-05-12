//
//  enFromPhase.swift
//  Chemistry
//
//  Created by Harries Lloyd on 5/11/24.
//

import UIKit

class enFromPhase: UIViewController {

    @IBOutlet weak var FinalTempI: UITextField!

    @IBOutlet weak var InitialTempI: UITextField!
    
    @IBOutlet weak var MassI: UITextField!
    
    @IBOutlet weak var Energy: UILabel!
    
    
    @IBAction func Go(_ sender: Any) {
        let FinalTemp = Float(FinalTempI.text!) ?? 00
        let InitTemp = Float(InitialTempI.text!) ?? 00
        let Mass = Float(MassI.text!) ?? 00
        let EnergyT = Mass * (FinalTemp - InitTemp) * 4184
        let numberFormatter = NumberFormatter()
        numberFormatter.numberStyle = .decimal
        let formattedNumber = String(numberFormatter.string(from: NSNumber(value:EnergyT))!)
        Energy.text = formattedNumber + " J"
    }
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
