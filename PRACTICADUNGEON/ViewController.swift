//
//  ViewController.swift
//  PRACTICADUNGEON
//
//  Created by DAM on 16/11/2018.
//  Copyright © 2018 DAM. All rights reserved.
//

import UIKit
var chosenHero:Heroes?
class ViewController: UIViewController {
    
   /* @IBAction func chooseHero1(_ sender: UIButton) {
        if sender.tag == 1 {
            chosenHero=listaHeroes[0]
        }
    }
    @IBAction func chooseHero2(_ sender: UIButton) {
  if sender.tag == 2 {
    chosenHero=listaHeroes[1]
        }    }
    
    @IBAction func chooseHero3(_ sender: UIButton) {
  if sender.tag == 3 {
    chosenHero=listaHeroes[2]
        }                                                                                        
    }*/
    
    
    
    @IBAction func pickHero(_ sender: UIButton) {
    switch(sender.tag){case 1:
        chosenHero=listaHeroes[0]
        break;
        
    case 2: chosenHero=listaHeroes[1]
    break;
        
    case 3: chosenHero=listaHeroes[2]
    break;
        
    default:
        print("error picking hero")
        
        }
        }
        
    
    
    
    override func viewDidLoad() {
        
        
       
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
}

