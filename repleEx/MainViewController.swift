//
//  MainViewController.swift
//  repleEx
//
//  Created by 위대연 on 2021/11/21.
//

import UIKit

class MainViewController: UIViewController {
    var scrollView: UIScrollView = {
        let scrollView = UIScrollView(frame: .zero)
        scrollView.contentSize = CGSize.zero
        scrollView.backgroundColor = .white
        scrollView.showsHorizontalScrollIndicator = false
        scrollView.bouncesZoom = false
        scrollView.minimumZoomScale = 1.0
        scrollView.maximumZoomScale = 1.0
        
        return scrollView
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.view.addSubview(scrollView)
        let safeArea = view.safeAreaLayoutGuide
        scrollView.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            scrollView.topAnchor.constraint(equalTo: safeArea.topAnchor),
            scrollView.leadingAnchor.constraint(equalTo: safeArea.leadingAnchor),
            scrollView.bottomAnchor.constraint(equalTo: safeArea.bottomAnchor),
            scrollView.trailingAnchor.constraint(equalTo: safeArea.trailingAnchor)
        ])
        
        let mainView = UIView(frame: CGRect.zero)
        scrollView.addSubview(mainView)
        mainView.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            mainView.topAnchor.constraint(equalTo: scrollView.topAnchor),
            mainView.leadingAnchor.constraint(equalTo: scrollView.leadingAnchor),
            mainView.trailingAnchor.constraint(equalTo: scrollView.trailingAnchor),
            mainView.bottomAnchor.constraint(equalTo: scrollView.bottomAnchor),
            mainView.widthAnchor.constraint(equalTo: safeArea.widthAnchor)
        ])
        
        /**
         scrollView do
            mainView do
                contentsView do
                end
                repleView do
                end
            end
         end
         */
        
        let contentsView = UIView(frame: .zero)
        let repleView = UIView(frame: .zero)
        mainView.addSubview(contentsView)
        mainView.addSubview(repleView)
        
        NSLayoutConstraint.activate([
            contentsView.topAnchor.constraint(equalTo: mainView.topAnchor),
            
        ])
        
        
        let testImageView = UIImageView(frame: CGRect(origin: .zero, size: CGSize(width: self.view.frame.width, height: self.view.frame.width)))
        contentsView.addSubview(testImageView)
        
        
        
        let tableView = UITableView(frame: CGRect.zero)
        tableView.isScrollEnabled = false
        
    }
    
}
