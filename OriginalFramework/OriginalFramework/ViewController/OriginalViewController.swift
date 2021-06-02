//
//  OriginalViewController.swift
//  OriginalFramework
//
//  Created by Shusuke Ota on 2021/6/2.
//

import UIKit

public class OriginalViewController: UIViewController {

    @IBOutlet weak var screenDescriptionLabel: UILabel!
    
    override public func viewDidLoad() {
        super.viewDidLoad()
        self.initUI()
    }
}
// MARK: - Private
extension OriginalViewController {
    private func initUI() {
        self.screenDescriptionLabel.text = "この画面はOriginalFrameworkで定義されたものです"
    }
}
// MARK: - Public
extension OriginalViewController {
    public func printLabel() {
        if let text = self.screenDescriptionLabel.text {
            print(text)
        } else {
            print("Labelの読み込みに失敗しました")
        }
    }
    public func initViewController() -> OriginalViewController {
        let s = UIStoryboard(name: String(describing: OriginalViewController.self), bundle: Bundle(for: OriginalViewController.self))
        let vc = s.instantiateInitialViewController() as! OriginalViewController
        return vc
    }
}
