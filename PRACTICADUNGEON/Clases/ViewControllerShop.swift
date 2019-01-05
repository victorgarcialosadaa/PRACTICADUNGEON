import UIKit


class ViewControllerShop : UIViewController, UIPickerViewDelegate, UIPickerViewDataSource {
    
    var itemList:[Items]=listaItems
    
    @IBOutlet weak var pickerView: UIPickerView!
    
    
    func numberOfComponents(in pickerView: UIPickerView) -> (Int) {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return listaItems.count
    }
    
    func pickerView(_ pickerView: UIPickerView, viewForRow row: Int, forComponent component: Int, reusing view: UIView?) -> UIView {
        
        let myView:UIView = UIView(frame: CGRect(x: 0, y: 0, width: 100, height: 100))
        
        let myImageView:UIImageView = UIImageView(frame: CGRect(x: -100, y: 0, width: 100, height: 100))
        
        let imagen:UIImage = listaItems[row].img
        myImageView.image = imagen
        
        myView.addSubview(myImageView)
        
        let myLabel:UILabel = UILabel(frame: CGRect(x: 20, y: -40, width: pickerView.rowSize(forComponent: 0).width, height: 100))
        
        let myLabel2:UILabel = UILabel(frame: CGRect(x: 120, y: -40, width: pickerView.rowSize(forComponent: 0).width, height: 100))
        
        let myLabelStat1:UILabel = UILabel(frame: CGRect(x: 20, y: -5, width: pickerView.rowSize(forComponent: 0).width, height: 100))
        
        let myLabelStat2:UILabel = UILabel(frame: CGRect(x: 120, y: -5, width: pickerView.rowSize(forComponent: 0).width, height: 100))
        
         let myLabelStat3:UILabel = UILabel(frame: CGRect(x: 20, y: 25, width: pickerView.rowSize(forComponent: 0).width, height: 100))
        
        let myLabelStat4:UILabel = UILabel(frame: CGRect(x: 120, y: 25, width: pickerView.rowSize(forComponent: 0).width, height: 100))
        
        //Asignamos propiedades a nuestra label
        myLabel.textColor = UIColor.black
        myLabel.font = UIFont(name: "Verdana", size: 15)
        myLabel.text = listaItems[row].name
        myView.addSubview(myLabel)
        
        myLabel2.textColor = UIColor.black
        myLabel2.font = UIFont(name: "Verdana", size: 15)
        myLabel2.text = String("Precio: \(listaItems[row].price)")
        myView.addSubview(myLabel2)
      
        myLabelStat1.textColor = UIColor.black
        myLabelStat1.font = UIFont(name: "Verdana", size: 15)
        myLabelStat1.text = String("ATK: \(listaItems[row].atk)")
        myView.addSubview(myLabelStat1)
        
        myLabelStat2.textColor = UIColor.black
        myLabelStat2.font = UIFont(name: "Verdana", size: 15)
        myLabelStat2.text = String("DEF: \(listaItems[row].def)")
        myView.addSubview(myLabelStat2)
        
        myLabelStat3.textColor = UIColor.black
        myLabelStat3.font = UIFont(name: "Verdana", size: 15)
        myLabelStat3.text = String("DEF: \(listaItems[row].mag)")
        myView.addSubview(myLabelStat3)
        
        myLabelStat4.textColor = UIColor.black
        myLabelStat4.font = UIFont(name: "Verdana", size: 15)
        myLabelStat4.text = String("LCK: \(listaItems[row].lck)")
        myView.addSubview(myLabelStat4)
        return myView
        
    }
    
    @IBOutlet weak var lblColor: UILabel!
    
    
    /*@IBAction func btnClick(_ sender: Any) {
        
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
        
    }*/
    
  
    func pickerView(_ pickerView: UIPickerView, rowHeightForComponent component: Int) -> CGFloat {
        return 100.0
    }
    
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return listaItems[row].name
        
    }

    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        pickerView.delegate = self
        pickerView.dataSource = self
    }
    
    
}

