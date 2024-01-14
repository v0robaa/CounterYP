//
//  ViewController.swift
//  Counter
//

import UIKit

class ViewController: UIViewController {
    
    private var counter = 0
    
    @IBOutlet private weak var counterRebootButton: UIButton!
    @IBOutlet private weak var decreaseButton: UIButton!
    @IBOutlet private weak var increaseButton: UIButton!
    @IBOutlet private weak var counterOutputLabel: UILabel!
    @IBOutlet private weak var logTextView: UITextView!
    
    private func dateAndTimeFormatter(date: Date)->String{
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "dd/MM/yy HH:mm:ss"
        return dateFormatter.string(from: date)
    }
    
    @IBAction private func counterRebootButtonDidTap(_ sender: Any) {
        counter = 0
        counterOutputLabel.text = "0"
        logTextView.text.append("\n\(dateAndTimeFormatter(date: Date())): значение сброшено")
    }
    
    @IBAction private func decreaseButtonDidTap(_ sender: Any) {
        if counter > 0{
            counter -= 1
            counterOutputLabel.text = String(counter)
            logTextView.text.append("\n\(dateAndTimeFormatter(date: Date())): значение изменено на -1")
        }
        else{
            logTextView.text.append("\n\(dateAndTimeFormatter(date: Date())): попытка уменьшить значение счетчика ниже 0")
        }
    }
    
    
    @IBAction private func increaseButtonDidTap(_ sender: Any) {
        counter += 1
        counterOutputLabel.text = String(counter)
        logTextView.text.append("\n\(dateAndTimeFormatter(date: Date())): значение изменено на +1")
    }

}

