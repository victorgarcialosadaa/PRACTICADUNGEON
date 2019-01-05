//
//  Monsters.swift
//  PRACTICADUNGEON
//
//  Created by DAM on 16/11/2018.
//  Copyright © 2018 DAM. All rights reserved.
//

import Foundation
import UIKit
class Monsters{
    var health:Int = 0
    var atk:Int = 0
    var name:String = ""
    var moneyValue:Int = 0
    var expValue:Int = 0
    var img:UIImage
    
    
    init(name:String,  img:UIImage, health:Int, atk:Int,moneyValue:Int, expValue:Int){
        self.name = name
         self.img = img
        self.health = health
        self.moneyValue = moneyValue
        self.expValue = expValue
       self.atk = atk
    }
    func getHealth() ->Int{
        return self.health
    }
    func getName() ->String{
        return self.name
    }
    func getMoneyValue() ->Int{
        return self.moneyValue
    }
    func getExp() ->Int{
        return self.expValue
    }
    func getImg() ->UIImage{
        return self.img
    }
    func getAtk() ->Int{
        return self.atk
    }
    func setHealth(health:Int){
        self.health=health
    }
    func setName(name:String){
        self.name=name
    }
    func setMoneyValue(moneyValue:Int){
        self.moneyValue=moneyValue
    }
    func setExp(expValue:Int){
        self.expValue=expValue
    }
    func setImg(img:UIImage){
        self.img=img
    }
    
}
