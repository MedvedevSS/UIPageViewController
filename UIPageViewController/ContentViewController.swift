//
//  ContentViewController.swift
//  UIPageViewController
//
//  Created by Сергей Медведев on 07.04.2021.
//

import UIKit

class ContentViewController: UIViewController {

    @IBOutlet weak var presentTextLabel: UILabel!
    @IBOutlet weak var emojiLabel: UILabel!
    @IBOutlet weak var pageControll: UIPageControl!
    
    var presentText = ""
    var emoji = ""
    var currentPage = 0 // Номер текущей страницы
    var numberOfPage = 0 // Кол-во страниц
    
    override func viewDidLoad() {
        super.viewDidLoad()

        presentTextLabel.text = presentText
        emojiLabel.text = emoji
        pageControll.currentPage = currentPage
        pageControll.numberOfPages = numberOfPage
    }

}
