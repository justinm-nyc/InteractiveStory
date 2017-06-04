//
//  PageController.swift
//  Interactive Story
//
//  Created by Justin M on 6/4/17.
//  Copyright © 2017 Justin M. All rights reserved.
//

import UIKit

class PageController: UIViewController {
    
    var page: Page?
    
    //MARK: - User Interface Properties
    
    let artworkView = UIImageView()
    let storyLabel = UILabel()
    let firstChoiceButton = UIButton(type: .system)
    let secondCHoiceBUtton = UIButton(type: .system)
    
    required init?(coder aDecoder: NSCoder){
        super.init(coder: aDecoder)
    }
    
    init(page: Page) {
        self.page = page
        super.init(nibName: nil,  bundle: nil)
    }

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.

        
        if let page = page {
            artworkView.image = page.story.artwork
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func viewWillLayoutSubviews() {
        super.viewWillLayoutSubviews()
        view.addSubview(artworkView)
        artworkView.translatesAutoresizingMaskIntoConstraints = false
        
        artworkView.topAnchor.constraint(equalTo: view.topAnchor).isActive = true
        
        NSLayoutConstraint.activate([
            artworkView.topAnchor.constraint(equalTo: view.topAnchor),
            artworkView.bottomAnchor.constraint(equalTo: view.bottomAnchor),
            artworkView.rightAnchor.constraint(equalTo: view.rightAnchor),
            artworkView.leftAnchor.constraint(equalTo: view.leftAnchor)
        ])
    }
    
}
    
  

