//
//  MentorMenteeView.swift
//  objShe
//
//  Created by Gina Domergue on 7/23/16.
//  Copyright © 2016 Yoko Yamaguchi. All rights reserved.
//

import UIKit

@IBDesignable class MentorMenteeView: UIView {

    @IBOutlet weak var FindAMentor: UIButton!
    @IBOutlet weak var BeAMentor: UIButton!
    var view:UIView!
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        FindAMentor.addTarget(self, action: "Find a Mentor tapped", forControlEvents: UIControlEvents.TouchUpInside)
        BeAMentor.addTarget(self, action: "Be a Mentor tapped", forControlEvents: UIControlEvents.TouchUpInside)
        setup()
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        setup()
    }
    
    func setup() {
        view = loadViewFromNib()
        view.frame = bounds
//        view.autoresizingMask = UIViewAutoresizing.FlexibleWidth | UIViewAutoresizing.FlexibleHeightaddSubview(view)
    }
    
    func loadViewFromNib() -> UIView {
        let bundle = NSBundle(forClass:self.dynamicType)
        let nib = UINib(nibName: "MentorMenteeView", bundle: bundle)
        let view = nib.instantiateWithOwner(self, options: nil)[0] as! UIView
        
        return view
    }
    
    @IBAction func findAMentorClicked(sender : UIButton) {
        self.performSegueWithIdentifier("TransitionToViewCandidates", sender: sender)
    }
    
    @IBAction func beAMentorClicked(sender : UIButton) {
        self.performSegueWithIdentifier("TransitionToViewCandidates", sender: sender)
    }
    

}
