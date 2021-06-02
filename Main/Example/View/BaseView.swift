//
//  BaseView.swift
//  Example
//
//  Created by Shusuke Ota on 2021/5/15.
//

import UIKit

protocol BaseViewDelegate: AnyObject {
    func didTapAlertButton()
    func didTapTransitionPageButton()
}

class BaseView: UIView {
    
    @IBOutlet weak var alertButton: UIButton!
    
    weak var delegate: BaseViewDelegate?
    
    override func awakeFromNib() {
        super.awakeFromNib()
        self.initUI()
    }
    @IBAction func didTapAlertButton(_ sender: Any) {
        self.delegate?.didTapAlertButton()
    }
    @IBAction func didTapTransitionPageButton(_ sender: Any) {
        self.delegate?.didTapTransitionPageButton()
    }
}
// MARK: - Initialized Method
extension BaseView {
    private func initUI() {
        self.alertButton.backgroundColor = .systemRed
        self.alertButton.setTitle("アラートを表示する", for: .normal)
        self.alertButton.setTitleColor(.white, for: .normal)
        self.alertButton.clipsToBounds = true
        self.alertButton.layer.cornerRadius = 5
    }
}
