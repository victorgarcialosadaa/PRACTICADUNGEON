//
//  DUNGEON.swift
//  PRACTICADUNGEON
//
//  Created by DAM on 23/11/2018.
//  Copyright © 2018 DAM. All rights reserved.
//

import UIKit

var monsterSelected:Monsters?

class DUNGEON : UIViewController, UIPickerViewDelegate, UIPickerViewDataSource {

        var monsterList:[Monsters]=listaMonstruos
      
    @IBOutlet weak var pickerView: UIPickerView!
    
    
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
            
            let myLabel:UILabel = UILabel(frame: CGRect(x: 20, y: -30, width: pickerView.rowSize(forComponent: 0).width, height: 100))
        
            
            let myLabel2:UILabel = UILabel(frame: CGRect(x: 120, y: -40, width: pickerView.rowSize(forComponent: 0).width, height: 100))
            
            let myLabelStat1:UILabel = UILabel(frame: CGRect(x: 20, y: -5, width: pickerView.rowSize(forComponent: 0).width, height: 100))
            
            let myLabelStat2:UILabel = UILabel(frame: CGRect(x: 120, y: -5, width: pickerView.rowSize(forComponent: 0).width, height: 100))
            
            let myLabelStat3:UILabel = UILabel(frame: CGRect(x: 20, y: 25, width: pickerView.rowSize(forComponent: 0).width, height: 100))
            
            //Asignamos propiedades a nuestra label
            myLabel.textColor = UIColor.black
            myLabel.font = UIFont(name: "Verdana", size: 15)
            myLabel.text = monsterList[row].name
            myView.addSubview(myLabel)
            
            
            
            myLabelStat1.textColor = UIColor.black
            myLabelStat1.font = UIFont(name: "Verdana", size: 15)
            myLabelStat1.text = String("ATK: \(monsterList[row].atk)")
            myView.addSubview(myLabelStat1)
            
            myLabelStat2.textColor = UIColor.black
            myLabelStat2.font = UIFont(name: "Verdana", size: 15)
            myLabelStat2.text = String("EXP: \(monsterList[row].expValue)")
            myView.addSubview(myLabelStat2)
            
            myLabelStat3.textColor = UIColor.black
            myLabelStat3.font = UIFont(name: "Verdana", size: 15)
            myLabelStat3.text = String("REWARD: \(monsterList[row].moneyValue)")
            myView.addSubview(myLabelStat3)
            
            
            myLabel.textColor = UIColor.black
            myLabel.font = UIFont(name: "Verdana", size: 26)
            myLabel.text = monsterList[row].name
            myView.addSubview(myLabel)
            
            return myView
            
        }
        
        @IBOutlet weak var lblColor: UILabel!
        
        @IBAction func btnClick(_ sender: Any) {
            
            //var aleatorio = Int(arc4random_uniform(Int32(3)))
            let number = Int.random(in: 0 ..< 3)
            
            pickerView.selectRow(number, inComponent: 0, animated: true)
            
            
            UIView.animate(withDuration: 1, animations:{
                self.lblColor.textColor = UIColor.red
            }, completion:{ finished in
                /*Código cuando termina*/
                
                
                
            })
            
            
            UIView.animate(withDuration: 0.6, delay: 0.0, usingSpringWithDamping: 0.6, initialSpringVelocity: 1, options: .curveEaseOut, animations: {}, completion: { finished in
                
                if number % 2 == 0 {
                    self.lblColor.textColor = UIColor.blue
                }else{
                    self.lblColor.textColor = UIColor.orange
                }
                
            }
            )
            
        }
  

    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        monsterSelected = monsterList[row]
    }
    
    
    @IBAction func pickMonster(_ sender: Any) {
    }
    func pickerView(_ pickerView: UIPickerView, rowHeightForComponent component: Int) -> CGFloat {
            return 100.0
        }
        
        
    private func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> Monsters? {
            return monsterList[row]
        }
        
        
        
        override func viewDidLoad() {
            super.viewDidLoad()
            // Do any additional setup after loading the view, typically from a nib.
            
            pickerView.delegate = self
            pickerView.dataSource = self
        }
        
        
    }

