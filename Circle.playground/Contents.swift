import UIKit
import PlaygroundSupport

public class SimpleCircle: UIView  {
    
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
        guard let context = UIGraphicsGetCurrentContext() else { return }
        let boundingRect = CGRect(x: self.topLeftCorner.x, y: self.topLeftCorner.y, width: self.size, height: self.size)
        context.setLineWidth(4.0)
        context.setStrokeColor(UIColor.black.cgColor)
        context.setFillColor(UIColor.darkGray.cgColor)
        context.fillEllipse(in: boundingRect)
        context.strokeEllipse(in: boundingRect)
    }
}

let firstCircle = SimpleCircle(topLeftCorner: CGPoint(x: 80, y: 80), size: 80)

PlaygroundPage.current.liveView = firstCircle
