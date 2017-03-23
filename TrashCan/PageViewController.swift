//
//  PageViewController.swift
//  TrashCan
//
//  Created by Ognam.Chen on 2017/3/18.
//  Copyright © 2017年 SwiftCourse. All rights reserved.
//

import UIKit

class PageViewController: UIPageViewController, UIPageViewControllerDataSource, UIPageViewControllerDelegate {
    override var prefersStatusBarHidden: Bool{
        return true
    }
    
    lazy var viewControllerArray:[UIViewController] = {
        return[self.viewControllerInstance(name: "Black"),
               self.viewControllerInstance(name: "Green"),
               self.viewControllerInstance(name: "Blue"),
               self.viewControllerInstance(name: "Red")]
    }()
    
    private func viewControllerInstance(name: String) -> UIViewController {
        return UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: name)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.dataSource = self
        self.delegate = self
        
        if let firstViewController = viewControllerArray.first {
            setViewControllers([firstViewController], direction: .forward, animated: true, completion: nil)
        }
    }
    
    public func pageViewController(_ pageViewController: UIPageViewController, viewControllerBefore viewController: UIViewController) -> UIViewController? {
        
        guard let viewControllerIndex = viewControllerArray.index(of: viewController) else {
            return nil
        }
        let previousIndex = viewControllerIndex - 1
        
        guard previousIndex >= 0 else {
            return viewControllerArray.last
        }
        guard viewControllerArray.count > previousIndex else {

            return nil
        }
        print(#function)
        return viewControllerArray[previousIndex]
        
    }
    
    public func pageViewController(_ pageViewController: UIPageViewController, viewControllerAfter viewController: UIViewController) -> UIViewController? {
        guard let viewControllerIndex = viewControllerArray.index(of: viewController) else {
            return nil
        }
        let nextIndex = viewControllerIndex + 1

        guard viewControllerArray.count != nextIndex else {
            return viewControllerArray.first
        }
        
//        guard nextIndex < 0 else {
//            return viewControllerArray.first
//        }
        guard viewControllerArray.count > nextIndex else {
            print(#function)

            return nil
        }
        print(#function)
        return viewControllerArray[nextIndex]
    }
    
//    public func presentationCount(for pageViewController: UIPageViewController) -> Int {
//        return viewControllerArray.count
//    }
//    
//    public func presentationIndex(for pageViewController: UIPageViewController) -> Int {
//        guard let firstViewController = viewControllers?.first,
//            let firstViewControllerIndex = viewControllerArray.index(of: firstViewController) else {
//                return 0
//        }
//        return firstViewControllerIndex
//        
//    }
    
    
    
    /*
     // MARK: - Navigation
     
     // In a storyboard-based application, you will often want to do a little preparation before navigation
     override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
     // Get the new view controller using segue.destinationViewController.
     // Pass the selected object to the new view controller.
     }
     */
    
}
