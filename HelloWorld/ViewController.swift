//
//  ViewController.swift
//  HelloWorld
//
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = UIColor.black
    }

    @IBAction func showMessage(sender: UIButton) {
        let alertController = UIAlertController(title: "Welcome to SemaphoreCi", message: "Hello World", preferredStyle: UIAlertController.Style.alert)
        alertController.addAction(UIAlertAction(title: "OK", style: UIAlertAction.Style.default, handler: nil))
        present(alertController, animated: true, completion: nil)
    }
}
