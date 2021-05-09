// This is an example of Swift Code

import Foundation

func main() {
    var arr = [Int]()
    for _ in 0..<2 {
        print("Enter number : ", terminator : "")
        arr.append(Int(readLine()!)!)
    }
    
    print("Enter operator : ", terminator : "")
    let op : String = readLine()!
    
    var valid = true
    var res : Int = 0
    if op=="+" {
        res = arr[0]+arr[1]
    } else if op=="-" {
        res = arr[0]-arr[1]
    } else {
        valid = false;
        print("This operator has not been included.")
    }
    
    if valid {
        let str = String(res);
        let file = "output.txt"
        if let dir = FileManager.default.urls(for: .documentDirectory, in: .userDomainMask).first 
        {
            let fileURL = dir.appendingPathComponent(file)
            do {
                try str.write(to: fileURL, atomically: false, encoding: .utf8)
            }
            catch {
                print("Failed to write to file")    
            }
        }
    }
}

main()

/*
    Windows and Linux users can use Online Compliers
    to run swift code.
    
    Mac user can use swift with XCode
*/
