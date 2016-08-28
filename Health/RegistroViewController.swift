//
//  RegistroViewController.swift
//  Health
//
//  Created by Lizzy Cruz on 27/08/16.
//  Copyright © 2016 Lizzy Cruz. All rights reserved.
//

import UIKit

class RegistroViewController: UIViewController {

    @IBOutlet weak var txName: UITextField!
    @IBOutlet weak var txEdad: UITextField!
    @IBOutlet weak var txEstatura: UITextField!
    @IBOutlet weak var txPeso: UITextField!
    @IBOutlet weak var txGenero: UISegmentedControl!
    @IBOutlet weak var imaPerro: UIImageView!
    @IBOutlet weak var imaGato: UIImageView!
    @IBOutlet weak var imaDragoon: UIImageView!
    
    @IBOutlet weak var pvActividadFisica: UIPickerView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
