//
//  FourthVC.swift
//  HWKurylenka_14_NavigationApp
//
//  Created by MACBOOK PRO 15,4 2017 ROK on 22/08/2023.
//

import UIKit

class FourthVC: UIViewController {

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
        //сделаем переход назад через unwind segua
        performSegue(withIdentifier: "unwindToFirstVC", sender: nil)

    }

}
