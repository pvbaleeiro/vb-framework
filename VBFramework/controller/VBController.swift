//
//  VBController.swift
//  VBFramework
//
//  Created by Victor Baleeiro on 22/11/17.
//  Copyright © 2017 Going2. All rights reserved.
//

import Foundation

class VBController: UIViewController {
    
    //-------------------------------------------------------------------------------------------------------------
    // MARK: Properties
    //-------------------------------------------------------------------------------------------------------------
    //Outlet
    @IBOutlet var scrContent: UIScrollView!
    @IBOutlet weak var viewContent: UIView!
    //Callback
    var isChange: ((_ anyObject: Any, _ change: Bool) -> Void)! = nil
    
    
    //-------------------------------------------------------------------------------------------------------------
    // MARK: Lifecycle
    //-------------------------------------------------------------------------------------------------------------
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //Call as needed
        //setupData()
        //setupLayout()
        //setupText()
    }
    
    
    //-------------------------------------------------------------------------------------------------------------
    // MARK: Sets
    //-------------------------------------------------------------------------------------------------------------
    func setupData() {
        
    }
    
    func setupLayout() {
        
    }
    
    func setupText() {
        
    }
}
