//
//  StoryPromptViewController.swift
//  StoryPrompt
//
//  Created by Andres Mendieta on 12/1/21.
//

import UIKit

class StoryPromptViewController: UIViewController {

    @IBOutlet weak var storyPromptTextView: UITextView!
    
    var storyPrompt: StoryPromptEntry?
    var isNewStoryPrompt = false
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        storyPromptTextView.text = storyPrompt? .description
        if isNewStoryPrompt{
            let saveButton = UIBarButtonItem(barButtonSystemItem: .save, target: self, action: #selector(saveStoryPrompt))
            let cancelButton = UIBarButtonItem (barButtonSystemItem: .cancel, target: self, action: #selector(cancelStoryPrompt))
            navigationItem.rightBarButtonItem = saveButton
            navigationItem.leftBarButtonItem = cancelButton
            
        }
        // Do any additional setup after loading the view.
    }
    
   
    @IBAction func cancelStoryPrompt() {
        performSegue(withIdentifier: "CancelStoryPrompt", sender: nil)
    }
    
    @objc func saveStoryPrompt() {
        NotificationCenter.default.post(name: .StoryPromptSaved, object: storyPrompt)
        performSegue(withIdentifier: "SaveStoryPrompt", sender: nil)
    }
    
}

extension Notification.Name{
    static let StoryPromptSaved = Notification.Name("StoryPromptSave")
}
