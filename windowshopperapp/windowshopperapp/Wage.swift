//
//  Wage.swift
//  windowshopperapp
//
//  Created by Su, Tina on 9/28/17.
//  Copyright © 2017 Su, Tina. All rights reserved.
//

import Foundation

class Wage{
    class func getHours(forWage wage: Double, andPrice price: Double) -> Int{
        return Int(ceil(price / wage))
    }
}
