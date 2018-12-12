//
//  Dice.swift
//  PRACTICADUNGEON
//
//  Created by DAM on 16/11/2018.
//  Copyright © 2018 DAM. All rights reserved.
//

import Foundation
import UIKit
class Dice{
    var quantity:Int = 0
    var value:Int = 0
    var img:UIImage
    
    
    init(quantity:Int, value:Int, img:UIImage){
        self.quantity = quantity
        self.value = value
        self.img = img
}
    func getQuantity() ->Int{
        return self.quantity
    }
    func getValue() ->Int{
        return self.value
    }
    func getImg() ->UIImage{
        return self.img
    }
    func setQuantity(quantity:Int){
        self.quantity = quantity
    }
    func setValue(value:Int){
        self.value = value
    }
    func setImg(img:UIImage){
        self.img = img
    }
}
