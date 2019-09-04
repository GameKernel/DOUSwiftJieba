//
//  Classifier.swift
//  DOUSwiftJieba
//
//  Created by 王欢 on 2019/9/4.
//  Copyright © 2019 王欢. All rights reserved.
//


import Foundation
import CoreML

class Classifier {
  
  init() {
    let dictPath =
      Bundle.main.resourcePath!+"/iosjieba.bundle/dict/jieba.dict.small.utf8"
    let hmmPath = Bundle.main.resourcePath!+"/iosjieba.bundle/dict/hmm_model.utf8"
    let userDictPath = Bundle.main.resourcePath!+"/iosjieba.bundle/dict/user.dict.utf8"
    
    DOUJiebaWrapper().objcJiebaInit(dictPath, forPath: hmmPath, forDictPath: userDictPath);
  }
  
  func tokenize(_ message:String) -> [String] {
    print("tokenize...")
    let words = NSMutableArray()
    DOUJiebaWrapper().objcJiebaCut(message, toWords: words)
    return words as! [String]
  }
}
