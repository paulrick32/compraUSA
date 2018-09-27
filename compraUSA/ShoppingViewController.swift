//
//  ViewController.swift
//  compraUSA
//
//  Created by Paulo Pereira on 02/08/2018.
//  Copyright © 2018 Paulo Pereira. All rights reserved.
//

import UIKit

class ShoppingViewController: UIViewController {

    @IBOutlet weak var lbRealDescription: UILabel!
    @IBOutlet weak var tdDolar: UITextField!
    
    @IBOutlet weak var lbReal: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
  
    }

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        setAmmount()
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        tdDolar.resignFirstResponder()
        setAmmount()
    }

    func setAmmount()  {
        tc.shoppingValue = tc.convertToDouble(tdDolar.text!)
        lbReal.text = tc.getFormattedValue(of: tc.shoppingValue * tc.dolar, withCurrency: "R$ ")
        let dolar = tc.getFormattedValue(of: tc.dolar, withCurrency: "")
        lbRealDescription.text = "Valor sem impostos (dólar \(dolar))"
    }


}


