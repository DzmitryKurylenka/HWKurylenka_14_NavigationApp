//
//  FirstVC.swift
//  HWKurylenka_14_NavigationApp
//
//  Created by MACBOOK PRO 15,4 2017 ROK on 21/08/2023.
//

import UIKit

class FirstVC: UIViewController {

    @IBOutlet weak var labelText: UILabel!
    
    
    @IBAction func goToSecondVC(_ sender: UIButton) {
        // для того чтобы сделать переход по Сеге нужно вначале в идентифайер сделать уникальный идентификатор Сеги и инициализируем переход с помощью объекта UISegue
        performSegue(withIdentifier: "goToSecondVC", sender: "Hi from FirstVC")
        
    }
    
    @IBAction func goToThirdVC(_ sender: UIButton) {
        let vc = ThirdVC(nibName: "ThirdVC", bundle: nil)
        vc.dataString = "Hi from FirstVC"
        vc.navigationItem.title = "XIB VC"
        
        // для отображения контроллера pushViewController
        navigationController?.pushViewController(vc, animated: true)
    }
    
    @IBAction func goToFourthWithoutSegue() {
        let storyboard = UIStoryboard(name: "secondStoryboard", bundle: nil)
        // через сториборд вытащим VC
        guard let fouthVC = storyboard.instantiateViewController(withIdentifier: "FourthVC") as? FourthVC else {return}
        fouthVC.navigationItem.title = "Fourth VC"
        fouthVC.dataString = "Hi from FirstVC"
        
        // для отображения контроллера pushViewController
        navigationController?.pushViewController(fouthVC, animated: true)
            // для отображения в виде модального окна
            //present(fouthVC, animated: true)
    }
    
    
    @IBAction func goToFourthWithSegue() {
        
    }
    
    // передача данных назад с помощью обратной сеги unwind
    @IBAction func unwindToFirstVC(_ unwindSegue: UIStoryboardSegue) {
        if let fouthVC = unwindSegue.source as? FourthVC {
            labelText.text = fouthVC.dataString
        }

    }
    
    
    // для того чтобы передать данные во второй контроллер нужно раскоментировать нижележащий комментарий
    
    // MARK: - Navigation


    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "goToSecondVC",
           let secondVC = segue.destination as? SecondVC,
           let dataString = sender as? String {
            secondVC.dataString = dataString
            secondVC.firstVC = self // это и есть указатель, указывающий на себя
        }
    }
    

}
