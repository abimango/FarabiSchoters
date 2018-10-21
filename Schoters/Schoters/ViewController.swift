//
//  ViewController.swift
//  Schoters
//
//  Created by Farabi Ramadhan Arief on 20/10/18.
//  Copyright © 2018 Farabi Ramadhan Arief. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    private let mainStoryBoard = UIStoryboard(name: "Main", bundle: nil)
    
    @IBOutlet weak var header: UILabel!
    @IBOutlet weak var descriptionOfHeader: UILabel!
    @IBOutlet private weak var doneButton: UIButton!
    
    // MARK: Category List Buttons
    @IBOutlet weak var bachelorButton: UIButton!
    @IBOutlet weak var masterButton: UIButton!
    @IBOutlet weak var phdButton: UIButton!
    @IBOutlet weak var shortCoursesButton: UIButton!
    @IBOutlet weak var degreeButton: UIButton!
    @IBOutlet weak var nonDegreeButton: UIButton!
    @IBOutlet weak var medicalDegreeButton: UIButton!
    @IBOutlet weak var postDoctoralButton: UIButton!
    @IBOutlet weak var researchButton: UIButton!
    @IBOutlet weak var technologyButton: UIButton!
    @IBOutlet weak var cvWritingButton: UIButton!
    @IBOutlet weak var consultationButton: UIButton!
    @IBOutlet weak var motivationLetterButton: UIButton!
    @IBOutlet weak var personalizedMentorButton: UIButton!
    @IBOutlet weak var professionalButton: UIButton!
    @IBOutlet weak var ieltsButton: UIButton!
    @IBOutlet weak var toeflButton: UIButton!
    @IBOutlet weak var essayButton: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        categoryListButtonsSetup()
    }
    
    // MARK: Done button clicked
    @IBAction func doneHomeButtonClicked(_ sender: Any) {
        var schotersTabBarController = UITabBarController()
        schotersTabBarController = mainStoryBoard.instantiateViewController(withIdentifier: "SchotersTabBarController") as! UITabBarController
        schotersTabBarController.modalTransitionStyle = UIModalTransitionStyle.crossDissolve
        self.present(schotersTabBarController, animated: true, completion: nil)
    }
    
    // MARK: Category List Buttons Setup
    func categoryListButtonsSetup() {
        
        bachelorButton.layer.cornerRadius = 20
        bachelorButton.layer.borderWidth = 2
        bachelorButton.layer.borderColor = #colorLiteral(red: 0.1803921569, green: 0.6156862745, blue: 0.631372549, alpha: 1)
        
        masterButton.layer.cornerRadius = 20
        masterButton.layer.borderWidth = 2
        masterButton.layer.borderColor = #colorLiteral(red: 0.1803921569, green: 0.6156862745, blue: 0.631372549, alpha: 1)
        
        phdButton.layer.cornerRadius = 20
        phdButton.layer.borderWidth = 2
        phdButton.layer.borderColor = #colorLiteral(red: 0.1803921569, green: 0.6156862745, blue: 0.631372549, alpha: 1)
        
        shortCoursesButton.layer.cornerRadius = 20
        shortCoursesButton.layer.borderWidth = 2
        shortCoursesButton.layer.borderColor = #colorLiteral(red: 0.1803921569, green: 0.6156862745, blue: 0.631372549, alpha: 1)
        
        degreeButton.layer.cornerRadius = 20
        degreeButton.layer.borderWidth = 2
        degreeButton.layer.borderColor = #colorLiteral(red: 0.1803921569, green: 0.6156862745, blue: 0.631372549, alpha: 1)
        
        nonDegreeButton.layer.cornerRadius = 20
        nonDegreeButton.layer.borderWidth = 2
        nonDegreeButton.layer.borderColor = #colorLiteral(red: 0.1803921569, green: 0.6156862745, blue: 0.631372549, alpha: 1)
        
        medicalDegreeButton.layer.cornerRadius = 20
        medicalDegreeButton.layer.borderWidth = 2
        medicalDegreeButton.layer.borderColor = #colorLiteral(red: 0.1803921569, green: 0.6156862745, blue: 0.631372549, alpha: 1)
        
        postDoctoralButton.layer.cornerRadius = 20
        postDoctoralButton.layer.borderWidth = 2
        postDoctoralButton.layer.borderColor = #colorLiteral(red: 0.1803921569, green: 0.6156862745, blue: 0.631372549, alpha: 1)
        
        researchButton.layer.cornerRadius = 20
        researchButton.layer.borderWidth = 2
        researchButton.layer.borderColor = #colorLiteral(red: 0.1803921569, green: 0.6156862745, blue: 0.631372549, alpha: 1)
        
        technologyButton.layer.cornerRadius = 20
        technologyButton.layer.borderWidth = 2
        technologyButton.layer.borderColor = #colorLiteral(red: 0.1803921569, green: 0.6156862745, blue: 0.631372549, alpha: 1)
        
        cvWritingButton.layer.cornerRadius = 20
        cvWritingButton.layer.borderWidth = 2
        cvWritingButton.layer.borderColor = #colorLiteral(red: 0.1803921569, green: 0.6156862745, blue: 0.631372549, alpha: 1)
        
        consultationButton.layer.cornerRadius = 20
        consultationButton.layer.borderWidth = 2
        consultationButton.layer.borderColor = #colorLiteral(red: 0.1803921569, green: 0.6156862745, blue: 0.631372549, alpha: 1)
        
        motivationLetterButton.layer.cornerRadius = 20
        motivationLetterButton.layer.borderWidth = 2
        motivationLetterButton.layer.borderColor = #colorLiteral(red: 0.1803921569, green: 0.6156862745, blue: 0.631372549, alpha: 1)
        
        personalizedMentorButton.layer.cornerRadius = 20
        personalizedMentorButton.layer.borderWidth = 2
        personalizedMentorButton.layer.borderColor = #colorLiteral(red: 0.1803921569, green: 0.6156862745, blue: 0.631372549, alpha: 1)
        
        professionalButton.layer.cornerRadius = 20
        professionalButton.layer.borderWidth = 2
        professionalButton.layer.borderColor = #colorLiteral(red: 0.1803921569, green: 0.6156862745, blue: 0.631372549, alpha: 1)
        
        ieltsButton.layer.cornerRadius = 20
        ieltsButton.layer.borderWidth = 2
        ieltsButton.layer.borderColor = #colorLiteral(red: 0.1803921569, green: 0.6156862745, blue: 0.631372549, alpha: 1)
        
        toeflButton.layer.cornerRadius = 20
        toeflButton.layer.borderWidth = 2
        toeflButton.layer.borderColor = #colorLiteral(red: 0.1803921569, green: 0.6156862745, blue: 0.631372549, alpha: 1)
        
        essayButton.layer.cornerRadius = 20
        essayButton.layer.borderWidth = 2
        essayButton.layer.borderColor = #colorLiteral(red: 0.1803921569, green: 0.6156862745, blue: 0.631372549, alpha: 1)
    }
}
