//
//  ResultsViewController.swift
//  ResultsViewController
//
//  Created by Wolfpack Digital on 27.07.2021.
//

import UIKit

class ResultsViewController: UIViewController
{

    var responses: [Answer]
    
    init?(coder: NSCoder, responses: [Answer]) {
        self.responses = responses
        super.init(coder: coder)
    }
    
    required init?(coder: NSCoder)
    {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    override func viewDidLoad()
    {
        super.viewDidLoad()

        
    }
    

}
