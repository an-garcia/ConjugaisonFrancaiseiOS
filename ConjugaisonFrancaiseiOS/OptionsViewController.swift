//
//  OptionsViewController.swift
//  ConjugaisonFrancaiseiOS
//
//  Created by xengar on 2018-01-05.
//  Copyright © 2018 xengar. All rights reserved.
//

import UIKit

class OptionsViewController: UIViewController {

    // MARK: Properties
    @IBOutlet weak var showVerbDefinition: UISwitch!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        self.title = "Options"
        // Read the setting value
        let boolValue = UserDefaults.standard.bool(forKey: "showVerbDefinition")
        showVerbDefinition.setOn(boolValue, animated: false)
    }

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
    
    // MARK: Change value
    @IBAction func changeShowVerbDefinition(_ sender: Any) {
        // Save the setting value
        let value = showVerbDefinition.isOn
        UserDefaults.standard.set(value, forKey: "showVerbDefinition")
    }

}
