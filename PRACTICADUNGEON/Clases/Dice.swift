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
  
    var value:Int = 0
    var img:UIImage
    
    
    init( value:Int, img:UIImage){
        
        self.value = value
        self.img = img
}
   
    func getValue() ->Int{
        return self.value
    }
    func getImg() ->UIImage{
        return self.img
    }
  
    func setValue(value:Int){
        self.value = value
    }
    func setImg(img:UIImage){
        self.img = img
    }
}
