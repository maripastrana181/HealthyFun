//
//  NutriologosDatos.swift
//  Health
//
//  Created by Maribel  on 27/08/16.
//  Copyright © 2016 Lizzy Cruz. All rights reserved.
//

import UIKit

class NutriologosDatos: NSObject {
    var nombre : String = " "
    var telefono : String = " "
    var mail: String = " "
    
    init(nom: String, tel: String, correo: String){
        nombre = nom
        telefono = tel
        mail = correo
    }
}
