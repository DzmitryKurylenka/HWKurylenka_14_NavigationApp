//
//  SecondVC.swift
//  HWKurylenka_14_NavigationApp
//
//  Created by MACBOOK PRO 15,4 2017 ROK on 21/08/2023.
//

import UIKit

class SecondVC: UIViewController {
    
    // создадим свойство в которое будем передавать данные
    // так как нет initial делаем String опциональным
    var dataString: String?
    
    // со второго сделаем слабую ссылку на первый
    weak var firstVC: FirstVC?
    
    @IBOutlet weak var labelText: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // в момент перехода на SecondVC нужно чтобы данные из dataString установились в лейбл secondLabelText
        labelText.text = dataString
        
    }
    
    @IBAction func closeAction(_ sender: UIButton) {
        firstVC?.navigationItem.title = "Hi from second VC"
        //закрытие модального окна
        dismiss(animated: true)
    }
}

