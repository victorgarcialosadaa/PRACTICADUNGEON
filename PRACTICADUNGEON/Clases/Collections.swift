//
//  Collections.swift
//  PRACTICADUNGEON
//
//  Created by DAM on 12/12/2018.
//  Copyright © 2018 DAM. All rights reserved.
//

import Foundation
import UIKit

    
class Collections{
 static var listaHeroes:[Heroes]=[
        Heroes(health:5,
               name:"hero1",
               img: UIImage (named:"heroe1")!),
        Heroes(health:5,
               name:"hero2",
               img: UIImage (named:"heroe2")!),
        Heroes(health:5,
               name:"hero3",
               img: UIImage (named:"heroe3")!)
        
        ]
    
static var listaItems:[Items] = [
    Items(name: "cheapArmor", atk:1 , def:1, mag:1,
          lck:1, img: UIImage(named:"armour")!,price:5),
    Items(name: "armour2", atk:1 , def:1, mag:1,
          lck:1, img: UIImage(named:"armour2")!,price:5),
    Items(name: "armour3", atk:1 , def:1, mag:1,
          lck:1, img: UIImage(named:"armour3")!,price:5),
    Items(name: "arrow", atk:1 , def:1, mag:1,
          lck:1, img: UIImage(named:"arrow")!,price:5),
    Items(name: "arrow2", atk:1 , def:1, mag:1,
          lck:1, img: UIImage(named:"arrow2")!,price:5),
    Items(name: "arrow3", atk:1 , def:1, mag:1,
          lck:1, img: UIImage(named:"arrow3")!,price:5),
    Items(name: "boots", atk:1 , def:1, mag:1,
          lck:1, img: UIImage(named:"boots")!,price:5),
    Items(name: "boots2", atk:1 , def:1, mag:1,
          lck:1, img: UIImage(named:"boots2")!,price:5),
    Items(name: "cap", atk:1 , def:1, mag:1,
          lck:1, img: UIImage(named:"cap")!,price:5),
    Items(name: "cap2", atk:1 , def:1, mag:1,
          lck:1, img: UIImage(named:"cap2")!,price:5),
    Items(name: "cap3", atk:1 , def:1, mag:1,
          lck:1, img: UIImage(named:"cap3")!,price:5),
    Items(name: "helmet1", atk:1 , def:1, mag:1,
          lck:1, img: UIImage(named:"helmet1")!,price:5),
    Items(name: "helmet2", atk:1 , def:1, mag:1,
          lck:1, img: UIImage(named:"helmet2")!,price:5),
    Items(name: "helmet3", atk:1 , def:1, mag:1,
          lck:1, img: UIImage(named:"helmet3")!,price:5),
    Items(name: "helmet4", atk:1 , def:1, mag:1,
          lck:1, img: UIImage(named:"helmet4")!,price:5),
    Items(name: "helmet5", atk:1 , def:1, mag:1,
          lck:1, img: UIImage(named:"helmet5")!,price:5),
    Items(name: "necklace", atk:1 , def:1, mag:1,
          lck:1, img: UIImage(named:"necklace")!,price:5),
    Items(name: "potion", atk:1 , def:1, mag:1,
          lck:1, img: UIImage(named:"potion")!,price:5),
    Items(name: "potion2", atk:1 , def:1, mag:1,
          lck:1, img: UIImage(named:"potion2")!,price:5),
    Items(name: "ring", atk:1 , def:1, mag:1,
          lck:1, img: UIImage(named:"ring")!,price:5),
    Items(name: "ring2", atk:1 , def:1, mag:1,
          lck:1, img: UIImage(named:"ring2")!,price:5),
    Items(name: "scepter", atk:1 , def:1, mag:1,
          lck:1, img: UIImage(named:"scepter")!,price:5),
    Items(name: "scepter2", atk:1 , def:1, mag:1,
          lck:1, img: UIImage(named:"scepter2")!,price:5),
    Items(name: "scepter3", atk:1 , def:1, mag:1,
          lck:1, img: UIImage(named:"scepter3")!,price:5),
    Items(name: "shield", atk:1 , def:1, mag:1,
          lck:1, img: UIImage(named:"shield")!,price:10),
    Items(name: "shield2", atk:1 , def:1, mag:1,
          lck:1, img: UIImage(named:"shield2")!,price:15),
    Items(name: "shield3", atk:1 , def:1, mag:1,
          lck:1, img: UIImage(named:"shield3")!,price:5),
    Items(name: "shield3", atk:1 , def:1, mag:1,
          lck:1, img: UIImage(named:"shield3")!,price:20),
    Items(name: "shield4", atk:1 , def:1, mag:1,
          lck:1, img: UIImage(named:"shield4")!,price:31),
    Items(name: "sword1", atk:1 , def:1, mag:1,
          lck:1, img: UIImage(named:"sword1")!,price:52),
    Items(name: "sword2", atk:1 , def:1, mag:1,
          lck:1, img: UIImage(named:"sword2")!,price:52),
    Items(name: "sword3", atk:1 , def:1, mag:1,
          lck:1, img: UIImage(named:"sword3")!,price:10),
    Items(name: "sword4", atk:1 , def:1, mag:1,
          lck:1, img: UIImage(named:"sword4")!,price:5)
]
    
