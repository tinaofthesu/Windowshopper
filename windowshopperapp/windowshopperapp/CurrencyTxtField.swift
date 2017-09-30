//
//  CurrencyTxtField.swift
//  windowshopperapp
//
//  Created by Su, Tina on 9/26/17.
//  Copyright © 2017 Su, Tina. All rights reserved.
//

import UIKit


@IBDesignable
class CurrencyTxtField: UITextField {

    override func draw(_ rect: CGRect) {
        let size: CGFloat = 20
        let currencyLabel = UILabel(frame: CGRect(x: 5, y: (frame.size.height / 2 ) - size / 2 , width: size, height: size))
        currencyLabel.backgroundColor = #colorLiteral(red: 0.6944809825, green: 0.7008954401, blue: 0.7764643932, alpha: 0.7753129778)
        currencyLabel.textAlignment = .center
        currencyLabel.textColor = #colorLiteral(red: 0.2549019754, green: 0.2745098174, blue: 0.3019607961, alpha: 1)
        currencyLabel.layer.cornerRadius = 5.0
        currencyLabel.clipsToBounds = true
        let formatter = NumberFormatter()
        formatter.numberStyle = .currency
        formatter.locale = .current
        currencyLabel.text = formatter.currencySymbol
        addSubview(currencyLabel)
        
    }
    override func prepareForInterfaceBuilder() {
        customizeView()
    }
    override func awakeFromNib() {
        super.awakeFromNib()
        customizeView()
    
        
        
    }

    func customizeView() {
        backgroundColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 0.2549240757)
        layer.cornerRadius  = 5.0
        textAlignment = .center
        
        clipsToBounds = true
        
        if let p = placeholder {
            
            let place = NSAttributedString(string: p, attributes: [NSForegroundColorAttributeName: #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)])
            attributedPlaceholder = place
            textColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)

        
    }

}
}
