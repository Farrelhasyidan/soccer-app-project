//
//  ViewController.swift
//  kalkulator
//
//  Created by Farrel hasyidan on 11/11/20.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var inputPanjang: UITextField!
    
    @IBOutlet weak var inputLebar: UITextField!
    
    @IBOutlet weak var inputHasil: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    func hitung(arimatika: String){
        if inputPanjang.text == "" || inputLebar.text == ""{
        inputHasil.text = "Input tidak boleh kosong"
    }
    else{
       let nilaiPanjang = Double(inputPanjang.text!)
       let nilaiLebar = Double(inputLebar.text!)
        
        var jumlah : Double?
        
        switch arimatika {
        case "+":
            jumlah = nilaiPanjang! + nilaiLebar!
        case "-":
            jumlah = nilaiPanjang! - nilaiLebar!
        case "*":
            jumlah = nilaiPanjang! * nilaiLebar!
        case "/":
            jumlah = nilaiPanjang! / nilaiLebar!
        
        default:
            break
        }
        
        inputHasil.text = String(jumlah!)
        
    }


}
    
    @IBAction func btnTambah(_ sender: UIButton) {
        hitung(arimatika: "+")
    }
    
    @IBAction func btnKurang(_ sender: UIButton) {
        hitung(arimatika: "-")
    }
    
    @IBAction func btnKali(_ sender: UIButton) {
        hitung(arimatika: "*")
    }
    
    @IBAction func btnBagi(_ sender: UIButton) {
        hitung(arimatika: "/")
    }
}
