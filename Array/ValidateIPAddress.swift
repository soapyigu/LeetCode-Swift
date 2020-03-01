/**
 * Question Link: https://leetcode.com/problems/validate-ip-address/
 * Primary idea: Determine whether they are iPv4 or iPv6, then handle them separately
 *
 * Time Complexity: O(n), Space Complexity: O(1)
 *
 */

class ValidateIPAddress {
    
    let IPv4 = "IPv4"
    let IPv4Separator = Character(".")
    let IPv6 = "IPv6"
    let IPv6Separator = Character(":")
    let InvalidIP = "Neither"
    
    func validIPAddress(_ IP: String) -> String {
        // detect IPv4 or IPv6
        guard let isIPv4 = isPotentialIPv4(IP) else {
            return InvalidIP
        }
        
        return isIPv4 ? isValidIPv4(IP) : isValidIPv6(IP)
    }
    
    private func isPotentialIPv4(_ IP: String) -> Bool? {
        let isIPv4 = IP.contains(IPv4Separator), isIPv6 = IP.contains(IPv6Separator)
        
        if isIPv4 || isIPv6 {
            return isIPv4
        } else {
            return nil
        }
    }
    
    private func isValidIPv4(_ IP: String) -> String {
        if IP.contains("\(IPv4Separator)\(IPv4Separator)") || IP.first == IPv4Separator || IP.last == IPv4Separator {
            return InvalidIP
        }
        
        let numbers = IP.split(separator: IPv4Separator)
        
        guard numbers.count == 4 else {
            return InvalidIP
        }
        
        for number in numbers {
            guard let num = Int(number) else {
                return InvalidIP
            }
            
            guard let first = number.first, first.isNumber else {
                return InvalidIP
            }
            
            if first == "0", number.count > 1 {
                return InvalidIP
            }
            if num < 0 || num > 255 {
                return InvalidIP
            }
        }
        
        return IPv4
    }
    
    private func isValidIPv6(_ IP: String) -> String {
        if IP.contains("\(IPv6Separator)\(IPv6Separator)") || IP.first == IPv6Separator || IP.last == IPv6Separator {
            return InvalidIP
        }
        
        let numbers = IP.split(separator: IPv6Separator)
        
        guard numbers.count == 8 else {
            return InvalidIP
        }
        
        for number in numbers {
            let number = number.lowercased()
            
            if number.count > 4 {
                return InvalidIP
            }
            
            for char in number {
                if !char.isHexDigit {
                    return InvalidIP
                }
            }
        }
        
        return IPv6
    }
}