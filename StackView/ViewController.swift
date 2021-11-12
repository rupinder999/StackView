//
//  ViewController.swift
//  StackView
//
//  Created by SEW on 20/08/21.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var stackView: UIStackView!
    @IBOutlet var mybutton1: UIButton!
    @IBOutlet var mybutton2: UIButton!
//    @IBOutlet var image: UIImageView!
//    @IBOutlet var image2: UIImageView!
//
//    @IBAction func didTapButtonAdd() {
//        stackView.addArrangedSubview(image)
//    }
//
//    @IBAction func didTapButtonRemove() {
//        image.removeFromSuperview()
//    }
    
    
    var named = ["house", "heart.fill", "car"]

        var image = [
            UIImageView(image: UIImage(systemName: "car"))
        ]
    
        var i = 1

        @IBAction func btntap(){
            image.append(UIImageView(image: UIImage(systemName: named[i%3])))
            stackView.addArrangedSubview(image[i])
            i=i+1
        }

        @IBAction func remove(){
            if(i>0){
            i=i-1
            image[i].removeFromSuperview()
            image.remove(at: i)
            }
            else{
            print(image.count)
            }
        }
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        stackView.frame = view.bounds
                stackView.backgroundColor = .systemYellow
                stackView.axis  =  .vertical
                stackView.spacing = 10
                stackView.distribution = .fillEqually
                view.addSubview(stackView)
        
//        let imageView = UIImageView()
//        imageView.backgroundColor = .green
//        imageView.image = UIImage(systemName:"car")
//        imageView.contentMode = .scaleAspectFit
        
        //createStackView()
    }
//    func createStackView() {
//
//        let imageView = UIImageView()
//        imageView.backgroundColor = .green
//        imageView.image = UIImage(systemName:"car")
//        imageView.contentMode = .scaleAspectFit
//
//        let label1 = UILabel()
//        label1.backgroundColor = .blue
//        label1.text = "LABEL 1"
//        label1.textAlignment = .center
//        label1.font = .systemFont(ofSize: 20, weight: .bold)
//
//
//        let label2 = UILabel()
//        label2.backgroundColor = .orange
//        label2.text = "LABEL 2"
//        label2.textAlignment = .center
//        label2.font = .systemFont(ofSize: 20, weight: .bold)
//
//
//        let stackView = UIStackView(arrangedSubviews: [imageView, label1])
//        stackView.frame = view.bounds
//        stackView.backgroundColor = .yellow
//
//        stackView.axis  =  .vertical
//        stackView.spacing = 10
//        stackView.distribution = .fillEqually
//        view.addSubview(stackView)
//        stackView.addArrangedSubview(label2)
//    }

}

