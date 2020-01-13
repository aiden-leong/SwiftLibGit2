import Clibgit2

public class SwiftLibGit2 {
    var text = "Hello, World!"
    
    public init() {
        
    }
    
    public static func clone(url: String, localPath: String) -> OpaquePointer? {
        var out: OpaquePointer? = nil
        git_clone(&out, url, localPath, nil)
        return out
    }
    
    public static func clone(url: String, localPath: String, options: git_clone_options) -> OpaquePointer? {
        var out: OpaquePointer? = nil
        var options = options
        git_clone(&out, url, localPath, &options)
        return out
    }
    
    
}
