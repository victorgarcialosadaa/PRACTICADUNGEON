//
//  Fight.swift
//  PRACTICADUNGEON
//
//  Created by DAM on 21/12/2018.
//  Copyright © 2018 DAM. All rights reserved.
//

import UIKit


    class Fight: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource {

        
        
        @IBOutlet weak var pickerViewMonstruo: UIPickerView!
        
        @IBOutlet weak var pickerViewHeroe: UIPickerView!
        
        var monsterList:[Monsters]=listaMonstruos
        
        func numberOfComponents(in pickerView: UIPickerView) -> (Int) {
            return 1
        }
        
        func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
            return monsterList.count
        }
        
        func pickerView(_ pickerView: UIPickerView, viewForRow row: Int, forComponent component: Int, reusing view: UIView?) -> UIView {
            
            let myView:UIView = UIView(frame: CGRect(x: 0, y: 0, width: 100, height: 100))
            
            let myImageView:UIImageView = UIImageView(frame: CGRect(x: -100, y: 0, width: 100, height: 100))
            
            let imagen:UIImage = monsterList[row].img
            myImageView.image = imagen
            
            myView.addSubview(myImageView)
            
            let myLabel:UILabel = UILabel(frame: CGRect(x: 20, y: 0, width: pickerView.rowSize(forComponent: 0).width, height: 100))
            
            //Asignamos propiedades a nuestra label
            myLabel.textColor = UIColor.black
            myLabel.font = UIFont(name: "Verdana", size: 26)
            myLabel.text = monsterList[row].name
            myView.addSubview(myLabel)
            
            return myView
            
        }
        
        @IBOutlet weak var lblColor: UILabel!
        
        func pickerView(_ pickerView: UIPickerView, rowHeightForComponent component: Int) -> CGFloat {
            return 100.0
        }
        
        
        func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
            return monsterList[row].name
        }
        
        
        
        override func viewDidLoad() {
            super.viewDidLoad()
            // Do any additional setup after loading the view, typically from a nib.
            
            pickerViewMonstruo.delegate = self
            pickerViewMonstruo.dataSource = self
            
            pickerViewHeroe.delegate = self
            pickerViewHeroe.dataSource = self
        }
        
        
    }

