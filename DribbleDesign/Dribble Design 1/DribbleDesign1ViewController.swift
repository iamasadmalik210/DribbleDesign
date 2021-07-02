//
//  DribbleDesign1ViewController.swift
//  DribbleDesign
//
//  Created by Asad on 30/06/2021.
//

import UIKit

class DribbleDesign1ViewController: UIViewController {
    
    
    let viewModels = [ProductsCollectionViewCellModel(image: UIImage(named: "image1"), title: "Geometry 3D Elements", subtitle: "Ask the students regarding this shape and make them draw rectangles of different type"),ProductsCollectionViewCellModel(image: UIImage(named: "image2"), title: "Geometry 3D Elements", subtitle: "Ask the students regarding this shape and make them draw rectangles of different type"),ProductsCollectionViewCellModel(image: UIImage(named: "image3"), title: "Geometry 3D Elements", subtitle: "Ask the students regarding this shape and make them draw rectangles of different type")]
    
    
    
    
    let foutBottonView  = FourButtonView()
    
    
    private let seachBar : UISearchBar = {
        let searchBar = UISearchBar()
        
        searchBar.clipsToBounds = true
        searchBar.layer.cornerRadius = 15
        return searchBar
        
        
    }()
    
    
    
    
    
    private let collectionView:UICollectionView = {

        
        let layout = UICollectionViewFlowLayout()
        layout.scrollDirection = .horizontal
        layout.sectionInset = UIEdgeInsets(top: 2, left: 2, bottom: 2, right: 2)

        
        let collectionView = UICollectionView(frame: .zero, collectionViewLayout: layout)

        collectionView.register(ProductsCollectionViewCell.self, forCellWithReuseIdentifier: "cell")
        
        
        collectionView.backgroundColor = .clear
        collectionView.clipsToBounds  = true

        return collectionView
        
    }()

    private let tabBar: UITabBar = {
       let tabBar = UITabBar()
        tabBar.backgroundColor = .systemRed
        tabBar.clipsToBounds = true
        tabBar.layer.cornerRadius = 10
        
        tabBar.barStyle = .default
        tabBar.tintColor = .systemPink

        return tabBar
        
    }()
    
    
//    private let tableView : UITableView = {
//       let tableView = UITableView()
//
//        tableView.register(SearchTableViewCell.self, forCellReuseIdentifier: "cell")
//
//
//        return tableView
//
//    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
//        view.addSubview(tableView)
//        tableView.delegate = self
//        tableView.dataSource = self
        collectionView.delegate = self
        collectionView.dataSource = self
        
        view.backgroundColor = .lightGray
        view.addSubview(seachBar)
        view.addSubview(foutBottonView)
        view.addSubview(collectionView)
        view.addSubview(tabBar)
        
        var tabBarItems = [UITabBarItem]()
        tabBarItems.append(UITabBarItem(title: "Home", image: UIImage(systemName: "house"), selectedImage: UIImage(systemName: "house.fill")))
        tabBarItems.append(UITabBarItem(title: "Favotites", image: UIImage(systemName: "heart"), selectedImage: UIImage(systemName: "heart.fill")))
        tabBarItems.append(UITabBarItem(title: "Additions", image: UIImage(systemName: "cube"), selectedImage: UIImage(systemName: "cube.fill")))

        tabBarItems.append(UITabBarItem(title: "User", image: UIImage(systemName: "person"), selectedImage: UIImage(systemName: "person.fill")))

        
//        tabBarItems.append(UITabBarItem(tabBarSystemItem: .favorites, tag: 0))
//        tabBarItems.append(UITabBarItem(tabBarSystemItem: .featured, tag: 0))

        tabBar.items = tabBarItems
        
        

        
       
        
        
//        tabBar.items = [UITabBarItem(title: "Home", image: UIImage(systemName: "house"), selectedImage: UIImage(systemName: "house.fill"))]
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        
        seachBar.frame = CGRect(x: 20, y: view.safeAreaInsets.top + 50, width: view.frame.width - 40 , height: 40)
        
        foutBottonView.frame = CGRect(x: 25, y: seachBar.bottom + 10, width: view.frame.width-40, height: 100)
        
        collectionView.frame = CGRect(x: 0, y: foutBottonView.bottom + 40, width: view.frame.width, height: view.frame.height/2 )
        
        tabBar.frame = CGRect(x: 0, y: view.bottom - 80, width: view.width, height: 80)
        
    }
    
    


}


//extension DribbleDesign1ViewController: UITableViewDelegate,UITableViewDataSource{
//    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
//
//
//
//        return 5
//    }
//
//
//
//
//    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
//
//
//         let cell = tableView.dequeueReusableCell(withIdentifier: "cell",for: indexPath)
//
//
//
//        return cell
//
//
//    }
//
//
//
//
//}



extension DribbleDesign1ViewController: UICollectionViewDelegate,UICollectionViewDataSource,UICollectionViewDelegateFlowLayout{
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        
        
        return viewModels.count    }
    
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        
        return 1
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as? ProductsCollectionViewCell else {
            
            fatalError()
        }
        
        cell.configure(viewModels[indexPath.row])


        return cell
    }
    
    
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        
        let width: CGFloat = view.frame.size.width/2 + 50
        
        return CGSize(width: width, height: width*1.5)
    }
    
    
}
