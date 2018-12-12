//
//  Shop.swift
//  PRACTICADUNGEON
//
//  Created by DAM on 05/12/2018.
//  Copyright © 2018 DAM. All rights reserved.
//

import UIKit

    class Shop: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource {
      
        
        var listaItems:[Item] = [
            Item(name: "cheapArmor", atk:1 , def:1, mag:1,
                 lck:1, img: UIImage(named:"armour")),
            Item(name: "armour2", atk:1 , def:1, mag:1,
                 lck:1, img: UIImage(named:"armour2")),
            Item(name: "armour3", atk:1 , def:1, mag:1,
                 lck:1, img: UIImage(named:"armour3")),
            Item(name: "arrow", atk:1 , def:1, mag:1,
                 lck:1, img: UIImage(named:"arrow")),
            Item(name: "arrow2", atk:1 , def:1, mag:1,
                 lck:1, img: UIImage(named:"arrow2")),
            Item(name: "arrow3", atk:1 , def:1, mag:1,
                 lck:1, img: UIImage(named:"arrow3")),
            Item(name: "boots", atk:1 , def:1, mag:1,
                 lck:1, img: UIImage(named:"boots")),
            Item(name: "boots2", atk:1 , def:1, mag:1,
                 lck:1, img: UIImage(named:"boots2")),
            Item(name: "cap", atk:1 , def:1, mag:1,
                 lck:1, img: UIImage(named:"cap")),
            Item(name: "cap2", atk:1 , def:1, mag:1,
                 lck:1, img: UIImage(named:"cap2")),
            Item(name: "cap3", atk:1 , def:1, mag:1,
                 lck:1, img: UIImage(named:"cap3")),
            Item(name: "helmet1", atk:1 , def:1, mag:1,
                 lck:1, img: UIImage(named:"helmet1")),
            Item(name: "helmet2", atk:1 , def:1, mag:1,
                 lck:1, img: UIImage(named:"helmet2")),
            Item(name: "helmet3", atk:1 , def:1, mag:1,
                 lck:1, img: UIImage(named:"helmet3")),
            Item(name: "helmet4", atk:1 , def:1, mag:1,
                 lck:1, img: UIImage(named:"helmet4")),
            Item(name: "helmet5", atk:1 , def:1, mag:1,
                 lck:1, img: UIImage(named:"helmet5")),
            Item(name: "necklace", atk:1 , def:1, mag:1,
                 lck:1, img: UIImage(named:"necklace")),
            Item(name: "potion", atk:1 , def:1, mag:1,
                 lck:1, img: UIImage(named:"potion")),
            Item(name: "potion2", atk:1 , def:1, mag:1,
                 lck:1, img: UIImage(named:"potion2")),
            Item(name: "ring", atk:1 , def:1, mag:1,
                 lck:1, img: UIImage(named:"ring")),
            Item(name: "ring2", atk:1 , def:1, mag:1,
                 lck:1, img: UIImage(named:"ring2")),
            Item(name: "scepter", atk:1 , def:1, mag:1,
                 lck:1, img: UIImage(named:"scepter")),
            Item(name: "scepter2", atk:1 , def:1, mag:1,
                 lck:1, img: UIImage(named:"scepter2")),
            Item(name: "scepter3", atk:1 , def:1, mag:1,
                 lck:1, img: UIImage(named:"scepter3")),
            Item(name: "shield", atk:1 , def:1, mag:1,
                 lck:1, img: UIImage(named:"shield")),
            Item(name: "shield2", atk:1 , def:1, mag:1,
                 lck:1, img: UIImage(named:"shield2")),
            Item(name: "shield3", atk:1 , def:1, mag:1,
                 lck:1, img: UIImage(named:"shield3")),
            Item(name: "shield3", atk:1 , def:1, mag:1,
                 lck:1, img: UIImage(named:"shield3")),
            Item(name: "shield4", atk:1 , def:1, mag:1,
                 lck:1, img: UIImage(named:"shield4")),
            Item(name: "sword1", atk:1 , def:1, mag:1,
                 lck:1, img: UIImage(named:"sword1")),
            Item(name: "sword2", atk:1 , def:1, mag:1,
                 lck:1, img: UIImage(named:"sword2")),
            Item(name: "sword3", atk:1 , def:1, mag:1,
                 lck:1, img: UIImage(named:"sword3")),
            Item(name: "sword4", atk:1 , def:1, mag:1,
                 lck:1, img: UIImage(named:"sword4"))
            
        ]
            
            
        
        
        func numberOfComponents(in pickerView: UIPickerView) -> (Int) {
            return 1
        }
        
        func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
            return listaMonstruos.count
        }
        
        func pickerView(_ pickerView: UIPickerView, viewForRow row: Int, forComponent component: Int, reusing view: UIView?) -> UIView {
            
            let myView:UIView = UIView(frame: CGRect(x: 0, y: 0, width: 100, height: 100))
            
            let myImageView:UIImageView = UIImageView(frame: CGRect(x: -100, y: 0, width: 100, height: 100))
            //Creamos nuestra imagen
            let imagen:UIImage = listaMonstruos[row].imagen
            //Asignamos la imagen al contendor de la vista
            myImageView.image = imagen
            
            myView.addSubview(myImageView)
            
            //Creamos nuestra label
            let myLabel:UILabel = UILabel(frame: CGRect(x: 20, y: 0, width: pickerView.rowSize(forComponent: 0).width, height: 100))
            
            //Asignamos propiedades a nuestra label
            myLabel.textColor = UIColor.black
            myLabel.font = UIFont(name: "Verdana", size: 26)
            myLabel.text = listaMonstruos[row].nombre
            myView.addSubview(myLabel)
            
            return myView
            
        }
        
        @IBOutlet weak var lblColor: UILabel!
        
        @IBAction func btnClick(_ sender: Any) {
            
            //var aleatorio = Int(arc4random_uniform(Int32(3)))
            let number = Int.random(in: 0 ..< 3)
            
            pickerView.selectRow(number, inComponent: 0, animated: true)
            
            
            UIView.animate(withDuration: 1, animations:{
                /*Código al entrar*/
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
        
        func pickerView(_ pickerView: UIPickerView, rowHeightForComponent component: Int) -> CGFloat {
            return 100.0
        }
        
        
        func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
            return listaMonstruos[row].nombre
        }
        
        
        
        override func viewDidLoad() {
            super.viewDidLoad()
            // Do any additional setup after loading the view, typically from a nib.
            
            pickerView.delegate = self
            pickerView.dataSource = self
            
            
            
        }
        
        
    }

