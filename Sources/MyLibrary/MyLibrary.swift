import Foundation
import os.log

public class lg {
  public static func debug(_ items: Any..., file: String = #file, function: String = #function,
         line: Int = #line, tag: String = "NAME") {
    #if DEBUG
    let fileName = (file as NSString).lastPathComponent
    let dateFormatter = DateFormatter()
    dateFormatter.dateFormat = "HH:mm:ss"
    dateFormatter.timeZone = TimeZone(abbreviation: "Asia/Taipei")
    dateFormatter.locale = Locale(identifier: "ja_JP")
    let ismain = (Thread.isMainThread) ? "主線":"副線"
    let content = "\(tag) \(dateFormatter.string(from: Date())) \(items) \(fileName):\(line) \(ismain)"
    print(content)
    #endif
  }
}
