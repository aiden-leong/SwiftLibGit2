import Clibgit2
public struct SwiftLibGit2 {
    var text = "Hello, World!"
    
    static func clone(url: String, localPath: String, options: git_clone_options) -> OpaquePointer? {
        var out: OpaquePointer? = nil
        var options = options
        git_clone(&out, url, localPath, &options)
        return out
    }
    
    
}
