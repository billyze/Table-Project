//
//  DetailViewController.swift
//  Table Project
//
//  Created by Field Employee on 10/24/20.
//

import UIKit

class DetailViewController: UIViewController {
    
    var imageView: UIImageView?
    var button: UIButton?
    var label: UITextField?
    var progressView: UIProgressView?
//    @IBOutlet weak var labelText: UITextField!
//    @IBOutlet weak var image: UIImageView!
//    @IBOutlet weak var button: UIButton!
    
    var tuple: (image:UIImage?, buttonText: String, labelText: String, progressView: Float)
    
    init(details: (image:UIImage?, buttonText: String, labelText: String, progressView: Float)) {
        print(details.buttonText)
        self.tuple = details
        print(self.tuple.buttonText)
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.setUp()
        // Do any additional setup after loading the view.
    }
    
    private func setUp() {
        self.view.backgroundColor = .white
        self.navigationItem.title = "Programmatic Detail"
        
        //Image View
        let imageView = UIImageView(frame: .zero)
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.contentMode = .scaleAspectFit
        imageView.image = self.tuple.image
        
        //Button
        let buttonView = UIButton(frame: .zero)
        buttonView.translatesAutoresizingMaskIntoConstraints = false
        buttonView.backgroundColor = .blue
        buttonView.setTitle(self.tuple.buttonText, for: .normal)
        
        //Label
        let label =  UITextField(frame: .zero)
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textAlignment = .center
        label.text = self.tuple.labelText
        
        //progress view
        let progressView = UIProgressView(frame: .zero)
        progressView.translatesAutoresizingMaskIntoConstraints = false
        progressView.progress = self.tuple.progressView
        
        //add to view
        self.view.addSubview(imageView)
        self.view.addSubview(label)
        self.view.addSubview(buttonView)
        self.view.addSubview(progressView)
        
        //constraints
        imageView.topAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.topAnchor, constant: 0).isActive = true
        imageView.leadingAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.leadingAnchor, constant: 32).isActive = true
        imageView.trailingAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.trailingAnchor, constant: -32).isActive = true
        imageView.heightAnchor.constraint(equalToConstant: 200).isActive = true
        
        label.topAnchor.constraint(equalTo: imageView.bottomAnchor, constant: 0).isActive = true
        label.leadingAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.leadingAnchor, constant: 0).isActive = true
        label.trailingAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.trailingAnchor, constant: -200).isActive = true
        
        buttonView.topAnchor.constraint(equalTo: imageView.bottomAnchor, constant: 0).isActive = true
        buttonView.leadingAnchor.constraint(equalTo: label.trailingAnchor, constant: 30).isActive = true
        buttonView.trailingAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.trailingAnchor, constant: -30).isActive = true
        
        progressView.topAnchor.constraint(equalTo: label.bottomAnchor, constant: 20).isActive = true
        progressView.leadingAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.leadingAnchor, constant: 10).isActive = true
        progressView.trailingAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.trailingAnchor, constant:-10).isActive = true
        
        self.imageView = imageView
        self.button = buttonView
        self.label = label
        self.progressView = progressView
        
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
