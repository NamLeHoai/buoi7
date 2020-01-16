//
//  ViewController.swift
//  tinhBMI
//
//  Created by Nam Le on 1/16/20.
//  Copyright © 2020 Nam Le. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var labelHeight: UILabel!
    @IBOutlet weak var labelWeight: UILabel!
    @IBOutlet weak var labelBMI: UILabel!
    @IBOutlet weak var textFieldHeight: UITextField!
    @IBOutlet weak var textFieldWeight: UITextField!
    @IBOutlet weak var resultLabel: UILabel!
    @IBOutlet weak var advideLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        textFieldHeight.placeholder = "nhập chiều cao của bạn"
        textFieldWeight.placeholder = "nhập cân nặng của bạn"
        
    }

    @IBAction func buttonResult(_ sender: Any) {
        let h = Double(textFieldHeight.text ?? " ") ?? 0
        let w = Double(textFieldWeight.text ?? " ") ?? 0
        var result = w/(h*h) * 10000
        resultLabel.text = "chỉ số BMI của bạn là: \(result)"
        if result < 18.5 {
            advideLabel.text = "bạn nên ăn nhiều hơn"
        }else if result > 18.5 && result < 22.99{
            advideLabel.text = "bạn có 1 cơ thể khoẻ mạnh, hãy duy trì"
        }else if result >= 23 && result < 24.99{
            advideLabel.text = "bạn nên giảm cân 1 chút"
        }else if result >= 25 && result < 29.99{
            advideLabel.text = "béo phì độ 1, bạn cần giảm cân ngay"
        }else if result >= 30  && result < 39.99{
            advideLabel.text = "béo phì độ 2, nguy hiểm"
        }else if result >= 40{
            advideLabel.text = "béo phì độ 3, cực nguy hiểm"
        }
        
    }
    
}

