//
//  MentorMenteeView.swift
//  objShe
//
//  Created by Gina Domergue on 7/23/16.
//  Copyright © 2016 Yoko Yamaguchi. All rights reserved.
//

import UIKit

class MentorMenteeView: UIView {

    var view:UIView!
    @IBOutlet weak var FindMentor: UIButton!
    @IBOutlet weak var BeMentor: UIButton!
    
    override init(frame: CGRect) {
       
        super.init(frame: frame)
        setup()
    }
    
    required init(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        setup()
    }
    
    func setup() {
        view = loadViewFromNib()
        view.frame = bounds
        view.autoresizingMask = UIViewAutoresizing.FlexibleWidth | UIViewAutoresizing.FlexibleHeightaddSubview(view)
    }
    
    func loadViewFromNib() -> UIView {
        let bundle = NSBundle(forClass:self.dynamicType)
        let nib = UINib(nibName: “MentorMenteeView”, bundle: bundle)
        let view = nib.instantiateWithOwner(self, options: nil)[0] as UIView
        
        return view
    }
}
