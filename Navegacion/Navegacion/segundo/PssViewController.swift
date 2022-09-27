//
//  PssViewController.swift
//  Navegacion
//
//  Created by contrasena12345 on 9/21/22.
//

import UIKit

class PssViewController: UIViewController {

    @IBOutlet weak var texto: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    @IBAction func regresar(_ sender: UIButton) {
        self.dismiss(animated: true, completion: nil)
    }
    
    @IBAction func enviar(_ sender: UIButton) {
        performSegue(withIdentifier: "enviar", sender: self)
    }
    
    // Este metodo se ejecuta cuando se manda a llamar el perfomSegue
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "enviar" {
            let destino = segue.destination as! SssViewController
            destino.recibirTexto = texto.text
        }
    }
    
    @IBAction func recibirParametro(segue: UIStoryboardSegue) {
        if let recibir = segue.source as? SssViewController {
            texto.text = recibir.parametro.text
        }
    }
}
