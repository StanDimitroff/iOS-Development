
import Foundation

extension Float {

    var toRationalFraction: String {
        var x = self
        let eps: Float = 1.0E-6
        var a = x.rounded(.down)
        var (h1, k1, h, k) = (1, 0, Int(a), 1)

        while x - a > eps * Float(k) * Float(k) {
            x = 1.0/(x - a)
            a = x.rounded(.down)
            (h1, k1, h, k) = (h, k, h1 + Int(a) * h, k1 + Int(a) * k)
        }

        if k > 1 {
            return "\(h)/\(k)"
        }

        return "\(h)"
    }
}
