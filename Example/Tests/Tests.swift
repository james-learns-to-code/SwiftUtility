// https://github.com/Quick/Quick

import Quick
import Nimble
import SwiftUtilityKit

class TableOfContentsSpec: QuickSpec {
    override func spec() {
        
        describe("unwrapOrThrow func") {
            it("have to throw error if self is nil") {
                let val: Int? = nil
                expect { _ = try val.unwrapOrThrow(NSError(domain: "", code: 0, userInfo: nil)) }.to( throwError() )
            }
            it("have to return val if self is not nil") {
                let val: Int? = 2
                let wrappedVal = try? val.unwrapOrThrow(NSError(domain: "", code: 0, userInfo: nil))
                expect(wrappedVal).toNot(equal(.some(nil)))
                expect(wrappedVal!).to(equal(2))
            }
        }
        
//        UITableView().register(UITableViewCell.self)
//        UITableView().registerNib(UITableViewCell.self)
//        UICollectionView().register(UICollectionViewCell.self)
//        UICollectionView().registerNib(UICollectionViewCell.self)
        
//        UITableView().isCellFullyVisible(indexPath: IndexPath(row: 0, section: 0))
//        UICollectionView().isCellFullyVisible(indexPath: IndexPath(row: 0, section: 0))
        
//        UITableViewCell.dequeue(from: UITableView(), for:  IndexPath(row: 0, section: 0))
//        UICollectionViewCell.dequeue(from: UICollectionView(), for: IndexPath(row: 0, section: 0))
        
//        UIView.initFromNib()
//        UIViewController.initFromNib()
        
//        NSObject.name
        
        let label = UILabel().with(\.textColor, set: .red).with(\.text, set: "Hi")
        let user1 = User(id: 0, name: "James")
        let user2 = User(id: 0, name: "Pam")
        if user1 == user2 {
            print("same")
        }
        
        let array = [10, 20, 30]
        array[safe: 3]
        array[safe: 1..<2]
        
        UIColor(hex: 0xffffff).inversed

    }
}

struct User: Identifiable {
    static let idKeyPath = \User.id
    let id: Int
    let name: String
}
