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
    }
}
