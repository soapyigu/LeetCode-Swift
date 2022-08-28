**
 * Question Link: https://leetcode.com/problems/ip-to-cidr/
 * Primary idea: Bit manipulation. Get the most right 1 and update steps based on it.
 *
 * Time Complexity: O(mlogn), Space Complexity: O(m)
 * m is the length of the ip string
 */

class IPToCIDR {
    private let BASE = 256
    
    func ipToCIDR(_ ip: String, _ n: Int) -> [String] {
        var currentIPInt = ipToInt(ip)
        var res = [String](), n = n
        
        while n > 0 {
            // get the most right one bit
            var step = currentIPInt & -currentIPInt
            
            if step == 0 {
                step = Int(pow(Double(2), Double(32)))
            }
            
            while step > n {
                step /= 2
            }
            
            res.append(IntToIP(currentIPInt, step))
            
            currentIPInt += step
            n -= step
        }
        
        return res
    }
    
    private func ipToInt(_ ip: String) -> Int {
        var x = 0
        let strings = ip.split(separator: ".")
        
        for str in strings {
            x = x * BASE + Int(str)!
        }
        
        return x
    }
    
    private func IntToIP(_ x: Int, _ step: Int) -> String {
        var res = Array(""), x = x

        for i in 0..<4 {
            res.insert(contentsOf: String(x % BASE), at: 0)
            if i != 3 {
                res.insert(".", at: 0)
            }
            x /= BASE
        }

        var len = 33, step = step
        while step > 0 {
            len -= 1
            step /= 2
        }

        res += "/\(len)"

        return String(res)
    }
}
