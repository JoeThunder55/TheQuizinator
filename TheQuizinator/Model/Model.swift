//
//  Model.swift
//  TheQuizinator
//
//  Created by Aaron on 11/7/18.
//  Copyright © 2018 Treehouse. All rights reserved.
//

import UIKit


struct Questions {
    
    let pool = [["Question":"This was the only US President to serve more than two consecutive terms", "Option1":"George Washington", "Option2":"Franklin D. Roosevelt", "Option3":"Woodrow Wilson", "Option4":"Andrew Jackson", "Answer":"2"], ["Question":"Which of the following countries has the most residents?", "Option1":"Nigeria","Option2":"Russia", "Option3":"Iran", "Option4":"Vietnam", "Answer":"1"], ["Question":"In what year was the United Nations founded?", "Option1":"1918", "Option2":"1919", "Option3":"1945", "Option1":"1918", "Option4":"1954", "Answer":"3"], ["Question":"The Titanic departed from the United Kingdom. Where was it supposed to arrive?", "Option1":"Paris", "Option2":"Washington D.C.", "Option3":"New York City", "Option4":"Boston", "Answer":"3"], ["Question":"Which nation produces the most oil?", "Option1":"Iran", "Option2":"Iraq", "Option3":"Brazil", "Option4":"Canada", "Answer":" 4"], ["Question":"Which of the following rivers is longest?", "Option1":"Yangtze", "Option2":"Mississippi", "Option3":"Congo", "Option4":"Mekong", "Answer":"2"], ["Question":"Which city is the oldest?", "Option1":"Mexico City", "Option2":"Cape Town", "Option3":"San Juan", "Option4":"Sydney", "Answer":"1"], ["Question":"Which country was the first to allow women to vote in national elections?", "Option1":"Poland", "Option2":"United States", "Option3":"Sweden", "Option3":"Senegal", "Answer":"1"], ["Question":"Which of these countries won the most medals in the 2012 Summer Games?", "Option1":"France", "Option2":"Germany", "Option3":"Japan", "Option3":"Great Britian", "Answer":"4"]]
    
    
    var indexOfSelectedQuestion:  Int
    
   
    
    func presentQuestionValues() -> [String:String] {
        
        
        let selectedQuestionDict = pool[indexOfSelectedQuestion]
    
        return selectedQuestionDict
        
    }
    
   
}

Questions.init(indexOfSelectedQuestion: 3)

