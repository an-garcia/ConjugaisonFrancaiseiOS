//
//  VerbListViewController.swift
//  ConjugaisonFrancaiseiOS
//
//  Created by xengar on 2018-01-05.
//  Copyright © 2018 xengar. All rights reserved.
//

import UIKit

class VerbListViewController: UIViewController {

    // MARK: Properties
    @IBOutlet weak var tableView: UITableView!
    
    var verbs: [Verb] = [Verb]() // List of verbs
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Initialize the verbs
        loadVerbsData()
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(true)
        self.tableView.reloadData()
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
    
    // MARK: Load verbs data
    private func loadVerbsData() {
        let verbPlistPaths = Bundle.main.paths(forResourcesOfType: "plist", inDirectory: nil)
        
        for plistPath in verbPlistPaths {
            if (plistPath as NSString).lastPathComponent == "verbs.plist" {
                if let verbsDictionary = NSDictionary(contentsOfFile: plistPath) as? [String : AnyObject] {
                    // Get the dictionary
                    let verbNodesDictionary = verbsDictionary["verbs"] as! [AnyObject]
                    // Add the verb
                    for (dictionary): (AnyObject) in verbNodesDictionary {
                        verbs.append(Verb(dictionary: dictionary as! [String : AnyObject]))
                    }
                }
            }
        }
    }

}


// MARK: - VerbListViewController (Table Data Source)
extension VerbListViewController: UITableViewDataSource, UITableViewDelegate {
    
    // MARK: Table
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return verbs.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = self.tableView.dequeueReusableCell(withIdentifier: "Cell")! as! VerbTableViewCell
        let verb = verbs[(indexPath as NSIndexPath).row]
        cell.infinitive!.text = verb.infinitive
        cell.definition!.text = verb.definition
        cell.translation!.text = verb.translationEN
        //let imageName = adventure.credits.imageName
        //cell.imageView!.image = UIImage(named: imageName!)
        
        // Use UserDefaults for hide/show definition
        //let boolValue = UserDefaults.standard.bool(forKey: "showVerbDefinition")
        //cell.definition.isHidden = !boolValue
        // TODO: Use UserDefaults for hide/show translation
        //cell.translation.isHidden = true
        
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        // Get the selected verb
        let verb = verbs[(indexPath as NSIndexPath).row]
        
        // Get a controller from the Storyboard
        let controller = self.storyboard!.instantiateViewController(withIdentifier: "VerbDetailsViewController")as! VerbDetailsViewController
        
        // Set the verb data
        controller.verb = verb
        
        // Push the new controller onto the stack
        self.navigationController!.pushViewController(controller, animated: true)
    }
}
