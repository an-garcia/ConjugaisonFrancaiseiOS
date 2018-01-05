//
//  VerbDetailsViewController.swift
//  ConjugaisonFrancaiseiOS
//
//  Created by xengar on 2018-01-05.
//  Copyright © 2018 xengar. All rights reserved.
//

import UIKit

class VerbDetailsViewController: UIViewController {

    // MARK: Properties
    var verb : Verb!
    var conjugation : Conjugation!
    
    @IBOutlet weak var infinitive : UIButton!
    @IBOutlet weak var group : UILabel!
    @IBOutlet weak var translation : UILabel!
    @IBOutlet weak var definition : UIButton!
    @IBOutlet weak var sample1 : UIButton!
    @IBOutlet weak var sample2 : UIButton!
    @IBOutlet weak var sample3 : UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        self.title = verb.infinitive
        fillVerbDetails(verb)
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
    
    
    // MARK: - Verb Details
    
    private func fillVerbDetails(_ verb : Verb) {
        infinitive.setAttributedTitle(NSAttributedString(string: verb.infinitive), for: UIControlState.normal)
        translation.text = verb.translationEN
        // TODO: Set better string
        group.text = "\(verb.group) group"
        
        definition.setAttributedTitle(NSAttributedString(string: verb.definition), for: UIControlState.normal)
        sample1.setAttributedTitle(NSAttributedString(string: verb.sample1), for: UIControlState.normal)
        sample2.setAttributedTitle(NSAttributedString(string: verb.sample2), for: UIControlState.normal)
        sample3.setAttributedTitle(NSAttributedString(string: verb.sample3), for: UIControlState.normal)
        
        // TODO: Image
        //image.image = imageForVerb(verb.infinitive)
    }

}
