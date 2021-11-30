//
//  ViewController.swift
//  StoryPrompt
//
//  Created by Andres Mendieta on 11/29/21.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        let storyPrompt = StoryPromptEntry()
        storyPrompt.noun="toaster"
        storyPrompt.adjective="smelly"
        storyPrompt.verb="burps"
        storyPrompt.number=10
        print(storyPrompt)
        // Do any additional setup after loading the view.
    }


}

 
