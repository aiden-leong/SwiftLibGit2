import Clibgit2
import XCTest
@testable import SwiftLibGit2

final class SwiftLibGit2Tests: XCTestCase {
//    func testExample() {
//        // This is an example of a functional test case.
//        // Use XCTAssert and related functions to verify your tests produce the correct
//        // results.
//
//        XCTAssertEqual(SwiftLibGit2().text, "Hello, World!")
//    }
//

    func test_git_ls_remote() {
        LibGit2.initialize()
        let urlString = "https://github.com/andy1247008998/Clibgit2.git"
        let remote = Remote.create_detached(urlString: urlString)
        _ = Remote.connect(remote: remote!)
        Remote.disconnect(remote: remote)
        let out = Remote.ls(remote: remote)
        let x = out!.0.pointee?[0]?.pointee.name
        let y = String(cString: x!)
        print(y)
        Remote.free(remote: remote!)
        LibGit2.shutdown()
        
        XCTAssertEqual(y, "HEAD")
    }
    

//    func test_git_clone() {
//
//        var errorCode: Int32 = 0
//
//        LibGit2.initialize()
//        let localPathString = "/Users/ailion/test/Clibgit2"
//        let urlString = "https://github.com/andy1247008998/Clibgit2.git"
//
//        var repo: OpaquePointer? = nil
//        var options = git_clone_options()
//        options.version = 2
//
//        errorCode = git_clone(&repo, urlString, localPathString, nil)
//        print(errorCode)
//
//        Repository.free(repo: &repo)
//        LibGit2.shutdown()
//    }

    static var allTests = [
//        ("testExample", testExample),
        ("test_git_ls_remote", test_git_ls_remote),
    ]
}
