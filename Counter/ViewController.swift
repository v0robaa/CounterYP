//
//  ViewController.swift
//  Counter
//

import UIKit

class ViewController: UIViewController {
    
    private var counter = 0
    
    func dateAndTimeFormatter(date: Date)->String{
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "dd/MM/yy HH:mm:ss"
        return dateFormatter.string(from: date)
    }
    
    
    @IBOutlet weak var counterRebootButton: UIButton!
    @IBOutlet weak var decreaseButton: UIButton!
    @IBOutlet weak var increaseButton: UIButton!
    @IBOutlet weak var counterOutputLabel: UILabel!
    @IBOutlet weak var logTextView: UITextView!
    
    
    @IBAction func counterRebootButtonDidTap(_ sender: Any) {
        counter = 0
        counterOutputLabel.text = "0"
        logTextView.text.append("\n\(dateAndTimeFormatter(date: Date())): значение сброшено")
    }
    
    @IBAction func decreaseButtonDidTap(_ sender: Any) {
        if counter > 0{
            counter -= 1
            counterOutputLabel.text = String(counter)
            logTextView.text.append("\n\(dateAndTimeFormatter(date: Date())): значение изменено на -1")
        }
        else{
            logTextView.text.append("\n\(dateAndTimeFormatter(date: Date())): попытка уменьшить значение счетчика ниже 0")
        }
    }
    
    
    @IBAction func increaseButtonDidTap(_ sender: Any) {
        counter += 1
        counterOutputLabel.text = String(counter)
        logTextView.text.append("\n\(dateAndTimeFormatter(date: Date())): значение изменено на +1")
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

