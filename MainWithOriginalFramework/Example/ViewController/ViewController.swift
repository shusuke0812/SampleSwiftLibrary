//
//  ViewController.swift
//  Example
//
//  Created by Shusuke Ota on 2021/5/15.
//

import UIKit

class ViewController: UIViewController {
    /// BaseView
    private var baseView: BaseView { self.view as! BaseView }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.baseView.delegate = self
    }
}
// MARK: - BaseView Delegate
extension ViewController: BaseViewDelegate {
    func didTapAlertButton() {
    }
    func didTapTransitionPageButton() {
    }
    func didTapTransitionXCPageButton() {
    }
}
