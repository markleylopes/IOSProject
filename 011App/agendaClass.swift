//
//  agendaClass.swift
//  011App
//
//  Created by Lab on 16/06/2018.
//  Copyright © 2018 Lab. All rights reserved.
//

import UIKit

class agendaClass: UIViewController {

    @IBOutlet weak var foto: UIImageView!
    @IBOutlet weak var nome: UILabel!
    @IBOutlet weak var telefone: UILabel!
    
    
    @IBOutlet weak var nomeContato: UILabel!
    @IBOutlet weak var telefoneContato: UILabel!
    @IBOutlet weak var emailContato: UILabel!
    @IBOutlet weak var celularContato: UILabel!
    @IBOutlet weak var campoNumero: UITextField!
    

    

    
    //Variáveis que receberão da outra tela
    var rImagem: String!
    var rNomeContato: String!
    var rEmailContato: String!
    var rTelefoneContato: String!

    
    @IBAction func adicionarNumero(_ sender: Any) {
        celularContato.text = campoNumero.text
        campoNumero.text = "";
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
      campoNumero.layer.borderColor = UIColor.black.cgColor
    campoNumero.layer.borderWidth = 1.0
        
        self.foto.image = UIImage(named:rImagem)
        self.nomeContato.text = rNomeContato
        self.telefoneContato.text = rTelefoneContato
        self.emailContato.text = rEmailContato
        

        // Do any additional setup after loading the view.
    }
    @IBOutlet weak var email: UILabel!
    
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
