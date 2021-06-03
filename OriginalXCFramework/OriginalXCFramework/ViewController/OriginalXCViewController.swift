//
//  OriginalXCViewController.swift
//  OriginalXCFramework
//
//  Created by Shusuke Ota on 2021/6/3.
//

import UIKit

class OriginalXCViewController: UIViewController {

    @IBOutlet weak var screenDescriptionLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.initUI()
    }
}
// MARK: - Private
extension OriginalXCViewController {
    private func initUI() {
        self.screenDescriptionLabel.text = "この画面はOriginal`XC`Frameworkで定義されたものです"
    }
}
// MARK: - Public
extension OriginalXCViewController {
    public static func initViewController() -> UIViewController {
        let s = UIStoryboard(name: String(describing: OriginalXCViewController.self), bundle: Bundle(for: OriginalXCViewController.self))
        let vc = s.instantiateInitialViewController() as! OriginalXCViewController
        return vc
    }
}
