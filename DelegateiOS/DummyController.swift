//
//  DummyController.swift
//  DelegateiOS
//
//  Created by MnsMac3 on 07/02/2023.
//

import UIKit

protocol DummyDelegate {
    func onTapClcikMe(messgae : String)
}

class DummyController: UIViewController {

    @IBOutlet weak var btnClickMe: UIButton! {
        didSet {
            self.btnClickMe.addTarget(self, action: #selector(onTapOfClickMe), for: .touchUpInside)
        }
    }
    
    var delegate : DummyDelegate? = nil
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @objc private func onTapOfClickMe() {
        delegate?.onTapClcikMe(messgae: "Hi I've been clicked from Second Controller")
        self.dismiss(animated: true)
    }

}
