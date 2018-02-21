//
//  ViewController.swift
//  AppTracker
//
//  Created by jonathan on 07/02/2018.
//  Copyright © 2018 jonathan. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var app1: UIButton!
    @IBOutlet weak var app2: UIButton!
    @IBOutlet weak var app3: UIButton!
    @IBOutlet weak var app4: UIButton!
    @IBOutlet weak var app5: UIButton!
    @IBOutlet weak var app6: UIButton!
    
    @IBOutlet weak var app1name: UILabel!
    @IBOutlet weak var app2name: UILabel!
    @IBOutlet weak var app3name: UILabel!
    @IBOutlet weak var app4name: UILabel!
    @IBOutlet weak var app5name: UILabel!
    @IBOutlet weak var app6name: UILabel!
    @IBOutlet weak var serverstatus: UILabel!
    //ALL URL SCHEME APPS ############################################
    
    var URIobject = URI()
    var app1URL = ""
    var app2URL = ""
    var app3URL = ""
    var app4URL = ""
    var app5URL = ""
    var app6URL = ""
    
    //################################################################
    
    func randomizeApp(){
        let randomArray = URIobject.randomize()
        let appArray = URIobject.createAppArray()
        let nameArray = URIobject.createAppNameArray()
        let imageArray = URIobject.createAppImageArray()
        //Title buttons app
        app1.setTitle("", for: [])
        app2.setTitle("", for: [])
        app3.setTitle("", for: [])
        app4.setTitle("", for: [])
        app5.setTitle("", for: [])
        app6.setTitle("", for: [])
        
        app1URL = appArray[randomArray[0]]
        app2URL = appArray[randomArray[1]]
        app3URL = appArray[randomArray[2]]
        app4URL = appArray[randomArray[3]]
        app5URL = appArray[randomArray[4]]
        app6URL = appArray[randomArray[5]]
        
        app1name.text = nameArray[randomArray[0]]
        app2name.text = nameArray[randomArray[1]]
        app3name.text = nameArray[randomArray[2]]
        app4name.text = nameArray[randomArray[3]]
        app5name.text = nameArray[randomArray[4]]
        app6name.text = nameArray[randomArray[5]]
        
        app1.setBackgroundImage(imageArray[randomArray[0]], for: UIControlState.normal)
        app2.setBackgroundImage(imageArray[randomArray[1]], for: UIControlState.normal)
        app3.setBackgroundImage(imageArray[randomArray[2]], for: UIControlState.normal)
        app4.setBackgroundImage(imageArray[randomArray[3]], for: UIControlState.normal)
        app5.setBackgroundImage(imageArray[randomArray[4]], for: UIControlState.normal)
        app6.setBackgroundImage(imageArray[randomArray[5]], for: UIControlState.normal)
        
    }
    
    func getArraynumber(s: String) -> Int{
        let nameArray = self.URIobject.createAppNameArray()
        var res = -1
        for i in 0...(nameArray.count-1) {
            if(nameArray[i]==s){
                res = i
            }
        }
        return res
    }
    
    override func loadView(){
        super.loadView()
        view.backgroundColor = UIColor.green
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        self.app1.setTitle("", for: [])
        self.app2.setTitle("", for: [])
        self.app3.setTitle("", for: [])
        self.app4.setTitle("", for: [])
        self.app5.setTitle("", for: [])
        self.app6.setTitle("", for: [])
        app1name.text = ""
        app2name.text = ""
        app3name.text = ""
        app4name.text = ""
        app5name.text = ""
        app6name.text = ""
        serverstatus.textAlignment = NSTextAlignment.center
        serverstatus.text = "Connecting to server ..."
        let url = URL(string: "http://172.20.10.4:3000/app")
        
        let task = URLSession.shared.dataTask(with: url!) {(data, response, error) in
            if(error==nil){
                let test = NSString(data: data!, encoding: String.Encoding.utf8.rawValue)
                if(test=="[]"){
                    self.serverstatus.text = "Server returned blank array ..."
                }
                else{
                    let appArraySplited = test?.components(separatedBy: ",")
                    var returned1 = appArraySplited![0]
                    var returned2 = appArraySplited![1]
                    var returned3 = appArraySplited![2]
                    var returned4 = appArraySplited![3]
                    var returned5 = appArraySplited![4]
                    var returned6 = appArraySplited![5]
                    returned1 = returned1.replacingOccurrences(of: "\"", with: "", options: .literal, range: nil)
                    returned1 = returned1.replacingOccurrences(of: "[", with: "", options: .literal, range: nil)
                    returned1 = returned1.replacingOccurrences(of: "]", with: "", options: .literal, range: nil)
                    returned2 = returned2.replacingOccurrences(of: "\"", with: "", options: .literal, range: nil)
                    returned2 = returned2.replacingOccurrences(of: "[", with: "", options: .literal, range: nil)
                    returned2 = returned2.replacingOccurrences(of: "]", with: "", options: .literal, range: nil)
                    returned3 = returned3.replacingOccurrences(of: "\"", with: "", options: .literal, range: nil)
                    returned3 = returned3.replacingOccurrences(of: "[", with: "", options: .literal, range: nil)
                    returned3 = returned3.replacingOccurrences(of: "]", with: "", options: .literal, range: nil)
                    returned4 = returned4.replacingOccurrences(of: "\"", with: "", options: .literal, range: nil)
                    returned4 = returned4.replacingOccurrences(of: "[", with: "", options: .literal, range: nil)
                    returned4 = returned4.replacingOccurrences(of: "]", with: "", options: .literal, range: nil)
                    returned5 = returned5.replacingOccurrences(of: "\"", with: "", options: .literal, range: nil)
                    returned5 = returned5.replacingOccurrences(of: "[", with: "", options: .literal, range: nil)
                    returned5 = returned5.replacingOccurrences(of: "]", with: "", options: .literal, range: nil)
                    returned6 = returned6.replacingOccurrences(of: "\"", with: "", options: .literal, range: nil)
                    returned6 = returned6.replacingOccurrences(of: "[", with: "", options: .literal, range: nil)
                    returned6 = returned6.replacingOccurrences(of: "]", with: "", options: .literal, range: nil)
                    print(returned1)
                    print(returned2)
                    print(returned3)
                    print(returned4)
                    print(returned5)
                    print(returned6)
                    self.serverstatus.text = ""
                    let appArray = self.URIobject.createAppArray()
                    let nameArray = self.URIobject.createAppNameArray()
                    let imageArray = self.URIobject.createAppImageArray()
                    self.app1URL = appArray[self.getArraynumber(s: returned1)]
                    self.app2URL = appArray[self.getArraynumber(s: returned2)]
                    self.app3URL = appArray[self.getArraynumber(s: returned3)]
                    self.app4URL = appArray[self.getArraynumber(s: returned4)]
                    self.app5URL = appArray[self.getArraynumber(s: returned5)]
                    self.app6URL = appArray[self.getArraynumber(s: returned6)]
                    
                    self.app1name.text = nameArray[self.getArraynumber(s: returned1)]
                    self.app2name.text = nameArray[self.getArraynumber(s: returned2)]
                    self.app3name.text = nameArray[self.getArraynumber(s: returned3)]
                    self.app4name.text = nameArray[self.getArraynumber(s: returned4)]
                    self.app5name.text = nameArray[self.getArraynumber(s: returned5)]
                    self.app6name.text = nameArray[self.getArraynumber(s: returned6)]
                    
                    self.app1.setBackgroundImage(imageArray[self.getArraynumber(s: returned1)], for: UIControlState.normal)
                    self.app2.setBackgroundImage(imageArray[self.getArraynumber(s: returned2)], for: UIControlState.normal)
                    self.app3.setBackgroundImage(imageArray[self.getArraynumber(s: returned3)], for: UIControlState.normal)
                    self.app4.setBackgroundImage(imageArray[self.getArraynumber(s: returned4)], for: UIControlState.normal)
                    self.app5.setBackgroundImage(imageArray[self.getArraynumber(s: returned5)], for: UIControlState.normal)
                    self.app6.setBackgroundImage(imageArray[self.getArraynumber(s: returned6)], for: UIControlState.normal)
                }
            }else{
                self.randomizeApp()
                self.serverstatus.text = "Server not responding, apps are random..."
            }
            
        }
        
        task.resume()
        
        view.backgroundColor = UIColor.white
        app1.backgroundColor = UIColor.white
        app2.backgroundColor = UIColor.white
        app3.backgroundColor = UIColor.white
        app4.backgroundColor = UIColor.white
        app5.backgroundColor = UIColor.white
        app6.backgroundColor = UIColor.white
        app1name.textAlignment = NSTextAlignment.center
        app2name.textAlignment = NSTextAlignment.center
        app3name.textAlignment = NSTextAlignment.center
        app4name.textAlignment = NSTextAlignment.center
        app5name.textAlignment = NSTextAlignment.center
        app6name.textAlignment = NSTextAlignment.center
        
        
        var instanceOfCustomObject: CustomObject = CustomObject()
        //print(instanceOfCustomObject.runningProcesses())
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }

    @IBAction func app1push(_ sender: Any) {
        UIApplication.shared.openURL(URL(string: app1URL)!)
    }
    
    @IBAction func app2push(_ sender: Any) {
        UIApplication.shared.openURL(URL(string: app2URL)!)
    }
    @IBAction func app3push(_ sender: Any) {
        UIApplication.shared.openURL(URL(string: app3URL)!)
    }
    @IBAction func app4push(_ sender: Any) {
        UIApplication.shared.openURL(URL(string: app4URL)!)
    }
    @IBAction func app5push(_ sender: Any) {
        UIApplication.shared.openURL(URL(string: app5URL)!)
    }
    @IBAction func app6push(_ sender: Any) {
        UIApplication.shared.openURL(URL(string: app6URL)!)
    }
}

