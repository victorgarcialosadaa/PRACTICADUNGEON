//
//  Items.swift
//  PRACTICADUNGEON
//
//  Created by DAM on 16/11/2018.
//  Copyright © 2018 DAM. All rights reserved.
//

import Foundation
import UIKit

class Items{
    var name:String
    var atk:Int = 0
    var def:Int = 0
    var mag:Int = 0
    var lck:Int = 0
    var img:UIImage

    
    
    init(name:String, atk:Int,def:Int,mag:Int,lck:Int,img:UIImage){
        self.name = name
        self.atk = atk
        self.def = atk
        self.mag = atk
        self.lck = atk
        self.img = img
        
    }
    func getName() ->String{
    return self.name
    }
    
    func getAtk() ->Int{
        return self.atk
    }
    func getDef() ->Int{
        return self.def
    }
    func getMag() ->Int{
        return self.mag
    }
    func getLck() ->Int{
    return self.lck
    }
    func getImg() ->UIImage{
        return self.img
    }
    func setAtk(atk:Int){
        self.atk=atk
    }
    func setDef(def:Int){
        self.def=def
    }
    func setMag(mag:Int){
        self.mag=mag
    }
    func setLck(lck:Int){
        self.lck=lck
    }
    func setImg(img:UIImage){
        self.img=img
    }
    
}
