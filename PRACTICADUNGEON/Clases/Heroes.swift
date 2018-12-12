//
//  Heroes.swift
//  PRACTICADUNGEON
//
//  Created by DAM on 16/11/2018.
//  Copyright © 2018 DAM. All rights reserved.
//

import Foundation
import UIKit
class Heroes{
    var health:Int
    var name:String
    var money:Int
    var exp:Int
    var img:UIImage
    var stuff = Stuff()


    init(health:Int, name:String, img:UIImage){
    self.health = health
    self.name = name
    self.money = 0
    self.exp = 0
    self.img = img
  
}
    func getHealth() ->Int{
        return self.health
    }
    func getName() ->String{
        return self.name
    }
    func getMoney() ->Int{
        return self.money
    }
    func getExp() ->Int{
        return self.exp
    }
    func getImg() ->UIImage{
        return self.img
    }
    
    func setHealth(health:Int){
        self.health=health
    }
    func setName(name:String){
        self.name=name
    }
    
    func setMoney(money:Int){
        self.money=money
    }
    func setExp(exp:Int){
        self.exp=exp
    }
    func setImg(img:UIImage){
        self.img=img
    }
    
}


