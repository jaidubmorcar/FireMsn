//
//  ChatViewController.swift
//  FireMsn
//
//  Created by practica on 25/11/17.
//  Copyright © 2017 practica. All rights reserved.
//

import UIKit
import Firebase

class ChatViewController: UIViewController,UITableViewDelegate,UITableViewDataSource{

    @IBOutlet weak var tableView: UITableView!
    @IBOutlet weak var layerView: UIView!
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.delegate=self
        tableView.dataSource=self
        tableView.register(UINib(nibName:"CustomTableViewCell",bundle:nil), forCellReuseIdentifier: "CustomMessageCell")
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "CustomMessageCell", for: indexPath) as! CustomTableViewCell
        let messageArray=["Cell 01","Cell 02","Cell 03"]
        cell.messageLabel.text=messageArray[indexPath.row]
        return cell
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 3
    }
    
    @IBAction func singOut(_ sender: UIBarButtonItem) {
        do{
        try Auth.auth().signOut()
            navigationController?.popToRootViewController(animated: true)
        }catch {
            print("Error LogOut")
        }
    }
  
    

}
