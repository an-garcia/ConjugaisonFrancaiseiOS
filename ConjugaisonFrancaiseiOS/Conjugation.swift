//
//  Conjugation.swift
//  ConjugaisonFrancaiseiOS
//
//  Created by xengar on 2018-01-05.
//  Copyright © 2018 xengar. All rights reserved.
//

import Foundation

// MARK: - Conjugation
class Conjugation {
    
    // MARK: Properties
    var id : Int = 0
    var termination : String = ""
    var radicals : String = ""
    var infinitivePresent : String = ""
    var infinitivePasse : String = ""
    var participePresent : String = ""
    var participePasse1 : String = ""
    var participePasse2 : String = ""
    var gerondifPresent : String = ""
    var gerondifPasse : String = ""
    var imperatifPresentTu : String = ""
    var imperatifPresentNous : String = ""
    var imperatifPresentVous : String = ""
    var imperatifPasseTu : String = ""
    var imperatifPasseNous : String = ""
    var imperatifPasseVous : String = ""
    
    var indicatifPresentJe : String = ""
    var indicatifPresentTu : String = ""
    var indicatifPresentIl : String = ""
    var indicatifPresentNous : String = ""
    var indicatifPresentVous : String = ""
    var indicatifPresentIls : String = ""
    var indicatifPasseComposeJe : String = ""
    var indicatifPasseComposeTu : String = ""
    var indicatifPasseComposeIl : String = ""
    var indicatifPasseComposeNous : String = ""
    var indicatifPasseComposeVous : String = ""
    var indicatifPasseComposeIls : String = ""
    var indicatifImperfaitJe : String = ""
    var indicatifImperfaitTu : String = ""
    var indicatifImperfaitIl : String = ""
    var indicatifImperfaitNous : String = ""
    var indicatifImperfaitVous : String = ""
    var indicatifImperfaitIls : String = ""
    var indicatifPlusQueParfaitJe : String = ""
    var indicatifPlusQueParfaitTu : String = ""
    var indicatifPlusQueParfaitIl : String = ""
    var indicatifPlusQueParfaitNous : String = ""
    var indicatifPlusQueParfaitVous : String = ""
    var indicatifPlusQueParfaitIls : String = ""
    var indicatifPasseSimpleJe : String = ""
    var indicatifPasseSimpleTu : String = ""
    var indicatifPasseSimpleIl : String = ""
    var indicatifPasseSimpleNous : String = ""
    var indicatifPasseSimpleVous : String = ""
    var indicatifPasseSimpleIls : String = ""
    var indicatifPasseAnterieurJe : String = ""
    var indicatifPasseAnterieurTu : String = ""
    var indicatifPasseAnterieurIl : String = ""
    var indicatifPasseAnterieurNous : String = ""
    var indicatifPasseAnterieurVous : String = ""
    var indicatifPasseAnterieurIls : String = ""
    var indicatifFuturSimpleJe : String = ""
    var indicatifFuturSimpleTu : String = ""
    var indicatifFuturSimpleIl : String = ""
    var indicatifFuturSimpleNous : String = ""
    var indicatifFuturSimpleVous : String = ""
    var indicatifFuturSimpleIls : String = ""
    var indicatifFuturAnterieurJe : String = ""
    var indicatifFuturAnterieurTu : String = ""
    var indicatifFuturAnterieurIl : String = ""
    var indicatifFuturAnterieurNous : String = ""
    var indicatifFuturAnterieurVous : String = ""
    var indicatifFuturAnterieurIls : String = ""
    
    var subjonctifPresentJe : String = ""
    var subjonctifPresentTu : String = ""
    var subjonctifPresentIl : String = ""
    var subjonctifPresentNous : String = ""
    var subjonctifPresentVous : String = ""
    var subjonctifPresentIls : String = ""
    var subjonctifPasseJe : String = ""
    var subjonctifPasseTu : String = ""
    var subjonctifPasseIl : String = ""
    var subjonctifPasseNous : String = ""
    var subjonctifPasseVous : String = ""
    var subjonctifPasseIls : String = ""
    var subjonctifImperfaitJe : String = ""
    var subjonctifImperfaitTu : String = ""
    var subjonctifImperfaitIl : String = ""
    var subjonctifImperfaitNous : String = ""
    var subjonctifImperfaitVous : String = ""
    var subjonctifImperfaitIls : String = ""
    var subjonctifPlusQueParfaitJe : String = ""
    var subjonctifPlusQueParfaitTu : String = ""
    var subjonctifPlusQueParfaitIl : String = ""
    var subjonctifPlusQueParfaitNous : String = ""
    var subjonctifPlusQueParfaitVous : String = ""
    var subjonctifPlusQueParfaitIls : String = ""
    
