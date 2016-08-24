import Quick
import Nimble

class SampleSpec: QuickSpec {
  override func spec() {
    describe("foo") {
      it("passes") {
        expect(true).to(beTrue())
      }
    }
  }
}
