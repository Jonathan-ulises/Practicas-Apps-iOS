//
//  SssViewController.swift
//  Navegacion
//
//  Created by contrasena12345 on 9/21/22.
//

import UIKit

class SssViewController: UIViewController {

    @IBOutlet weak var resultado: UILabel!
    @IBOutlet weak var parametro: UITextField!
    
    var recibirTexto: String!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        resultado.text = recibirTexto
    }
    

    @IBAction func regresar(_ sender: UIButton) {
        navigationController?.popViewController(animated: true)
    }
    
}
