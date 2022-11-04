//
//  ViewController.swift
//  Lottozahlen
//
//  Created by jenkman Shahin on 04.11.22.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var zahlen: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func zahlengenerieren(_ sender: Any) {
        var gewinnzahlen = lottozahlen()
        
        zahlen.text = "\(gewinnzahlen)"
        
    }
    func lottozahlen() -> [Int]{
        var list = Array(1...49)
        var gezogenezahlen = [Int]()
        
        while(gezogenezahlen.count <= 5){
            let randomzahl = list.randomElement()!
            gezogenezahlen.append(randomzahl)
            if let index = list.firstIndex(of: randomzahl){
                list.remove(at: index)
            }
        }
        gezogenezahlen.sort()
        
        return gezogenezahlen
    }
}