    static var listaMonstruos:[Monsters] = [
        Monsters(name: "Golem", img: UIImage(named: "monster1")!,health: 4, atk: 10, moneyValue: 15, expValue: 10),
        Monsters(name: "Treant", img: UIImage(named: "monster2")!,health: 4,atk: 10,  moneyValue: 15, expValue: 10),
        Monsters(name: "Rat", img: UIImage(named: "monster3")!,health: 4, atk: 10, moneyValue: 15, expValue: 10),
        Monsters(name: "Crab", img: UIImage(named: "monster4")!,health: 4,atk: 10,  moneyValue: 15, expValue: 10),
        Monsters(name: "Spider", img: UIImage(named: "monster5")!,health: 4, atk: 10, moneyValue: 15, expValue: 10),
        Monsters(name: "Thief", img: UIImage(named: "monster6")!,health: 4, atk: 10, moneyValue: 15, expValue: 10),
        Monsters(name: "Beast", img: UIImage(named: "monster7")!,health: 4,atk: 10,  moneyValue: 15, expValue: 10),
        Monsters(name: "Lime", img: UIImage(named: "monster8")!,health: 4, atk: 10, moneyValue: 15, expValue: 10),
        Monsters(name: "Hypnofrog", img: UIImage(named: "monster9")!,health: 4,atk: 10,  moneyValue: 15, expValue: 10),
        Monsters(name: "Armored Beetle", img: UIImage(named: "monster10")!,health: 4,atk: 10,  moneyValue: 15, expValue: 10),
        Monsters(name: "Forest sage", img: UIImage(named: "monster12")!,health: 4,atk: 10,  moneyValue: 15, expValue: 10),
        Monsters(name: "Grandmaster", img: UIImage(named: "monster13")!,health: 4,atk: 10,  moneyValue: 15, expValue: 10),
        Monsters(name: "Destroyer", img: UIImage(named: "monster14")!,health: 4,atk: 10,  moneyValue: 15, expValue: 10),
        Monsters(name: "King", img: UIImage(named: "monster15")!,health: 4, atk: 10, moneyValue: 15, expValue: 10)]


static var monsterDice: [Dice] =
    [
        Dice(value:1, img:UIImage(named: "dice1")!),
         Dice(value:2, img:UIImage(named: "dice2")!),
          Dice(value:3, img:UIImage(named: "dice3")!),
           Dice(value:4, img:UIImage(named: "dice4")!),
            Dice(value:5, img:UIImage(named: "dice5")!),
             Dice(value:6, img:UIImage(named: "dice6")!),
              Dice(value:7, img:UIImage(named: "dice7")!),
               Dice(value:8, img:UIImage(named: "dice8")!),
                Dice(value:9, img:UIImage(named: "dice9")!),
                 Dice(value:10, img:UIImage(named: "dice10")!),
                  Dice(value:11, img:UIImage(named: "dice11")!),
                   Dice(value:12, img:UIImage(named: "dice12")!)
]


static var userDice: [Dice] =
    [
        Dice(value:1, img:UIImage(named: "dice1U")!),
        Dice(value:2, img:UIImage(named: "dice2U")!),
        Dice(value:3, img:UIImage(named: "dice3U")!),
        Dice(value:4, img:UIImage(named: "dice4U")!),
        Dice(value:5, img:UIImage(named: "dice5U")!),
        Dice(value:6, img:UIImage(named: "dice6U")!),
        Dice(value:7, img:UIImage(named: "dice7U")!),
        Dice(value:8, img:UIImage(named: "dice8U")!),
        Dice(value:9, img:UIImage(named: "dice9U")!),
        Dice(value:10, img:UIImage(named: "dice10U")!),
        Dice(value:11, img:UIImage(named: "dice11U")!),
        Dice(value:12, img:UIImage(named: "dice12U")!)
]
}
