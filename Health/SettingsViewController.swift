//
//  SettingsViewController.swift
//  Health
//
//  Created by Lizzy Cruz on 27/08/16.
//  Copyright © 2016 Lizzy Cruz. All rights reserved.
//

import UIKit

class SettingsViewController: UIViewController {

    @IBOutlet weak var txEdad: UITextField!
    @IBOutlet weak var txAltura: UITextField!
    @IBOutlet weak var txPeso: UITextField!
    @IBOutlet weak var scGenero: UISegmentedControl!
    
    @IBOutlet weak var pvActividad: UIPickerView!
    
    @IBOutlet weak var imaPerro: UIImageView!
    @IBOutlet weak var imaGato: UIImageView!
    @IBOutlet weak var imaDragon: UIImageView!
    @IBOutlet weak var btActualizar: UIButton!
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
