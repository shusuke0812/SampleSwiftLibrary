//
//  BaseView.swift
//  Example
//
//  Created by Shusuke Ota on 2021/5/15.
//

import UIKit

protocol BaseViewDelegate: AnyObject {
    func didTapAlerButton()
}

class BaseView: UIView {
    
    @IBOutlet weak var alertButton: UIButton!
    
    weak var delegate: BaseViewDelegate?
    
    override func awakeFromNib() {
        super.awakeFromNib()
        self.initUI()
    }
    @IBAction func didTapAlertButton(_ sender: Any) {
        self.delegate?.didTapAlerButton()
    }
}
// MARK: - Initialized Method
extension BaseView {
    private func initUI() {
        self.alertButton.backgroundColor = .systemRed
        self.alertButton.setTitle("アラートを表示する", for: .normal)
        self.alertButton.clipsToBounds = true
        self.alertButton.layer.cornerRadius = 5
        self.alertButton.translatesAutoresizingMaskIntoConstraints = false
    }
}
