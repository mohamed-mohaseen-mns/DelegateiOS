//
//  ViewController.swift
//  DelegateiOS
//
//  Created by MnsMac3 on 07/02/2023.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var lbDes: UILabel!
    @IBOutlet weak var btnAct: UIButton! {
        didSet {
            self.btnAct.addTarget(self, action: #selector(onTapOfButton), for: .touchUpInside)
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @objc private func onTapOfButton() {
        let controller = self.storyboard?.instantiateViewController(withIdentifier: "DummyController") as! DummyController
        controller.delegate = self
        self.present(controller, animated: true)
    }

}

extension ViewController : DummyDelegate {
    func onTapClcikMe(messgae: String) {
        self.lbDes.text = messgae
    }
}
