//
//  PageViewController.swift
//  UIPageViewController
//
//  Created by Сергей Медведев on 07.04.2021.
//

import UIKit

class PageViewController: UIPageViewController {
    
    let presentScreenContent = [
        "Первая страница презентации, расказывающая о том, что наше приложение из себя представляет",
        "Вторая страница презентации, расказывает о какой то удобной фишке приложения",
        "Третья страница презентации тоже расказывает о чем то очень интересном",
        "Ну и наконец последняя страница презентации с напутствием в добрый путь =)"
    ]
    
    let emojiArray = ["😉", "🤓", "🧐", "👍🏼"]

    override func viewDidLoad() {
        super.viewDidLoad()

        if let contentViewController = showViewControllerAtIndex(0) {
            setViewControllers([contentViewController], direction: .forward, animated: true, completion: nil)
        }
    }
    
    func showViewControllerAtIndex(_ index: Int) -> ContentViewController? {
        
        guard index >= 0 else { return nil }
        guard index < presentScreenContent.count else { return nil }
        guard let contentViewController = storyboard?.instantiateViewController(withIdentifier: "ContentViewController") as? ContentViewController else { return nil }
        
        contentViewController.presentText = presentScreenContent[index]
        contentViewController.emoji = emojiArray[index]
        contentViewController.currentPage = index
        contentViewController.numberOfPage = presentScreenContent.count
        
        return contentViewController
    }

}
