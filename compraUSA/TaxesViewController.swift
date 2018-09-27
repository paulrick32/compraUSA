//
//  TaxesViewController.swift
//  compraUSA
//
//  Created by Paulo Pereira on 02/08/2018.
//  Copyright © 2018 Paulo Pereira. All rights reserved.
//

import UIKit

class TaxesViewController: UIViewController {

    @IBOutlet weak var lbDolar: UILabel!
    
    @IBOutlet weak var lbDolarC: UILabel!
    @IBOutlet weak var lbStateTaxes: NSLayoutConstraint!
    
    @IBOutlet weak var lbStateTaxesC: UILabel!
    
    @IBOutlet weak var lbIOF: UILabel!
    
    @IBOutlet weak var lbIOFDescription: UILabel!
    
    @IBOutlet weak var lbTaxesDescription: UILabel!
    
    @IBOutlet weak var swCreditCard: UISwitch!
    
    
    @IBOutlet weak var lbReal: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func viewWillAppear(_ animated: Bool) {
        calculateTaxes()
    }
    
    
    @IBAction func changeIOF(_ sender: UISwitch) {
        calculateTaxes()
    }
    
    func calculateTaxes(){
        lbTaxesDescription.text = "Imposto do Estado (\(tc.getFormattedValue(of: tc.stateTax, withCurrency: ""))%)"
        
         lbIOFDescription.text = "IOF(\(tc.getFormattedValue(of: tc.iof, withCurrency: ""))%)"
        
        lbDolarC.text = tc.getFormattedValue(of: tc.shoppingValue, withCurrency: "US$ ")
        
        lbStateTaxesC.text = tc.getFormattedValue(of: tc.stateTaxValue, withCurrency: "US$")
        
        lbIOF.text = tc.getFormattedValue(of: tc.iofValue, withCurrency: "US$")
        
        let real = tc.calculate(usingCreditCard: swCreditCard.isOn)
        
        lbReal.text = tc.getFormattedValue(of: real, withCurrency: "R$ ")
        
    }


}
