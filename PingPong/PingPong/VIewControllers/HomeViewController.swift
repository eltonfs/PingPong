//
//  HomeViewController.swift
//  PingPong
//
//  Created by Elton Santana on 05/01/17.
//  Copyright © 2017 Back St Eltons. All rights reserved.
//

import UIKit

class HomeViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func unwindToHomeSegue(_ sender: UIStoryboardSegue){
        
    }
    
    @IBAction func PlayButtonAction(_ sender: UIButton) {
        self.showConnectionPopUp()
    }
    
    func showConnectionPopUp(){
        
        let popUp = UIAlertController(title: "Choose how start to play", message: "", preferredStyle: .alert)
        
        let startMatchAction = UIAlertAction(title: "Open a new match", style: .default, handler: self.goToWaitingPlayer)
        popUp.addAction(startMatchAction)
        
        let joinAnExistingMatchAction = UIAlertAction(title: "Join an existing match", style: .default, handler: self.goToChooseConnection)
        popUp.addAction(joinAnExistingMatchAction)
        
        self.present(popUp, animated: true, completion: nil)
        
    }
    
    func goToWaitingPlayer(alert: UIAlertAction!){
        self.performSegue(withIdentifier: "HomeToWaitingPlayerSegue", sender: self)
    }
    
    func goToChooseConnection(alert: UIAlertAction!){
        self.performSegue(withIdentifier: "HomeToChooseConnectionSegue", sender: self)
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
