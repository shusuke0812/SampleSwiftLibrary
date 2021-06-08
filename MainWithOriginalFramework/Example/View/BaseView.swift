//
//  BaseView.swift
//  Example
//
//  Created by Shusuke Ota on 2021/5/15.
//

import UIKit

protocol BaseViewDelegate: AnyObject {
    func didTapAlertButton()
}

class BaseView: UIView {
    
    @IBOutlet weak var transitionPageButton: UIButton!
    
    weak var delegate: BaseViewDelegate?
    
    override func awakeFromNib() {
        super.awakeFromNib()
        self.initUI()
    }
    @IBAction func didTapTransitionPageButton(_ sender: Any) {
        self.delegate?.didTapAlertButton()
    }
}
// MARK: - Initialized Method
extension BaseView {
    private func initUI() {
        self.transitionPageButton.backgroundColor = .systemRed
        self.transitionPageButton.setTitle("次の画面に進む", for: .normal)
        self.transitionPageButton.setTitleColor(.white, for: .normal)
        self.transitionPageButton.clipsToBounds = true
        self.transitionPageButton.layer.cornerRadius = 5
    }
}
