//
//  CheckBoxButton.swift
//  popularMovies
//
//  Created by Grazielli Berti on 01/06/22.
//

import UIKit

class CheckBoxButton: UIView {
    //MARK: - Variable
    var isChecked = true
    
    //MARK: - View
    let checkMarkImage: UIImageView = {
        let checkBox = UIImageView()
        checkBox.isHidden = true
        checkBox.contentMode = .scaleAspectFit
        checkBox.tintColor = .white
        checkBox.image = UIImage(systemName: "checkmark")
        return checkBox
    }()
    
    let boxView: UIView = {
        let view = UIView()
        view.layer.borderWidth = 1
        view.layer.borderColor = UIColor(red: 0.67, green: 0.67, blue: 0.67, alpha: 1).cgColor
        view.layer.cornerRadius = 8
        return view
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        backgroundColor = UIColor(red: 0.29, green: 0, blue: 0.15, alpha: 1)
        addSubview(checkMarkImage)
        addSubview(boxView)
        togled()
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        boxView.frame = CGRect(x: 3, y: 5, width: 30, height: 30)
        checkMarkImage.frame = CGRect(x: 8, y: 8, width: 20, height: 20)
    }
    
    required init?(coder: NSCoder) {
        fatalError()
    }
    
    func togled() {
        self.isChecked = !isChecked
        checkMarkImage.isHidden = !isChecked
    }
}
