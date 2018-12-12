//
//  ViewController.swift
//  PRACTICADUNGEON
//
//  Created by DAM on 16/11/2018.
//  Copyright © 2018 DAM. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBAction func chooseHero1(_ sender: UIButton) {
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
    }
    override func viewDidLoad() {
       
        
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
}

