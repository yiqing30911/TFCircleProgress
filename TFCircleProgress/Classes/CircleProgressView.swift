//
//  CircleProgressView.swift
//  TFCircleProgress_Example
//
//  Created by 方涛 on 2020/5/28.
//  Copyright © 2020 CocoaPods. All rights reserved.
//

import UIKit

public class CircleProgressView: UIView {

    public var trackColor: UIColor = UIColor.init(red: 228.0/255.0, green: 228.0/255.0, blue: 228.0/255.0, alpha: 1.0)
    public var progressColor: UIColor = UIColor(red: 106.0/255.0, green: 190.0/255.0, blue: 69.0/255.0, alpha: 1.0)
    public var lineWidth: CGFloat = 5.0
    public var progress: Float = 1.0
    
    // 进度条
    fileprivate let progressLayer = CAShapeLayer()
    
    override public init(frame: CGRect) {
        super.init(frame: frame)
        
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func setupProgressPath() -> UIBezierPath {
        let center = CGPoint(x: bounds.size.width/2.0, y: bounds.size.height/2.0)
        let radius = min(bounds.size.width/2.0, bounds.size.height/2.0)
        return UIBezierPath.init(arcCenter: center, radius: radius, startAngle: angleToRadian(-90), endAngle: angleToRadian(270), clockwise: true)
    }
    
    private func drawTrack() {
        let trackPath = setupProgressPath()
        
        let trackLayer = CAShapeLayer()
        trackLayer.frame = bounds
        trackLayer.fillColor = UIColor.clear.cgColor
        trackLayer.strokeColor = trackColor.cgColor
        trackLayer.lineWidth = lineWidth
        trackLayer.lineCap = CAShapeLayerLineCap.round
        trackLayer.path = trackPath.cgPath
        layer.addSublayer(trackLayer)
    }
    
    private func drawProgress() {
        let progressPath = setupProgressPath()
        
        progressLayer.frame = bounds
        progressLayer.fillColor = UIColor.clear.cgColor
        progressLayer.strokeColor = progressColor.cgColor
        progressLayer.lineWidth = lineWidth
        progressLayer.lineCap = CAShapeLayerLineCap.round
        progressLayer.path = progressPath.cgPath
        progressLayer.strokeStart = 0
        progressLayer.strokeEnd = CGFloat(progress)
        layer.addSublayer(progressLayer)
    }
    
    public func setProgress(_ progress: Float, animated anim: Bool) {
        setProgress(progress, animated: anim, withDuration: 5)
    }
    
    public func setProgress(_ pro: Float, animated anim: Bool, withDuration duration: Double) {
         
         progress = pro
        // 进度条动画
        let animation = CABasicAnimation(keyPath: "strokeEnd")
        animation.duration = duration
        animation.timingFunction = CAMediaTimingFunction(name: CAMediaTimingFunctionName.easeOut)
        animation.fromValue = 0
        animation.toValue = CGFloat(progress)
        progressLayer.add(animation, forKey: "strokeEndAnimation")
    }
    
    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override public func draw(_ rect: CGRect) {
        // Drawing code
        drawTrack()
        drawProgress()
    }
}

extension CircleProgressView {
    fileprivate func angleToRadian(_ angle: Double) -> CGFloat {
        return CGFloat(Double.pi * angle/180.0)
    }
}
