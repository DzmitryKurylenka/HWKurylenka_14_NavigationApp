//
//  ThirdVC.swift
//  HWKurylenka_14_NavigationApp
//
//  Created by MACBOOK PRO 15,4 2017 ROK on 21/08/2023.
//

import UIKit

class ThirdVC: UIViewController {

    // создадим свойство в которое будем передавать данные
    // так как нет initial делаем String опциональным
    var dataString: String?
    
    @IBOutlet weak var labelText: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // в момент перехода на SecondVC нужно чтобы данные из dataString установились в лейбл secondLabelText
        labelText.text = dataString
        
    }
    
    @IBAction func backAction(_ sender: UIButton) {
        //сделаем back используя navigationVC
        //popViewController возврат к предыдущему VC
        navigationController?.popViewController(animated: true)
        //popViewController возврат к первому VC
        //navigationController?.popToRootViewController(animated: true)
        
        //popToViewController возврат к необходимому VC
        //navigationController?.popToViewController(UIViewController, animated: true)
    }

}
