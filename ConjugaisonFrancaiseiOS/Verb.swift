//
//  Verb.swift
//  ConjugaisonFrancaiseiOS
//
//  Created by xengar on 2018-01-05.
//  Copyright © 2018 xengar. All rights reserved.
//

import Foundation

// MARK: - Verb
class Verb {
    
    // MARK: Properties
    var id : Int
    var conjugation : Int
    var infinitive : String
    var definition : String
    var sample1 : String
    var sample2 : String
    var sample3 : String
    var common : Int
    var group : Int
    var color : Int
    var score : Int
    var notes : String
    var translationEN : String
    var translationES : String
    var translationPT : String
    
    
    // MARK: Initializer
    init(dictionary: [String : AnyObject]) {
        id = dictionary["id"] as! Int
        conjugation = dictionary["ta"] as! Int
        infinitive = dictionary["in"] as! String
        definition = dictionary["de"] as! String
        sample1 = dictionary["s1"] as! String
        sample2 = dictionary["s2"] as! String
        sample3 = dictionary["s3"] as! String
        common = dictionary["co"] as! Int
        group = dictionary["gr"] as! Int
        color  = 0
        score = 0
        notes = dictionary["no"] as! String
        translationEN = dictionary["tren"] as! String
        translationES = dictionary["tres"] as! String
        translationPT = dictionary["trpt"] as! String
    }
    
}