    var conditionnelPresentJe : String = ""
    var conditionnelPresentTu : String = ""
    var conditionnelPresentIl : String = ""
    var conditionnelPresentNous : String = ""
    var conditionnelPresentVous : String = ""
    var conditionnelPresentIls : String = ""
    var conditionnelPasseJe : String = ""
    var conditionnelPasseTu : String = ""
    var conditionnelPasseIl : String = ""
    var conditionnelPasseNous : String = ""
    var conditionnelPasseVous : String = ""
    var conditionnelPasseIls : String = ""

    
    // MARK: Initializer
    init(dictionary: [String : AnyObject]) {
        id = dictionary["id"] as! Int
        termination = dictionary["term"] as! String
        radicals = dictionary["radicals"] as! String
        infinitivePresent = dictionary["inf_pr"] as! String
        infinitivePasse = dictionary["inf_pa"] as! String
        participePresent = dictionary["pa_pr"] as! String
        participePasse1 = dictionary["pa_pa1"] as! String
        participePasse2 = dictionary["pa_pa2"] as! String
        gerondifPresent = dictionary["ge_pr"] as! String
        gerondifPasse = dictionary["ge_pa"] as! String
        imperatifPresentTu = dictionary["im_pr_t"] as! String
        imperatifPresentNous = dictionary["im_pr_n"] as! String
        imperatifPresentVous = dictionary["im_pr_v"] as! String
        imperatifPasseTu = dictionary["im_pa_t"] as! String
        imperatifPasseNous = dictionary["im_pa_n"] as! String
        imperatifPasseVous = dictionary["im_pa_v"] as! String
        
        indicatifPresentJe = dictionary["in_pr_j"] as! String
        indicatifPresentTu = dictionary["in_pr_t"] as! String
        indicatifPresentIl = dictionary["in_pr_il"] as! String
        indicatifPresentNous = dictionary["in_pr_n"] as! String
        indicatifPresentVous = dictionary["in_pr_v"] as! String
        indicatifPresentIls = dictionary["in_pr_ils"] as! String
        indicatifPasseComposeJe = dictionary["in_pc_j"] as! String
        indicatifPasseComposeTu = dictionary["in_pc_t"] as! String
        indicatifPasseComposeIl = dictionary["in_pc_il"] as! String
        indicatifPasseComposeNous = dictionary["in_pc_n"] as! String
        indicatifPasseComposeVous = dictionary["in_pc_v"] as! String
        indicatifPasseComposeIls = dictionary["in_pc_ils"] as! String
        indicatifImperfaitJe = dictionary["in_im_j"] as! String
        indicatifImperfaitTu = dictionary["in_im_t"] as! String
        indicatifImperfaitIl = dictionary["in_im_il"] as! String
        indicatifImperfaitNous = dictionary["in_im_n"] as! String
        indicatifImperfaitVous = dictionary["in_im_v"] as! String
        indicatifImperfaitIls = dictionary["in_im_ils"] as! String
        indicatifPlusQueParfaitJe = dictionary["in_pqp_j"] as! String
        indicatifPlusQueParfaitTu = dictionary["in_pqp_t"] as! String
        indicatifPlusQueParfaitIl = dictionary["in_pqp_il"] as! String
        indicatifPlusQueParfaitNous = dictionary["in_pqp_n"] as! String
        indicatifPlusQueParfaitVous = dictionary["in_pqp_v"] as! String
        indicatifPlusQueParfaitIls = dictionary["in_pqp_ils"] as! String
        indicatifPasseSimpleJe = dictionary["in_ps_j"] as! String
        indicatifPasseSimpleTu = dictionary["in_ps_t"] as! String
        indicatifPasseSimpleIl = dictionary["in_ps_il"] as! String
        indicatifPasseSimpleNous = dictionary["in_ps_n"] as! String
        indicatifPasseSimpleVous = dictionary["in_ps_v"] as! String
        indicatifPasseSimpleIls = dictionary["in_ps_ils"] as! String
        indicatifPasseAnterieurJe = dictionary["in_pa_j"] as! String
        indicatifPasseAnterieurTu = dictionary["in_pa_t"] as! String
        indicatifPasseAnterieurIl = dictionary["in_pa_il"] as! String
        indicatifPasseAnterieurNous = dictionary["in_pa_n"] as! String
        indicatifPasseAnterieurVous = dictionary["in_pa_v"] as! String
        indicatifPasseAnterieurIls = dictionary["in_pa_ils"] as! String
        indicatifFuturSimpleJe = dictionary["in_fs_j"] as! String
        indicatifFuturSimpleTu = dictionary["in_fs_t"] as! String
        indicatifFuturSimpleIl = dictionary["in_fs_il"] as! String
        indicatifFuturSimpleNous = dictionary["in_fs_n"] as! String
        indicatifFuturSimpleVous = dictionary["in_fs_v"] as! String
        indicatifFuturSimpleIls = dictionary["in_fs_ils"] as! String
        indicatifFuturAnterieurJe = dictionary["in_fa_j"] as! String
        indicatifFuturAnterieurTu = dictionary["in_fa_t"] as! String
        indicatifFuturAnterieurIl = dictionary["in_fa_il"] as! String
        indicatifFuturAnterieurNous = dictionary["in_fa_n"] as! String
        indicatifFuturAnterieurVous = dictionary["in_fa_v"] as! String
        indicatifFuturAnterieurIls = dictionary["in_fa_ils"] as! String
        
        subjonctifPresentJe = dictionary["su_pr_j"] as! String
        subjonctifPresentTu = dictionary["su_pr_t"] as! String
        subjonctifPresentIl = dictionary["su_pr_il"] as! String
        subjonctifPresentNous = dictionary["su_pr_n"] as! String
        subjonctifPresentVous = dictionary["su_pr_v"] as! String
        subjonctifPresentIls = dictionary["su_pr_ils"] as! String
        subjonctifPasseJe = dictionary["su_pa_j"] as! String
        subjonctifPasseTu = dictionary["su_pa_t"] as! String
        subjonctifPasseIl = dictionary["su_pa_il"] as! String
        subjonctifPasseNous = dictionary["su_pa_n"] as! String
        subjonctifPasseVous = dictionary["su_pa_v"] as! String
        subjonctifPasseIls = dictionary["su_pa_ils"] as! String
        subjonctifImperfaitJe = dictionary["su_im_j"] as! String
        subjonctifImperfaitTu = dictionary["su_im_t"] as! String
        subjonctifImperfaitIl = dictionary["su_im_il"] as! String
        subjonctifImperfaitNous = dictionary["su_im_n"] as! String
        subjonctifImperfaitVous = dictionary["su_im_v"] as! String
        subjonctifImperfaitIls = dictionary["su_im_ils"] as! String
        subjonctifPlusQueParfaitJe = dictionary["su_pqp_j"] as! String
        subjonctifPlusQueParfaitTu = dictionary["su_pqp_t"] as! String
        subjonctifPlusQueParfaitIl = dictionary["su_pqp_il"] as! String
        subjonctifPlusQueParfaitNous = dictionary["su_pqp_n"] as! String
        subjonctifPlusQueParfaitVous = dictionary["su_pqp_v"] as! String
        subjonctifPlusQueParfaitIls = dictionary["su_pqp_ils"] as! String
        
        conditionnelPresentJe = dictionary["co_pr_j"] as! String
        conditionnelPresentTu = dictionary["co_pr_t"] as! String
        conditionnelPresentIl = dictionary["co_pr_il"] as! String
        conditionnelPresentNous = dictionary["co_pr_n"] as! String
        conditionnelPresentVous = dictionary["co_pr_v"] as! String
        conditionnelPresentIls = dictionary["co_pr_ils"] as! String
        conditionnelPasseJe = dictionary["co_pa_j"] as! String
        conditionnelPasseTu = dictionary["co_pa_t"] as! String
        conditionnelPasseIl = dictionary["co_pa_il"] as! String
        conditionnelPasseNous = dictionary["co_pa_n"] as! String
        conditionnelPasseVous = dictionary["co_pa_v"] as! String
        conditionnelPasseIls = dictionary["co_pa_ils"] as! String
    }
    
}
