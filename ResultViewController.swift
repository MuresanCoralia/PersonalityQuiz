//
//  ResultViewController.swift
//  ResultViewController
//
//  Created by Wolfpack Digital on 27.07.2021.
//

import UIKit

class ResultViewController: UIViewController
{

    @IBOutlet weak var resultAnswerLabel: UILabel!
    @IBOutlet weak var resultDefinitionLabel: UILabel!
    
    
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

        calculatePersonalityResult()
        
        navigationItem.hidesBackButton = true

    }
    
    
    func calculatePersonalityResult()
    {
        let frequencyOfAnswers = responses.reduce(into:
           [AnimalType: Int]())
        {
            (counts, answer) in
            if let existingCount = counts[answer.type]
            {
                counts[answer.type] = existingCount + 1
            } else
            {
                counts[answer.type] = 1
            }
        }
        
        /* let frequentAnswersSorted = frequencyOfAnswers.sorted(by:
        {
            (pair1, pair2) in
            return pair1.value > pair2.value
        })
        
        let mostCommonAnswer = frequentAnswersSorted.first!.key
         */
        
        let mostCommonAnswer = frequencyOfAnswers.sorted { $0.1 > $1.1 }.first!.key
        
        resultAnswerLabel.text = "You are a \(mostCommonAnswer.rawValue)!"
        resultDefinitionLabel.text = mostCommonAnswer.definition
        
        
    }
    

}
