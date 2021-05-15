//
//  UIAlertController+Extension.swift
//  SampleSwiftLibrary
//
//  Created by Shusuke Ota on 2021/5/15.
//

import UIKit

public extension UIAlertController {
    /// スタイルを指定してアラートを表示
    static func showAlertView(vc: UIViewController, title: String?, message: String?, preferredStyle: UIAlertController.Style, okBtnLabel: String, cancelBtnLabel: String?, completion: (() -> Void)?) {
        let aleart: UIAlertController = UIAlertController(title: title, message: message, preferredStyle: preferredStyle)
        if let cancelBtnLabel: String = cancelBtnLabel {
            let cancelAction: UIAlertAction = UIAlertAction(title: cancelBtnLabel, style: .cancel, handler: { (action: UIAlertAction) -> Void in
            })
            aleart.addAction(cancelAction)
        }
        let okAction: UIAlertAction = UIAlertAction(title: okBtnLabel, style: .default, handler: { (action: UIAlertAction) -> Void in
            if let completion = completion {
                completion()
            }
        })
        aleart.addAction(okAction)
        vc.present(aleart, animated: true, completion: nil)
    }
}
