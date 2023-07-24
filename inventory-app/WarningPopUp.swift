//
//  WarningPopUp.swift
//  inventory-app
//
//  Created by Intekglobal01 on 7/10/23.
//

import UIKit

class WarningPopUp: UIView {

    @IBOutlet weak var closeBtn: UIButton!
    /*
    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func draw(_ rect: CGRect) {
        // Drawing code
    }
    */
    required init?(coder: NSCoder) {
        super.init(coder: coder)
    }
    
    override init(frame:CGRect){
        super.init(frame: frame)
        xibsetup(frame: CGRect(x:0, y:0, width:frame.width, height: frame.height))
    }
    
    
    func xibsetup(frame: CGRect){
        let view = loadXib()
        view.frame = frame
        addSubview((view))
    }
    
    func loadXib() -> UIView{
        let bundle = Bundle(for: type(of:self))
        let nib = UINib(nibName: "WarningPopUp", bundle: bundle)
        let view = nib.instantiate(withOwner: self, options: nil).first as? UIView
        
        return view!
    }

}
