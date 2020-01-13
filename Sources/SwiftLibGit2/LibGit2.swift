//
//  Clibgit2.swift
//  
//
//  Created by ailion on 2020/1/12.
//

import Clibgit2

public class LibGit2 {
    
    public static func features() {
        git_libgit2_features()
    }
    
    public static func initialize() {
        git_libgit2_init()
    }
    
    public static func opts() {
    }
    
    public static func shutdown() {
        git_libgit2_shutdown()
    }
    
    public static func version() -> LibGit2Version {
        let major = UnsafeMutablePointer<Int32>.allocate(capacity: 1)
        let minor = UnsafeMutablePointer<Int32>.allocate(capacity: 1)
        let rev = UnsafeMutablePointer<Int32>.allocate(capacity: 1)
        git_libgit2_version(major, minor, rev)
        
        return LibGit2Version(major: major.pointee, minor: minor.pointee, rev: rev.pointee)
        
    }
    
    
    
}
