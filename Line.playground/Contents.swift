import UIKit
import PlaygroundSupport

public class SimpleLine: UIView  {
    
    var startingPoint: CGPoint
    var endingPoint: CGPoint
    
    init(from: CGPoint, to: CGPoint) {
        self.startingPoint = from
        self.endingPoint = to
        super.init(frame: CGRect(x: 0, y: 0, width: 375, height: 667))
        backgroundColor = .white
    }
    
    public required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    public override func draw(_ rect: CGRect) {
        guard let context = UIGraphicsGetCurrentContext() else { return }
        context.setLineWidth(4.0)
        context.setStrokeColor(UIColor.black.cgColor)
        context.move(to: self.startingPoint)
        context.addLine(to: self.endingPoint)
        context.strokePath()
    }
    
}

let firstLine = SimpleLine(from: CGPoint(x: 60, y: 40), to: CGPoint(x: 300, y: 300))

PlaygroundPage.current.liveView = firstLine
