//
//  ViewController.swift
//  011App
//
//  Created by Lab on 16/06/2018.
//  Copyright © 2018 Lab. All rights reserved.
//

import UIKit

class ViewController:  UIViewController, UITableViewDataSource, UITableViewDelegate {
    @IBOutlet weak var tableView: UITableView!
    var medicos: [String] = ["Jose Augusto","Maria Lopes","Cristina Araujo","Alice Paiva", "Roberto Ferreira"]
    var imagem: String!
    var nomeContato: String!
    var emailContato: String!
    var telefoneContato: String!
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
  
       
   
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func tableView(_ tableView:UITableView, numberOfRowsInSection section:Int) -> Int
    {
        return medicos.count
        
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cellIdentifier = "cell"
        let cell = tableView.dequeueReusableCell(withIdentifier: cellIdentifier) as! tableViewCell
        
        let medico = self.medicos[indexPath.row]
        
        cell.textLabel?.text = medico

        return cell
        
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        self.performSegue(withIdentifier: "mostrarAgenda", sender: indexPath)
        
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let destino = segue.destination as? agendaClass else {
        
            return
        }
        
      let row = (sender as! IndexPath).row
        
        if row == 0 {
            
            imagem = "homem"
            nomeContato = medicos[0]
            emailContato = "2018@gmail.com"
            telefoneContato = "(84) 3314-4248"
        }
        
       else if row == 1 {
            
             imagem = "mulher"
             nomeContato = medicos[1]
            emailContato = "ela@gmail.com"
            telefoneContato = "(81) 4714-4298"
        }
        
        else if row == 2 {
            
             imagem = "mulher"
             nomeContato = medicos[2]
            emailContato = "estima@gmail.com"
            telefoneContato = "(84) 8814-4248"
        }
        
        else if row == 3 {
            
            
                imagem = "mulher"
             nomeContato = medicos[3]
            emailContato = "ela123@gmail.com"
            telefoneContato = "(88) 9314-4248"
        }
        
       else  if row == 4 {
            
              imagem = "homem"
             nomeContato = medicos[4]
            emailContato = "ele859@gmail.com"
            telefoneContato = "(85) 9834-4247"
            
        }
        
destino.rImagem = imagem
destino.rNomeContato = nomeContato
destino.rEmailContato = emailContato
destino.rTelefoneContato = telefoneContato
        
     
     
    }
    
   
    
}

