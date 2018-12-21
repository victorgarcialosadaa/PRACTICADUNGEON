//
//  Collections.swift
//  PRACTICADUNGEON
//
//  Created by DAM on 12/12/2018.
//  Copyright © 2018 DAM. All rights reserved.
//

import Foundation
import UIKit
var chosenHero:Heroes?

    

var listaHeroes:[Heroes]=[
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
    
var listaItems:[Items] = [
    Items(name: "cheapArmor", atk:1 , def:1, mag:1,
          lck:1, img: UIImage(named:"armour")!),
    Items(name: "armour2", atk:1 , def:1, mag:1,
          lck:1, img: UIImage(named:"armour2")!),
    Items(name: "armour3", atk:1 , def:1, mag:1,
          lck:1, img: UIImage(named:"armour3")!),
    Items(name: "arrow", atk:1 , def:1, mag:1,
          lck:1, img: UIImage(named:"arrow")!),
    Items(name: "arrow2", atk:1 , def:1, mag:1,
          lck:1, img: UIImage(named:"arrow2")!),
    Items(name: "arrow3", atk:1 , def:1, mag:1,
          lck:1, img: UIImage(named:"arrow3")!),
    Items(name: "boots", atk:1 , def:1, mag:1,
          lck:1, img: UIImage(named:"boots")!),
    Items(name: "boots2", atk:1 , def:1, mag:1,
          lck:1, img: UIImage(named:"boots2")!),
    Items(name: "cap", atk:1 , def:1, mag:1,
          lck:1, img: UIImage(named:"cap")!),
    Items(name: "cap2", atk:1 , def:1, mag:1,
          lck:1, img: UIImage(named:"cap2")!),
    Items(name: "cap3", atk:1 , def:1, mag:1,
          lck:1, img: UIImage(named:"cap3")!),
    Items(name: "helmet1", atk:1 , def:1, mag:1,
          lck:1, img: UIImage(named:"helmet1")!),
    Items(name: "helmet2", atk:1 , def:1, mag:1,
          lck:1, img: UIImage(named:"helmet2")!),
    Items(name: "helmet3", atk:1 , def:1, mag:1,
          lck:1, img: UIImage(named:"helmet3")!),
    Items(name: "helmet4", atk:1 , def:1, mag:1,
          lck:1, img: UIImage(named:"helmet4")!),
    Items(name: "helmet5", atk:1 , def:1, mag:1,
          lck:1, img: UIImage(named:"helmet5")!),
    Items(name: "necklace", atk:1 , def:1, mag:1,
          lck:1, img: UIImage(named:"necklace")!),
    Items(name: "potion", atk:1 , def:1, mag:1,
          lck:1, img: UIImage(named:"potion")!),
    Items(name: "potion2", atk:1 , def:1, mag:1,
          lck:1, img: UIImage(named:"potion2")!),
    Items(name: "ring", atk:1 , def:1, mag:1,
          lck:1, img: UIImage(named:"ring")!),
    Items(name: "ring2", atk:1 , def:1, mag:1,
          lck:1, img: UIImage(named:"ring2")!),
    Items(name: "scepter", atk:1 , def:1, mag:1,
          lck:1, img: UIImage(named:"scepter")!),
    Items(name: "scepter2", atk:1 , def:1, mag:1,
          lck:1, img: UIImage(named:"scepter2")!),
    Items(name: "scepter3", atk:1 , def:1, mag:1,
          lck:1, img: UIImage(named:"scepter3")!),
    Items(name: "shield", atk:1 , def:1, mag:1,
          lck:1, img: UIImage(named:"shield")!),
    Items(name: "shield2", atk:1 , def:1, mag:1,
          lck:1, img: UIImage(named:"shield2")!),
    Items(name: "shield3", atk:1 , def:1, mag:1,
          lck:1, img: UIImage(named:"shield3")!),
    Items(name: "shield3", atk:1 , def:1, mag:1,
          lck:1, img: UIImage(named:"shield3")!),
    Items(name: "shield4", atk:1 , def:1, mag:1,
          lck:1, img: UIImage(named:"shield4")!),
    Items(name: "sword1", atk:1 , def:1, mag:1,
          lck:1, img: UIImage(named:"sword1")!),
    Items(name: "sword2", atk:1 , def:1, mag:1,
          lck:1, img: UIImage(named:"sword2")!),
    Items(name: "sword3", atk:1 , def:1, mag:1,
          lck:1, img: UIImage(named:"sword3")!),
    Items(name: "sword4", atk:1 , def:1, mag:1,
          lck:1, img: UIImage(named:"sword4")!)
]
    
    var listaMonstruos:[Monsters] = [
        Monsters(name: "Golem", img: UIImage(named: "monster1")!,health: 4, moneyValue: 15, expValue: 10),
        Monsters(name: "Treant", img: UIImage(named: "monster2")!,health: 4, moneyValue: 15, expValue: 10),
        Monsters(name: "Rat", img: UIImage(named: "monster3")!,health: 4, moneyValue: 15, expValue: 10),
        Monsters(name: "Crab", img: UIImage(named: "monster4")!,health: 4, moneyValue: 15, expValue: 10),
        Monsters(name: "Spider", img: UIImage(named: "monster5")!,health: 4, moneyValue: 15, expValue: 10),
        Monsters(name: "Thief", img: UIImage(named: "monster6")!,health: 4, moneyValue: 15, expValue: 10),
        Monsters(name: "Beast", img: UIImage(named: "monster7")!,health: 4, moneyValue: 15, expValue: 10),
        Monsters(name: "Lime", img: UIImage(named: "monster8")!,health: 4, moneyValue: 15, expValue: 10),
        Monsters(name: "Hypnofrog", img: UIImage(named: "monster9")!,health: 4, moneyValue: 15, expValue: 10),
        Monsters(name: "Armored Beetle", img: UIImage(named: "monster10")!,health: 4, moneyValue: 15, expValue: 10),
        Monsters(name: "RuneBeing", img: UIImage(named: "monster11")!,health: 4, moneyValue: 15, expValue: 10),
        Monsters(name: "Forest sage", img: UIImage(named: "monster12")!,health: 4, moneyValue: 15, expValue: 10),
        Monsters(name: "Grandmaster", img: UIImage(named: "monster13")!,health: 4, moneyValue: 15, expValue: 10),
        Monsters(name: "Destroyer", img: UIImage(named: "monster14")!,health: 4, moneyValue: 15, expValue: 10),
        Monsters(name: "King", img: UIImage(named: "monster15")!,health: 4, moneyValue: 15, expValue: 10)]


