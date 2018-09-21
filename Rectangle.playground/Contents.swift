import UIKit
import PlaygroundSupport

public class SimpleRectangle: UIView  {
    
    var topLeftCorner: CGPoint
    var size: CGFloat
    
    init(topLeftCorner: CGPoint, size: Float) {
        self.topLeftCorner = topLeftCorner
        self.size = CGFloat(size)
        super.init(frame: CGRect(x: 0, y: 0, width: 375, height: 667))
        backgroundColor = .white
    }
    
    public required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    public override func draw(_ rect: CGRect) {
        let context = UIGraphicsGetCurrentContext()
        let boundingRect = CGRect(x: self.topLeftCorner.x, y: self.topLeftCorner.y, width: self.size, height: self.size)
        context!.setStrokeColor(UIColor.black.cgColor)
        context!.setFillColor(UIColor.darkGray.cgColor)
        context!.fill(boundingRect)
        context!.stroke(boundingRect, width: 4.0)
        
    }
    
}

let firstRectangle = SimpleRectangle(topLeftCorner: CGPoint(x: 120, y:100), size: 80)
PlaygroundPage.current.liveView = firstRectangle
