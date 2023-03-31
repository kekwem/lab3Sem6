//
//  ViewController.swift
//  lab3
//
//  Created by DA on 03/03/2023.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


    @IBOutlet weak var firstTextField: UITextField!
    
    @IBOutlet weak var secondTextField: UITextField!
    
    @IBOutlet weak var resultTextField: UITextField!
    
    @IBOutlet weak var dodadButton: UIButton!
    
    @IBOutlet weak var odejmijButton: UIButton!
    
    @IBOutlet weak var mnozButton: UIButton!
    
    @IBOutlet weak var podzieliButton: UIButton!
    
    @IBOutlet weak var clearButton: UIButton!
    
    func sprawdzLiczby() -> (first: Int, second: Int)?{
        guard let str = firstTextField.text, let first = Int(str) else{
            return nil
        }
        guard let str = secondTextField.text, let second = Int(str) else{
            return nil
        }
        return (first, second)
    }
    
    @IBAction func dodajButtonClick(_ sender: Any) {
        guard let result = sprawdzLiczby() else{
            resultTextField.text = "Blad"
            return
        }
        resultTextField.text = String(result.first + result.second)
    }
    
    @IBAction func odejmijButtonClick(_ sender: Any) {
        guard let result = sprawdzLiczby() else{
            resultTextField.text = "Blad"
            return
        }
        resultTextField.text = String(result.first - result.second)
    }
    
    @IBAction func mnozButtonClick(_ sender: Any) {
        guard let result = sprawdzLiczby() else{
            resultTextField.text = "Blad"
            return
        }
        resultTextField.text = String(result.first * result.second)
    }
    
    @IBAction func podzieliButtonClick(_ sender: Any) {
        guard let result = sprawdzLiczby() else{
            resultTextField.text = "Blad"
            return
        }
        resultTextField.text = String(result.first / result.second)
    }
    
    @IBAction func clearButtonClick(_ sender: Any) {
        firstTextField.text = ""
        secondTextField.text = ""
        resultTextField.text = ""
    }
}

