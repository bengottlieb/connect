import XCTest

extension XCUIApplication {
    var path: String {
        value(forKeyPath: "_applicationImpl._path") as! String
    }
    var bundle: Bundle {
        Bundle(path: path)!
    }
    var url: URL {
        URL(fileURLWithPath: path)
    }
}