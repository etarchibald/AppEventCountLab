//
//  ViewController.swift
//  AppEventCount
//
//  Created by Ethan Archibald on 10/10/23.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var didFinishLaunching: UILabel!
    @IBOutlet weak var configForConnectingLabel: UILabel!
    @IBOutlet weak var willConnectTo: UILabel!
    @IBOutlet weak var sceneDidBecomeActiveLabel: UILabel!
    @IBOutlet weak var sceneWillResignActive: UILabel!
    @IBOutlet weak var sceneWillEnterForegroundLabel: UILabel!
    @IBOutlet weak var sceneDidEnterBackgroundLabel: UILabel!
    
    var appDelegate = (UIApplication.shared.delegate as! AppDelegate)
    
    var willConnectCount = 0
    var didBecomeActive = 0
    var willResignActive = 0
    var willEnterForeGround = 0
    var didEnterBackGround = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    func updateView() {
        didFinishLaunching.text = "didFinishLaunching: \(appDelegate.lauchCount)"
        configForConnectingLabel.text = "configForConnecting: \(appDelegate.configurationForConnectingCount)"
        willConnectTo.text = "WillConnctTo: \(willConnectCount)"
        sceneDidBecomeActiveLabel.text = "SceneDidBecomeActive: \(didBecomeActive)"
        sceneWillResignActive.text = "SceneWillResignActive: \(willResignActive)"
        sceneWillEnterForegroundLabel.text = "SceneWillEnterForeeground: \(willEnterForeGround)"
        sceneDidEnterBackgroundLabel.text = "SceneDidEnterBackground: \(didEnterBackGround)"
    }


}

