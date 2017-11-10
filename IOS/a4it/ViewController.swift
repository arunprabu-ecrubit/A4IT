//
//  ViewController.swift
//  a4it
//
//  Created by user906979 on 11/9/17.
//  Copyright © 2017 ecrubit. All rights reserved.
//

import UIKit
import Firebase

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
  var ref: DatabaseReference!
    
    @IBOutlet weak var labelResult: UILabel!
    @IBOutlet weak var textTitle: UITextField!
    
    @IBOutlet weak var tblUser: UITableView!
    @IBOutlet weak var textMessage: UITextField!
    @IBAction func buttonSubmit(_ sender: Any) {
        addData()
    }
    var userList = [userModel]()
    
    public func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return userList.count
    }
    
    
    public func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! viewControllerTableViewCell
        let user: userModel
        user = userList[indexPath.row]
        cell.lblTitle.text = user.title
        cell.lblMessage.text = user.message
        return cell
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        ref = Database.database().reference().child("Title")
        
        ref.observe(DataEventType.value, with: {(DataSnapshot) in
            if DataSnapshot.childrenCount>0{
                self.userList.removeAll()
                for users in DataSnapshot.children.allObjects as![DataSnapshot]{
                    let userobj = users.value as? [String: AnyObject]
                    let title = userobj?["title"]
                    let messge = userobj?["messge"]
                    let id = userobj?["id"]
                    
                    let user = userModel(id: id as! String?, title: title as! String?, message: messge as! String?)
                    self.userList.append(user)
                }
                self.tblUser.reloadData()
                
            }
        })
    }
    
    func addData(){
        let key = ref.childByAutoId().key
        let user = [
        "id":key,
        "title":"welcome",
        "message":"Hi there"
            ]
        ref.child(key).setValue(user)
    
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

