//
//  ViewController.swift
//  Example
//
//  Created by Shusuke Ota on 2021/5/15.
//

import UIKit
import SampleSwiftLibrary
import OriginalFramework
import OriginalXCFramework

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
        UIAlertController.showAlertView(vc: self, title: "アラート表示", message: nil, preferredStyle: .alert, okBtnLabel: "OK", cancelBtnLabel: "キャンセル", completion: nil)
    }
    func didTapTransitionPageButton() {
        let vc = OriginalViewController.initViewController()
        self.present(vc, animated: true, completion: nil)
    }
    func didTapTransitionXCPageButton() {
        let vc = OriginalXCViewController.initViewController()
        self.present(vc, animated: true, completion: nil)
    }
}
