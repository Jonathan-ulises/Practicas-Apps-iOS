//
//  ViewController.swift
//  HelloWord
//
//  Created by contrasena12345 on 9/13/22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var texto: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        print("La vista ha sido cargada")
    }

    @IBAction func boton(_ sender: UIButton) {
        texto.resignFirstResponder()
        
        // Definicion de la alerta
        let alerta = UIAlertController(title: "Bienvenido", message: texto.text , preferredStyle:
                                        UIAlertController.Style.alert)
        
        // Accion para la alerta
        let accion = UIAlertAction(title: "OK", style: .default) { (_) in
            print("Click on button")
        }
        
        // Se agrega la accion a la alerta
        alerta.addAction(accion)
        
        // Se presenta la alerta
        present(alerta, animated: true, completion: nil)
    }
    
    // evento de touch en la vista
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        // esconde el teclado
        self.view.endEditing(true)
    }
}

