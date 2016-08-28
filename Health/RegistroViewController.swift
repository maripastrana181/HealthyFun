//
//  RegistroViewController.swift
//  Health
//
//  Created by Lizzy Cruz on 27/08/16.
//  Copyright © 2016 Lizzy Cruz. All rights reserved.
//

import UIKit
import CoreData

class RegistroViewController: UIViewController {

    @IBOutlet weak var txName: UITextField!
    @IBOutlet weak var txEdad: UITextField!
    @IBOutlet weak var txEstatura: UITextField!
    @IBOutlet weak var txPeso: UITextField!
    @IBOutlet weak var txGenero: UISegmentedControl!
    @IBOutlet weak var imaPerro: UIImageView!
    @IBOutlet weak var imaGato: UIImageView!
    @IBOutlet weak var imaDragoon: UIImageView!
    @IBOutlet weak var txEmail: UITextField!
    @IBOutlet weak var txContrasena: UITextField!
    
    @IBOutlet weak var pvActividadFisica: UIPickerView!
    
    var genero : String!
    
    @IBOutlet weak var segmentedControl: UISegmentedControl!
    let contexto = (UIApplication.sharedApplication().delegate as! AppDelegate).managedObjectContext
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func actGuardar(sender: AnyObject) {
        let entityDescription = NSEntityDescription.entityForName("Usuario", inManagedObjectContext: contexto)
        
        let name = self.txName.text!
        let edad = Int(self.txEdad.text!)
        let estatura = Int(self.txEstatura.text!)
        let peso = Int(self.txPeso.text!)
        let email = self.txEmail.text!
        let contrasena = self.txContrasena.text!
        
        if(name == "" || email == "" || contrasena == ""){
            let alertController = UIAlertController(title: "iOScreator", message:
            "Faltan agregar datos!", preferredStyle: UIAlertControllerStyle.Alert)
            alertController.addAction(UIAlertAction(title: "Dismiss", style: UIAlertActionStyle.Default,handler: nil))
            
            self.presentViewController(alertController, animated: true, completion: nil)
            
        }
        
        //crea el objeto con el contexto
        contexto.performBlockAndWait() {
            let usuario2 = Usuario(entity: entityDescription!, insertIntoManagedObjectContext: self.contexto)
            usuario2.usuario = name
            usuario2.edad = edad!
            usuario2.estatura = estatura!
            usuario2.peso = peso!
            usuario2.email = email
            usuario2.contrasena = contrasena
            
        }
        
        //guarda contexto
        contexto.performBlockAndWait() {
            if self.contexto.hasChanges {
                do {
                    try self.contexto.save()
                    
                    self.txContrasena.text = ""
                    self.txEmail.text = ""
                    self.txPeso.text = ""
                    self.txEstatura.text = ""
                    
                    let alertController = UIAlertController(title: "iOScreator", message:
                        "Se ha guardado el usuario", preferredStyle: UIAlertControllerStyle.Alert)
                    alertController.addAction(UIAlertAction(title: "Dismiss", style: UIAlertActionStyle.Default,handler: nil))
                    
                    self.presentViewController(alertController, animated: true, completion: nil)

                }
                catch {
                    let alertController = UIAlertController(title: "iOScreator", message:
                        "No se pudo Guardar el usuario!", preferredStyle: UIAlertControllerStyle.Alert)
                    alertController.addAction(UIAlertAction(title: "Dismiss", style: UIAlertActionStyle.Default,handler: nil))
                    
                    self.presentViewController(alertController, animated: true, completion: nil)
                }
            }
        }
 
        
    }

    @IBAction func genero(sender: UISegmentedControl) {
        switch segmentedControl.selectedSegmentIndex
        {
        case 0:
            genero = "Mujer"
        case 1:
            genero = "Hombre"
        default:
            break; 
        }
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
