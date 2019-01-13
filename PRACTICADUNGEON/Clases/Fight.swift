//
//  Fight.swift
//  PRACTICADUNGEON
//
//  Created by DAM on 21/12/2018.
//  Copyright © 2018 DAM. All rights reserved.
//

import UIKit


    class Fight: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource {

        @IBOutlet weak var MonsterImg: UIImageView!
       

        @IBOutlet weak var UserImg: UIImageView!
        
        
        @IBOutlet weak var pickerViewMonstruo: UIPickerView!
        
        @IBOutlet weak var pickerViewHeroe: UIPickerView!
        
        var monsterList:[Monsters]=Collections.listaMonstruos
    
        func numberOfComponents(in pickerView: UIPickerView) -> (Int) {
            return 1
        }
        
        func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
            if(pickerView == pickerViewMonstruo){
                return
        Collections.monsterDice.count
                }
            else if (pickerView == pickerViewHeroe)
            {return Collections.userDice.count}
            return 0
        }
        
        
        
        func pickerView(_ pickerView: UIPickerView, viewForRow row: Int, forComponent component: Int, reusing view: UIView?) -> UIView {
            
            //VIEW CONTENEDOR
            let myView:UIView = UIView(frame: CGRect(x: 0, y: 0, width: 100, height: 100))
            
            //CONTENEDOR IMAGEN
            let myImageView:UIImageView = UIImageView(frame: CGRect(x: 10, y: 0, width: 80, height: 80))
            //IMAGEN
            let imagen:UIImage = Collections.monsterDice[row].getImg()
            //Asignamos la imagen al contendor de la vista
            myImageView.image = imagen
            
            myView.addSubview(myImageView)
            
            
            
            let myView2:UIView = UIView(frame: CGRect(x: 0, y: 0, width: 70, height: 70))
           
            let myImageView2:UIImageView = UIImageView(frame: CGRect(x: -10, y: 0, width: 80, height: 80))

            let imagen2:UIImage = Collections.userDice[row].getImg()
           
            myImageView2.image = imagen2
            
        myView2.addSubview(myImageView2)
            
            
            if (pickerView == pickerViewMonstruo){
                return myView
            }else if(pickerView == pickerViewHeroe){
                return myView2
            }
            return myView
        }
        override func viewDidLoad() {
            super.viewDidLoad()
            
            UserImg.image =
                chosenHero.getImg()
            
            MonsterImg.image = monsterSelected?.getImg()
            // Do any additional setup after loading the view, typically from a nib.
            
            pickerViewMonstruo.delegate = self
            pickerViewMonstruo.dataSource = self
            
            pickerViewHeroe.delegate = self
            pickerViewHeroe.dataSource = self
        }
        
        
    }

