//
//  DemoView.swift
//  testBezierPath
//
//  Created by NATON on 2017/6/8.
//  Copyright © 2017年 NATON. All rights reserved.
//

import UIKit

class DemoView: UIView {

    var path: UIBezierPath!
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        self.backgroundColor = UIColor.darkGray
        self.simpleShapeLayer()
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    
    override func draw(_ rect: CGRect) {
        //self.createRectangle()
       // self.createTriangle()
        
        //self.path = UIBezierPath(ovalIn: self.bounds)
        
        /*self.path = UIBezierPath(ovalIn: CGRect(
            x: self.frame.size.width/2-self.frame.size.height/2,
            y: 0.0,
            width: self.frame.size.height,
            height: self.frame.size.height))*/  //当宽度和高度相等时，其就成为一个圆形
        
        //path = UIBezierPath(roundedRect: self.bounds, cornerRadius: 15.0) //跟设置self.layer.corneradio = 15.0一样
        
        //path = UIBezierPath(roundedRect: self.bounds, byRoundingCorners: [.topLeft, .bottomRight], cornerRadii: CGSize(width: 15.0, height: 0.0))
//        
//        path = UIBezierPath(arcCenter: CGPoint(x: self.frame.size.width/2, y: self.frame.size.height/2),
//                            radius: self.frame.size.height/2,
//                            startAngle: CGFloat(Double.pi),
//                            endAngle: CGFloat(0.0),
//                            clockwise: true)
//        
//        //specify the fill color and apply it to the path
//        UIColor.orange.setFill()
//        path.fill() 
//        
//        //specify a border (stroke) color
//        UIColor.purple.setStroke()
//        path.stroke()
    }
    
    //四边形
    func createRectangle() {
        //Initialize the path
        path = UIBezierPath()
        
        //Specify the point that the path should start get draw
        path.move(to: CGPoint(x: 0.0, y: 0.0))
        
        //Create a line between the starting point and bottom-left side of the view
        path.addLine(to: CGPoint(x: 0.0, y: self.frame.size.height))
        
        //create the bottom line (bottom-left to bottom-right)
        path.addLine(to: CGPoint(x: self.frame.size.width, y: self.frame.size.height))
        
        //create the vertical line from the bottom-right to the top-right side
        path.addLine(to: CGPoint(x: self.frame.size.width, y: 0.0))
        
        //close the path ,this will create the last line automatically
        
        path.close()
    }
    
    //三角形
    func createTriangle() {
        path = UIBezierPath()
        path.move(to: CGPoint(x: self.frame.width/2, y: 0.0))
        path.addLine(to: CGPoint(x: 0.0, y: self.frame.size.height))
        path.addLine(to: CGPoint(x: self.frame.size.width, y: self.frame.size.height))
        path.close()
    }
}

extension CGFloat {
    func toRadians() -> CGFloat {
        return self * CGFloat(M_PI) / 180.0
    }
}

extension DemoView {
    func simpleShapeLayer() {
        self.createTriangle()
        
        let shapeLayer = CAShapeLayer()
        shapeLayer.path = self.path.cgPath
        shapeLayer.fillColor = UIColor.blue.cgColor
        shapeLayer.strokeColor = UIColor.brown.cgColor
        shapeLayer.lineWidth = 3.0
        //self.layer.addSublayer(shapeLayer)
        self.backgroundColor = UIColor.cyan
        self.layer.mask = shapeLayer
    }
}
