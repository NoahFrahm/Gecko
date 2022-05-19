//
//  UIBezierPath+Extension.swift
//  SVGToBezier
//
//  Created by Stewart Lynch on 2020-06-02.
//  Copyright © 2020 CreaTECH Solutions. All rights reserved.
//

import UIKit

extension UIBezierPath {
    static func calculateBounds(paths: [UIBezierPath]) -> CGRect {
        let myPaths = UIBezierPath()
        for path in paths {
            myPaths.append(path)
        }
        return (myPaths.bounds)
    }
    
//    fetch this from firebase?
    static var ctLogo1: UIBezierPath {
        let shape = UIBezierPath()
        shape.move(to: CGPoint(x: 170.1, y: 10.4))
        shape.addCurve(to: CGPoint(x: 121.1, y: 0), controlPoint1: CGPoint(x: 154.4, y: 3.5), controlPoint2: CGPoint(x: 138.1, y: 0))
        shape.addCurve(to: CGPoint(x: 60.4, y: 16.4), controlPoint1: CGPoint(x: 99.2, y: 0), controlPoint2: CGPoint(x: 79, y: 5.5))
        shape.addCurve(to: CGPoint(x: 32.8, y: 38.5), controlPoint1: CGPoint(x: 50, y: 22.5), controlPoint2: CGPoint(x: 40.8, y: 29.9))
        shape.addLine(to: CGPoint(x: 61.7, y: 67.4))
        shape.addCurve(to: CGPoint(x: 80.8, y: 51.7), controlPoint1: CGPoint(x: 67.2, y: 61.3), controlPoint2: CGPoint(x: 73.5, y: 56))
        shape.addCurve(to: CGPoint(x: 98.5, y: 43.9), controlPoint1: CGPoint(x: 86.5, y: 48.3), controlPoint2: CGPoint(x: 92.4, y: 45.8))
        shape.addLine(to: CGPoint(x: 98.5, y: 158.3))
        shape.addLine(to: CGPoint(x: 98.5, y: 158.7))
        shape.addCurve(to: CGPoint(x: 100.2, y: 160), controlPoint1: CGPoint(x: 98.9, y: 159), controlPoint2: CGPoint(x: 99.5, y: 159.5))
        shape.addCurve(to: CGPoint(x: 134.9, y: 160), controlPoint1: CGPoint(x: 105.5, y: 163.7), controlPoint2: CGPoint(x: 119.6, y: 171.4))
        shape.addCurve(to: CGPoint(x: 136.6, y: 158.7), controlPoint1: CGPoint(x: 135.5, y: 159.6), controlPoint2: CGPoint(x: 136, y: 159.1))
        shape.addLine(to: CGPoint(x: 136.6, y: 158.3))
        shape.addLine(to: CGPoint(x: 136.6, y: 42.4))
        shape.addCurve(to: CGPoint(x: 153.4, y: 47.8), controlPoint1: CGPoint(x: 142.3, y: 43.6), controlPoint2: CGPoint(x: 147.9, y: 45.3))
        shape.addCurve(to: CGPoint(x: 180.6, y: 67.5), controlPoint1: CGPoint(x: 163.7, y: 52.4), controlPoint2: CGPoint(x: 172.8, y: 59))
        shape.addLine(to: CGPoint(x: 210.9, y: 40.2))
        shape.addCurve(to: CGPoint(x: 170.1, y: 10.4), controlPoint1: CGPoint(x: 199.3, y: 27.2), controlPoint2: CGPoint(x: 185.7, y: 17.3))
        shape.close()
        return shape
    }
    
    static var ctLogo2: UIBezierPath {
        let shape = UIBezierPath()
        shape.move(to: CGPoint(x: 183.4, y: 173.5))
        shape.addCurve(to: CGPoint(x: 155.5, y: 195.7), controlPoint1: CGPoint(x: 175.6, y: 183), controlPoint2: CGPoint(x: 166.3, y: 190.4))
        shape.addCurve(to: CGPoint(x: 121.1, y: 203.7), controlPoint1: CGPoint(x: 144.7, y: 201), controlPoint2: CGPoint(x: 133.2, y: 203.7))
        shape.addCurve(to: CGPoint(x: 81, y: 192.6), controlPoint1: CGPoint(x: 106.8, y: 203.7), controlPoint2: CGPoint(x: 93.4, y: 200))
        shape.addCurve(to: CGPoint(x: 51.7, y: 162.7), controlPoint1: CGPoint(x: 68.6, y: 185.2), controlPoint2: CGPoint(x: 58.8, y: 175.2))
        shape.addCurve(to: CGPoint(x: 40.9, y: 122.1), controlPoint1: CGPoint(x: 44.5, y: 150.2), controlPoint2: CGPoint(x: 40.9, y: 136.6))
        shape.addCurve(to: CGPoint(x: 51.7, y: 81.5), controlPoint1: CGPoint(x: 40.9, y: 107.5), controlPoint2: CGPoint(x: 44.5, y: 94))
        shape.addCurve(to: CGPoint(x: 52.1, y: 80.9), controlPoint1: CGPoint(x: 51.8, y: 81.3), controlPoint2: CGPoint(x: 52, y: 81.1))
        shape.addLine(to: CGPoint(x: 22.5, y: 51.3))
        shape.addCurve(to: CGPoint(x: 16.3, y: 60.9), controlPoint1: CGPoint(x: 20.3, y: 54.4), controlPoint2: CGPoint(x: 18.3, y: 57.6))
        shape.addCurve(to: CGPoint(x: 0, y: 122.1), controlPoint1: CGPoint(x: 5.4, y: 79.6), controlPoint2: CGPoint(x: 0, y: 100))
        shape.addCurve(to: CGPoint(x: 16.2, y: 183.3), controlPoint1: CGPoint(x: 0, y: 144.2), controlPoint2: CGPoint(x: 5.4, y: 164.6))
        shape.addCurve(to: CGPoint(x: 60.3, y: 228), controlPoint1: CGPoint(x: 27, y: 202), controlPoint2: CGPoint(x: 41.7, y: 216.9))
        shape.addCurve(to: CGPoint(x: 121, y: 244.6), controlPoint1: CGPoint(x: 78.9, y: 239.1), controlPoint2: CGPoint(x: 99.1, y: 244.6))
        shape.addCurve(to: CGPoint(x: 173.5, y: 232.6), controlPoint1: CGPoint(x: 139.5, y: 244.6), controlPoint2: CGPoint(x: 157, y: 240.6))
        shape.addCurve(to: CGPoint(x: 215.4, y: 199.1), controlPoint1: CGPoint(x: 190, y: 224.6), controlPoint2: CGPoint(x: 204, y: 213.4))
        shape.addLine(to: CGPoint(x: 183.4, y: 173.5))
        shape.close()
        return shape
    }
    
    static var ctLogo3: UIBezierPath {
        let shape = UIBezierPath()
        shape.move(to: CGPoint(x: 10, y: 6))
        shape.addLine(to: CGPoint(x: 10, y: 0))
        shape.addLine(to: CGPoint(x: 6, y: 0))
        shape.addLine(to: CGPoint(x: 6, y: 6))
        shape.addLine(to: CGPoint(x: 0, y: 6))
        shape.addLine(to: CGPoint(x: 0, y: 10))
        shape.addLine(to: CGPoint(x: 6, y: 10))
        shape.addLine(to: CGPoint(x: 6, y: 16))
        shape.addLine(to: CGPoint(x: 10, y: 16))
        shape.addLine(to: CGPoint(x: 10, y: 10))
        shape.addLine(to: CGPoint(x: 16, y: 10))
        shape.addLine(to: CGPoint(x: 16, y: 6))
        shape.addLine(to: CGPoint(x: 10, y: 6))
        shape.close()
        return shape
    }
    
    static var ctLogo4: UIBezierPath {
        let shape = UIBezierPath()
        shape.move(to: CGPoint(x: 87.7, y: 46.5))
        shape.addCurve(to: CGPoint(x: 106.2, y: 42.5), controlPoint1: CGPoint(x: 0, y: 0), controlPoint2: CGPoint(x: 0, y: -0.2))
        shape.addCurve(to: CGPoint(x: 99.6, y: 31.4), controlPoint1: CGPoint(x: -0.9, y: -4.4), controlPoint2: CGPoint(x: -3.6, y: -8))
        shape.addCurve(to: CGPoint(x: 55.5, y: 8.3), controlPoint1: CGPoint(x: -12, y: -12.7), controlPoint2: CGPoint(x: -27.8, y: -20.4))
        shape.addCurve(to: CGPoint(x: 28.8, y: 11.6), controlPoint1: CGPoint(x: -9, y: -1.5), controlPoint2: CGPoint(x: -18.6, y: -1.5))
        shape.addCurve(to: CGPoint(x: 9, y: 33.6), controlPoint1: CGPoint(x: -8.4, y: 5), controlPoint2: CGPoint(x: -15.4, y: 12.6))
        shape.addCurve(to: CGPoint(x: 1.8, y: 68.2), controlPoint1: CGPoint(x: 3.6, y: 45), controlPoint2: CGPoint(x: 1.9, y: 57.7))
        shape.addCurve(to: CGPoint(x: 1.8, y: 69), controlPoint1: CGPoint(x: 0, y: 0.3), controlPoint2: CGPoint(x: 0, y: 0.5))
        shape.addCurve(to: CGPoint(x: 17.1, y: 106.6), controlPoint1: CGPoint(x: 1.2, y: 13), controlPoint2: CGPoint(x: 7.4, y: 27.4))
        shape.addCurve(to: CGPoint(x: 36.5, y: 118.7), controlPoint1: CGPoint(x: 5, y: 6.3), controlPoint2: CGPoint(x: 12.1, y: 10))
        shape.addCurve(to: CGPoint(x: 66.3, y: 111.4), controlPoint1: CGPoint(x: 10.4, y: 3), controlPoint2: CGPoint(x: 23.2, y: 2.3))
        shape.addCurve(to: CGPoint(x: 70.9, y: 96.8), controlPoint1: CGPoint(x: 2.8, y: -4.1), controlPoint2: CGPoint(x: 4, y: -9.4))
        shape.addCurve(to: CGPoint(x: 68, y: 75.8), controlPoint1: CGPoint(x: 0.8, y: -7.2), controlPoint2: CGPoint(x: 0.6, y: -14.8))
        shape.addCurve(to: CGPoint(x: 51.2, y: 69.2), controlPoint1: CGPoint(x: -3.4, y: -6.1), controlPoint2: CGPoint(x: -11, y: -9.8))
        shape.addCurve(to: CGPoint(x: 46.4, y: 73.9), controlPoint1: CGPoint(x: -1.9, y: 1), controlPoint2: CGPoint(x: -3.5, y: 2.8))
        shape.addCurve(to: CGPoint(x: 43, y: 86.2), controlPoint1: CGPoint(x: -2.5, y: 3.5), controlPoint2: CGPoint(x: -4.2, y: 8))
        shape.addCurve(to: CGPoint(x: 51.6, y: 93.1), controlPoint1: CGPoint(x: 0.8, y: 4.4), controlPoint2: CGPoint(x: 4.8, y: 8.1))
        shape.addCurve(to: CGPoint(x: 56.3, y: 85.7), controlPoint1: CGPoint(x: -1.9, y: -3.2), controlPoint2: CGPoint(x: 1.3, y: -7.7))
        shape.addCurve(to: CGPoint(x: 62, y: 93.7), controlPoint1: CGPoint(x: 3.4, y: 0.3), controlPoint2: CGPoint(x: 5.7, y: 4.2))
        shape.addCurve(to: CGPoint(x: 58, y: 103.8), controlPoint1: CGPoint(x: 0, y: 3.7), controlPoint2: CGPoint(x: -1.8, y: 7.2))
        shape.addCurve(to: CGPoint(x: 47, y: 110.8), controlPoint1: CGPoint(x: -2.8, y: 3.6), controlPoint2: CGPoint(x: -6.7, y: 6.7))
        shape.addCurve(to: CGPoint(x: 32.5, y: 100.2), controlPoint1: CGPoint(x: -6.1, y: 0.4), controlPoint2: CGPoint(x: -11.5, y: -4.7))
        shape.addCurve(to: CGPoint(x: 30.7, y: 69.8), controlPoint1: CGPoint(x: -4.7, y: -9.1), controlPoint2: CGPoint(x: -5.4, y: -20.7))
        shape.addCurve(to: CGPoint(x: 51.5, y: 50), controlPoint1: CGPoint(x: 3.6, y: -9.6), controlPoint2: CGPoint(x: 11.6, y: -17.2))
        shape.addCurve(to: CGPoint(x: 60.3, y: 49.4), controlPoint1: CGPoint(x: 2.9, y: -0.8), controlPoint2: CGPoint(x: 5.9, y: -1.1))
        shape.addCurve(to: CGPoint(x: 80.2, y: 69.6), controlPoint1: CGPoint(x: 9.1, y: 1.8), controlPoint2: CGPoint(x: 15, y: 11.4))
        shape.addLine(to: CGPoint(x: 87.7, y: 46.5))
        return shape
    }
    
    static var ctLogo5: UIBezierPath {
        let shape = UIBezierPath()
        shape.move(to: CGPoint(x: 168.3, y: 46.5))
        shape.addCurve(to: CGPoint(x: 149.8, y: 42.5), controlPoint1: CGPoint(x: 0, y: 0), controlPoint2: CGPoint(x: 0, y: -0.2))
        shape.addCurve(to: CGPoint(x: 156.4, y: 31.4), controlPoint1: CGPoint(x: 0.9, y: -4.4), controlPoint2: CGPoint(x: 3.6, y: -8))
        shape.addCurve(to: CGPoint(x: 200.5, y: 8.3), controlPoint1: CGPoint(x: 12, y: -12.7), controlPoint2: CGPoint(x: 27.8, y: -20.4))
        shape.addCurve(to: CGPoint(x: 227.2, y: 11.6), controlPoint1: CGPoint(x: 9, y: -1.5), controlPoint2: CGPoint(x: 18.6, y: -1.5))
        shape.addCurve(to: CGPoint(x: 247, y: 33.6), controlPoint1: CGPoint(x: 8.4, y: 5), controlPoint2: CGPoint(x: 15.4, y: 12.6))
        shape.addCurve(to: CGPoint(x: 254.2, y: 68.2), controlPoint1: CGPoint(x: 5.4, y: 11.4), controlPoint2: CGPoint(x: 7.1, y: 24))
        shape.addCurve(to: CGPoint(x: 254.2, y: 69), controlPoint1: CGPoint(x: 0, y: 0.3), controlPoint2: CGPoint(x: 0, y: 0.5))
        shape.addCurve(to: CGPoint(x: 238.9, y: 106.6), controlPoint1: CGPoint(x: -1.2, y: 13), controlPoint2: CGPoint(x: -7.4, y: 27.4))
        shape.addCurve(to: CGPoint(x: 219.5, y: 118.7), controlPoint1: CGPoint(x: -5, y: 6.3), controlPoint2: CGPoint(x: -12.1, y: 10))
        shape.addCurve(to: CGPoint(x: 189.7, y: 111.4), controlPoint1: CGPoint(x: -10.4, y: 3), controlPoint2: CGPoint(x: -23.2, y: 2.3))
        shape.addCurve(to: CGPoint(x: 185.1, y: 96.8), controlPoint1: CGPoint(x: -2.8, y: -4.1), controlPoint2: CGPoint(x: -4, y: -9.4))
        shape.addCurve(to: CGPoint(x: 188, y: 75.8), controlPoint1: CGPoint(x: -0.8, y: -7.2), controlPoint2: CGPoint(x: -0.6, y: -14.8))
        shape.addCurve(to: CGPoint(x: 204.8, y: 69.2), controlPoint1: CGPoint(x: 3.4, y: -6.1), controlPoint2: CGPoint(x: 11, y: -9.8))
        shape.addCurve(to: CGPoint(x: 209.6, y: 73.9), controlPoint1: CGPoint(x: 1.9, y: 1), controlPoint2: CGPoint(x: 3.5, y: 2.8))
        shape.addCurve(to: CGPoint(x: 213, y: 86.2), controlPoint1: CGPoint(x: 2.5, y: 3.5), controlPoint2: CGPoint(x: 4.2, y: 8))
        shape.addCurve(to: CGPoint(x: 204.4, y: 93.1), controlPoint1: CGPoint(x: -0.8, y: 4.4), controlPoint2: CGPoint(x: -4.8, y: 8.1))
        shape.addCurve(to: CGPoint(x: 199.7, y: 85.7), controlPoint1: CGPoint(x: 1.9, y: -3.2), controlPoint2: CGPoint(x: -1.3, y: -7.7))
        shape.addCurve(to: CGPoint(x: 194, y: 93.7), controlPoint1: CGPoint(x: -3.4, y: 0.3), controlPoint2: CGPoint(x: -5.7, y: 4.2))
        shape.addCurve(to: CGPoint(x: 198, y: 103.8), controlPoint1: CGPoint(x: 0, y: 3.7), controlPoint2: CGPoint(x: 1.8, y: 7.2))
        shape.addCurve(to: CGPoint(x: 209, y: 110.8), controlPoint1: CGPoint(x: 2.8, y: 3.6), controlPoint2: CGPoint(x: 6.7, y: 6.7))
        shape.addCurve(to: CGPoint(x: 223.5, y: 100.2), controlPoint1: CGPoint(x: 6.1, y: 0.4), controlPoint2: CGPoint(x: 11.5, y: -4.7))
        shape.addCurve(to: CGPoint(x: 225.3, y: 69.8), controlPoint1: CGPoint(x: 4.7, y: -9.1), controlPoint2: CGPoint(x: 5.4, y: -20.7))
        shape.addCurve(to: CGPoint(x: 204.5, y: 50), controlPoint1: CGPoint(x: -3.6, y: -9.6), controlPoint2: CGPoint(x: -11.6, y: -17.2))
        shape.addCurve(to: CGPoint(x: 195.7, y: 49.4), controlPoint1: CGPoint(x: -2.9, y: -0.8), controlPoint2: CGPoint(x: -5.9, y: -1.1))
        shape.addCurve(to: CGPoint(x: 175.8, y: 69.6), controlPoint1: CGPoint(x: -9.1, y: 1.8), controlPoint2: CGPoint(x: -15, y: 11.4))
        shape.addLine(to: CGPoint(x: 168.3, y: 46.5))
        return shape
    }
    
    
    
    static var phone1: UIBezierPath {
        let shape = UIBezierPath()
        shape.move(to: CGPoint(x: 128, y: 138.3))
        shape.addLine(to: CGPoint(x: 128, y: 138.3))
        shape.addLine(to: CGPoint(x: 128, y: 138.3))
        shape.addLine(to: CGPoint(x: 128, y: 138.3))
        return shape
    }
    
    static var phone2: UIBezierPath {
        let shape = UIBezierPath()
        shape.move(to: CGPoint(x: 127.9, y: 138.8))
        shape.addLine(to: CGPoint(x: 127.9, y: 138.8))
        shape.addLine(to: CGPoint(x: 127.9, y: 138.4))
        shape.addLine(to: CGPoint(x: 127.9, y: 138.4))
        shape.addLine(to: CGPoint(x: 127.9, y: 138.4))
        shape.addLine(to: CGPoint(x: 127.9, y: 138.4))
        shape.addLine(to: CGPoint(x: 0, y: 138.8))
        return shape
    }
    
    static var phone3: UIBezierPath {
        let shape = UIBezierPath()
        shape.move(to: CGPoint(x: 126, y: 138.2))
        shape.addLine(to: CGPoint(x: 126, y: 138.2))
        shape.addLine(to: CGPoint(x: 126, y: 138.2))
        shape.addLine(to: CGPoint(x: 126, y: 138.2))
        return shape
    }
    
    static var phone4: UIBezierPath {
        let shape = UIBezierPath()
        shape.move(to: CGPoint(x: 127.9, y: 138.8))
        shape.addLine(to: CGPoint(x: 127.9, y: 138.8))
        shape.addLine(to: CGPoint(x: 127.9, y: 138.8))
        return shape
    }
    
    static var phone5: UIBezierPath {
        let shape = UIBezierPath()
        shape.move(to: CGPoint(x: 97.4, y: 232))
        shape.addCurve(to: CGPoint(x: 83, y: 216.8), controlPoint1: CGPoint(x: -7.9, y: 0), controlPoint2: CGPoint(x: -14.4, y: -6.8))
        shape.addLine(to: CGPoint(x: 0, y: 48.2))
        shape.addCurve(to: CGPoint(x: 97.4, y: 33), controlPoint1: CGPoint(x: 83, y: 39.9), controlPoint2: CGPoint(x: 89.4, y: 33))
        shape.addLine(to: CGPoint(x: 158.5, y: 33))
        shape.addCurve(to: CGPoint(x: 172.9, y: 48.2), controlPoint1: CGPoint(x: 7.9, y: 0), controlPoint2: CGPoint(x: 14.4, y: 6.8))
        shape.addLine(to: CGPoint(x: 172.9, y: 216.8))
        shape.addCurve(to: CGPoint(x: 158.5, y: 232), controlPoint1: CGPoint(x: 0, y: 8.3), controlPoint2: CGPoint(x: -6.4, y: 15.2))
        shape.addLine(to: CGPoint(x: 97.4, y: 0))
        shape.addLine(to: CGPoint(x: 97.4, y: 232))
        return shape
    }
    
    
    
    static var AppTeam1: UIBezierPath {
        let shape = UIBezierPath()
        shape.move(to: CGPoint(x: 247, y: 33.6))
        shape.addCurve(to: CGPoint(x: 227.2, y: 11.6), controlPoint1: CGPoint(x: 242.6, y: 24.2), controlPoint2: CGPoint(x: 235.6, y: 16.6))
        shape.addCurve(to: CGPoint(x: 200.5, y: 8.3), controlPoint1: CGPoint(x: 219.1, y: 6.8), controlPoint2: CGPoint(x: 209.5, y: 6.8))
        shape.addCurve(to: CGPoint(x: 156.4, y: 31.4), controlPoint1: CGPoint(x: 184.2, y: 11), controlPoint2: CGPoint(x: 168.4, y: 18.7))
        shape.addCurve(to: CGPoint(x: 150, y: 41.5), controlPoint1: CGPoint(x: 153.6, y: 34.2), controlPoint2: CGPoint(x: 151.1, y: 37.5))
        shape.addLine(to: CGPoint(x: 106, y: 0))
        shape.addCurve(to: CGPoint(x: 99.6, y: 31.4), controlPoint1: CGPoint(x: 104.9, y: 37.6), controlPoint2: CGPoint(x: 102.4, y: 34.3))
        shape.addCurve(to: CGPoint(x: 55.5, y: 8.3), controlPoint1: CGPoint(x: 87.6, y: 18.7), controlPoint2: CGPoint(x: 71.8, y: 11))
        shape.addCurve(to: CGPoint(x: 28.8, y: 11.6), controlPoint1: CGPoint(x: 46.5, y: 6.8), controlPoint2: CGPoint(x: 36.9, y: 6.8))
        shape.addCurve(to: CGPoint(x: 9, y: 33.6), controlPoint1: CGPoint(x: 20.4, y: 16.6), controlPoint2: CGPoint(x: 13.4, y: 24.2))
        shape.addCurve(to: CGPoint(x: 1.8, y: 68.2), controlPoint1: CGPoint(x: 3.6, y: 45), controlPoint2: CGPoint(x: 1.9, y: 57.7))
        shape.addLine(to: CGPoint(x: 0, y: 69))
        shape.addCurve(to: CGPoint(x: 17.1, y: 106.6), controlPoint1: CGPoint(x: 3, y: 82), controlPoint2: CGPoint(x: 9.2, y: 96.4))
        shape.addCurve(to: CGPoint(x: 36.5, y: 118.7), controlPoint1: CGPoint(x: 22.1, y: 112.9), controlPoint2: CGPoint(x: 29.2, y: 116.6))
        shape.addCurve(to: CGPoint(x: 66.3, y: 111.4), controlPoint1: CGPoint(x: 46.9, y: 121.7), controlPoint2: CGPoint(x: 59.7, y: 121))
        shape.addCurve(to: CGPoint(x: 70.9, y: 96.8), controlPoint1: CGPoint(x: 69.1, y: 107.3), controlPoint2: CGPoint(x: 70.3, y: 102))
        shape.addCurve(to: CGPoint(x: 68, y: 75.8), controlPoint1: CGPoint(x: 71.7, y: 89.6), controlPoint2: CGPoint(x: 71.5, y: 82))
        shape.addCurve(to: CGPoint(x: 51.2, y: 69.2), controlPoint1: CGPoint(x: 64.6, y: 69.7), controlPoint2: CGPoint(x: 57, y: 66))
        shape.addCurve(to: CGPoint(x: 46.4, y: 73.9), controlPoint1: CGPoint(x: 49.3, y: 70.2), controlPoint2: CGPoint(x: 47.7, y: 72))
        shape.addCurve(to: CGPoint(x: 43, y: 86.2), controlPoint1: CGPoint(x: 43.9, y: 77.4), controlPoint2: CGPoint(x: 42.2, y: 81.9))
        shape.addCurve(to: CGPoint(x: 51.6, y: 93.1), controlPoint1: CGPoint(x: 43.8, y: 90.6), controlPoint2: CGPoint(x: 47.8, y: 94.3))
        shape.addCurve(to: CGPoint(x: 56.3, y: 85.7), controlPoint1: CGPoint(x: 49.7, y: 89.9), controlPoint2: CGPoint(x: 52.9, y: 85.4))
        shape.addCurve(to: CGPoint(x: 62, y: 93.7), controlPoint1: CGPoint(x: 59.7, y: 86), controlPoint2: CGPoint(x: 62, y: 89.9))
        shape.addCurve(to: CGPoint(x: 58, y: 103.8), controlPoint1: CGPoint(x: 62, y: 97.4), controlPoint2: CGPoint(x: 60.2, y: 100.9))
        shape.addCurve(to: CGPoint(x: 47, y: 110.8), controlPoint1: CGPoint(x: 55.2, y: 107.4), controlPoint2: CGPoint(x: 51.3, y: 110.5))
        shape.addCurve(to: CGPoint(x: 32.5, y: 100.2), controlPoint1: CGPoint(x: 40.9, y: 111.2), controlPoint2: CGPoint(x: 35.5, y: 106.1))
        shape.addCurve(to: CGPoint(x: 30.7, y: 69.8), controlPoint1: CGPoint(x: 27.8, y: 91.1), controlPoint2: CGPoint(x: 27.1, y: 79.5))
        shape.addCurve(to: CGPoint(x: 51.5, y: 50), controlPoint1: CGPoint(x: 34.3, y: 60.2), controlPoint2: CGPoint(x: 42.3, y: 52.6))
        shape.addCurve(to: CGPoint(x: 60.3, y: 49.4), controlPoint1: CGPoint(x: 54.4, y: 49.2), controlPoint2: CGPoint(x: 57.4, y: 48.9))
        shape.addCurve(to: CGPoint(x: 78.5, y: 66.7), controlPoint1: CGPoint(x: 68.4, y: 51), controlPoint2: CGPoint(x: 74, y: 58.8))
        shape.addLine(to: CGPoint(x: 0, y: 230.7))
        shape.addCurve(to: CGPoint(x: 96.4, y: 248.5), controlPoint1: CGPoint(x: 78.5, y: 240.6), controlPoint2: CGPoint(x: 86.5, y: 248.5))
        shape.addLine(to: CGPoint(x: 159.9, y: 0))
        shape.addCurve(to: CGPoint(x: 177.8, y: 230.7), controlPoint1: CGPoint(x: 169.8, y: 248.5), controlPoint2: CGPoint(x: 177.8, y: 240.5))
        shape.addLine(to: CGPoint(x: 0, y: 66.2))
        shape.addCurve(to: CGPoint(x: 195.8, y: 49.4), controlPoint1: CGPoint(x: 182.3, y: 58.5), controlPoint2: CGPoint(x: 187.8, y: 51))
        shape.addCurve(to: CGPoint(x: 204.6, y: 50), controlPoint1: CGPoint(x: 198.7, y: 48.9), controlPoint2: CGPoint(x: 201.7, y: 49.2))
        shape.addCurve(to: CGPoint(x: 225.4, y: 69.8), controlPoint1: CGPoint(x: 213.8, y: 52.6), controlPoint2: CGPoint(x: 221.8, y: 60.2))
        shape.addCurve(to: CGPoint(x: 223.6, y: 100.2), controlPoint1: CGPoint(x: 229, y: 79.5), controlPoint2: CGPoint(x: 228.3, y: 91.1))
        shape.addCurve(to: CGPoint(x: 209.1, y: 110.8), controlPoint1: CGPoint(x: 220.6, y: 106.1), controlPoint2: CGPoint(x: 215.2, y: 111.2))
        shape.addCurve(to: CGPoint(x: 198.1, y: 103.8), controlPoint1: CGPoint(x: 204.8, y: 110.5), controlPoint2: CGPoint(x: 200.9, y: 107.4))
        shape.addCurve(to: CGPoint(x: 194.1, y: 93.7), controlPoint1: CGPoint(x: 195.9, y: 100.9), controlPoint2: CGPoint(x: 194.1, y: 97.4))
        shape.addCurve(to: CGPoint(x: 199.8, y: 85.7), controlPoint1: CGPoint(x: 194.1, y: 89.9), controlPoint2: CGPoint(x: 196.4, y: 86))
        shape.addCurve(to: CGPoint(x: 204.5, y: 93.1), controlPoint1: CGPoint(x: 203.2, y: 85.4), controlPoint2: CGPoint(x: 206.4, y: 89.9))
        shape.addCurve(to: CGPoint(x: 213.1, y: 86.2), controlPoint1: CGPoint(x: 208.3, y: 94.3), controlPoint2: CGPoint(x: 212.3, y: 90.6))
        shape.addCurve(to: CGPoint(x: 209.7, y: 73.9), controlPoint1: CGPoint(x: 213.9, y: 81.9), controlPoint2: CGPoint(x: 212.2, y: 77.4))
        shape.addCurve(to: CGPoint(x: 204.9, y: 69.2), controlPoint1: CGPoint(x: 208.4, y: 72), controlPoint2: CGPoint(x: 206.8, y: 70.2))
        shape.addCurve(to: CGPoint(x: 188.1, y: 75.8), controlPoint1: CGPoint(x: 199.1, y: 66), controlPoint2: CGPoint(x: 191.5, y: 69.7))
        shape.addCurve(to: CGPoint(x: 185.2, y: 96.8), controlPoint1: CGPoint(x: 184.6, y: 82), controlPoint2: CGPoint(x: 184.4, y: 89.6))
        shape.addCurve(to: CGPoint(x: 189.8, y: 111.4), controlPoint1: CGPoint(x: 185.8, y: 102), controlPoint2: CGPoint(x: 187, y: 107.3))
        shape.addCurve(to: CGPoint(x: 219.6, y: 118.7), controlPoint1: CGPoint(x: 196.4, y: 121), controlPoint2: CGPoint(x: 209.2, y: 121.7))
        shape.addCurve(to: CGPoint(x: 239, y: 106.6), controlPoint1: CGPoint(x: 226.9, y: 116.6), controlPoint2: CGPoint(x: 234, y: 112.9))
        shape.addCurve(to: CGPoint(x: 254.2, y: 69), controlPoint1: CGPoint(x: 246.8, y: 96.4), controlPoint2: CGPoint(x: 253, y: 82))
        shape.addLine(to: CGPoint(x: 0, y: 68.2))
        shape.addCurve(to: CGPoint(x: 247, y: 33.6), controlPoint1: CGPoint(x: 254.1, y: 57.6), controlPoint2: CGPoint(x: 252.4, y: 45))
        shape.close()
        shape.move(to: CGPoint(x: 168.5, y: 229.5))
        shape.addCurve(to: CGPoint(x: 158.3, y: 239.7), controlPoint1: CGPoint(x: 168.5, y: 235.2), controlPoint2: CGPoint(x: 163.9, y: 239.7))
        shape.addLine(to: CGPoint(x: 98.1, y: 0))
        shape.addCurve(to: CGPoint(x: 87.9, y: 229.5), controlPoint1: CGPoint(x: 92.4, y: 239.7), controlPoint2: CGPoint(x: 87.9, y: 235.1))
        shape.addLine(to: CGPoint(x: 0, y: 60.5))
        shape.addCurve(to: CGPoint(x: 98.1, y: 50.3), controlPoint1: CGPoint(x: 87.9, y: 54.8), controlPoint2: CGPoint(x: 92.5, y: 50.3))
        shape.addLine(to: CGPoint(x: 158.3, y: 0))
        shape.addCurve(to: CGPoint(x: 168.5, y: 60.5), controlPoint1: CGPoint(x: 164, y: 50.3), controlPoint2: CGPoint(x: 168.5, y: 54.9))
        shape.addLine(to: CGPoint(x: 0, y: 229.5))
        shape.close()
        return shape
    }
    
    static var AppTeam2: UIBezierPath {
        let shape = UIBezierPath()
        shape.move(to: CGPoint(x: 159.79, y: 40.71))
        shape.addLine(to: CGPoint(x: 96.51, y: 0))
        
        shape.addArc(withCenter: CGPoint(x: 78.18, y: 59), radius: CGFloat(18.33), startAngle: 0, endAngle: 360, clockwise: false)
        shape.addLine(to: CGPoint(x: 0, y: 231))
        shape.addArc(withCenter: CGPoint(x: 96.51, y: 249.33), radius: CGFloat(18.33), startAngle: 0, endAngle: 360, clockwise: false)
        shape.addLine(to: CGPoint(x: 159.79, y: 0))
        shape.addArc(withCenter: CGPoint(x: 178.12, y: 231), radius: CGFloat(18.33), startAngle: 0, endAngle: 360, clockwise: false)
        shape.addLine(to: CGPoint(x: 0, y: 59))
        shape.addArc(withCenter: CGPoint(x: 159.79, y: 40.71), radius: CGFloat(18.33), startAngle: 0, endAngle: 360, clockwise: false)
        shape.close()
        shape.move(to: CGPoint(x: 168.17, y: 230.84))
        shape.addArc(withCenter: CGPoint(x: 159.35, y: 239.66), radius: CGFloat(8.82), startAngle: 0, endAngle: 360, clockwise: true)
        shape.addLine(to: CGPoint(x: 97, y: 0))
        shape.addArc(withCenter: CGPoint(x: 88.18, y: 230.84), radius: CGFloat(8.82), startAngle: 0, endAngle: 360, clockwise: true)
        shape.addLine(to: CGPoint(x: 0, y: 59.16))
        shape.addArc(withCenter: CGPoint(x: 97, y: 50.34), radius: CGFloat(8.82), startAngle: 0, endAngle: 360, clockwise: true)
        shape.addLine(to: CGPoint(x: 159.4, y: 0))
        shape.addArc(withCenter: CGPoint(x: 168.22, y: 59.16), radius: CGFloat(8.82), startAngle: 0, endAngle: 360, clockwise: true)
        shape.close()
        return shape
    }
    
    static var AppTeam3: UIBezierPath {
        let shape = UIBezierPath()
        shape.move(to: CGPoint(x: 247, y: 33.6))
        shape.addCurve(to: CGPoint(x: 227.2, y: 11.6), controlPoint1: CGPoint(x: 242.6, y: 24.2), controlPoint2: CGPoint(x: 235.6, y: 16.6))
        shape.addCurve(to: CGPoint(x: 200.5, y: 8.3), controlPoint1: CGPoint(x: 219.1, y: 6.8), controlPoint2: CGPoint(x: 209.5, y: 6.8))
        shape.addCurve(to: CGPoint(x: 156.4, y: 31.4), controlPoint1: CGPoint(x: 184.2, y: 11), controlPoint2: CGPoint(x: 168.4, y: 18.7))
        shape.addCurve(to: CGPoint(x: 150, y: 41.5), controlPoint1: CGPoint(x: 153.6, y: 34.2), controlPoint2: CGPoint(x: 151.1, y: 37.5))
        shape.addLine(to: CGPoint(x: 106, y: 0))
        shape.addCurve(to: CGPoint(x: 99.6, y: 31.4), controlPoint1: CGPoint(x: 104.9, y: 37.6), controlPoint2: CGPoint(x: 102.4, y: 34.3))
        shape.addCurve(to: CGPoint(x: 55.5, y: 8.3), controlPoint1: CGPoint(x: 87.6, y: 18.7), controlPoint2: CGPoint(x: 71.8, y: 11))
        shape.addCurve(to: CGPoint(x: 28.8, y: 11.6), controlPoint1: CGPoint(x: 46.5, y: 6.8), controlPoint2: CGPoint(x: 36.9, y: 6.8))
        shape.addCurve(to: CGPoint(x: 9, y: 33.6), controlPoint1: CGPoint(x: 20.4, y: 16.6), controlPoint2: CGPoint(x: 13.4, y: 24.2))
        shape.addCurve(to: CGPoint(x: 1.8, y: 68.2), controlPoint1: CGPoint(x: 3.6, y: 45), controlPoint2: CGPoint(x: 1.9, y: 57.7))
        shape.addLine(to: CGPoint(x: 0, y: 69))
        shape.addCurve(to: CGPoint(x: 17.1, y: 106.6), controlPoint1: CGPoint(x: 3, y: 82), controlPoint2: CGPoint(x: 9.2, y: 96.4))
        shape.addCurve(to: CGPoint(x: 36.5, y: 118.7), controlPoint1: CGPoint(x: 22.1, y: 112.9), controlPoint2: CGPoint(x: 29.2, y: 116.6))
        shape.addCurve(to: CGPoint(x: 66.3, y: 111.4), controlPoint1: CGPoint(x: 46.9, y: 121.7), controlPoint2: CGPoint(x: 59.7, y: 121))
        shape.addCurve(to: CGPoint(x: 70.9, y: 96.8), controlPoint1: CGPoint(x: 69.1, y: 107.3), controlPoint2: CGPoint(x: 70.3, y: 102))
        shape.addCurve(to: CGPoint(x: 68, y: 75.8), controlPoint1: CGPoint(x: 71.7, y: 89.6), controlPoint2: CGPoint(x: 71.5, y: 82))
        shape.addCurve(to: CGPoint(x: 51.2, y: 69.2), controlPoint1: CGPoint(x: 64.6, y: 69.7), controlPoint2: CGPoint(x: 57, y: 66))
        shape.addCurve(to: CGPoint(x: 46.4, y: 73.9), controlPoint1: CGPoint(x: 49.3, y: 70.2), controlPoint2: CGPoint(x: 47.7, y: 72))
        shape.addCurve(to: CGPoint(x: 43, y: 86.2), controlPoint1: CGPoint(x: 43.9, y: 77.4), controlPoint2: CGPoint(x: 42.2, y: 81.9))
        shape.addCurve(to: CGPoint(x: 51.6, y: 93.1), controlPoint1: CGPoint(x: 43.8, y: 90.6), controlPoint2: CGPoint(x: 47.8, y: 94.3))
        shape.close()

//        shape.addCurve(to: CGPoint(x: 56.3, y: 85.7), controlPoint1: CGPoint(x: 49.7, y: 89.9), controlPoint2: CGPoint(x: 52.9, y: 85.4))
//        shape.addCurve(to: CGPoint(x: 62, y: 93.7), controlPoint1: CGPoint(x: 59.7, y: 86), controlPoint2: CGPoint(x: 62, y: 89.9))
//        shape.addCurve(to: CGPoint(x: 58, y: 103.8), controlPoint1: CGPoint(x: 62, y: 97.4), controlPoint2: CGPoint(x: 60.2, y: 100.9))
//        shape.addCurve(to: CGPoint(x: 47, y: 110.8), controlPoint1: CGPoint(x: 55.2, y: 107.4), controlPoint2: CGPoint(x: 51.3, y: 110.5))
//        shape.addCurve(to: CGPoint(x: 32.5, y: 100.2), controlPoint1: CGPoint(x: 40.9, y: 111.2), controlPoint2: CGPoint(x: 35.5, y: 106.1))
//        shape.addCurve(to: CGPoint(x: 30.7, y: 69.8), controlPoint1: CGPoint(x: 27.8, y: 91.1), controlPoint2: CGPoint(x: 27.1, y: 79.5))
//        shape.addCurve(to: CGPoint(x: 51.5, y: 50), controlPoint1: CGPoint(x: 34.3, y: 60.2), controlPoint2: CGPoint(x: 42.3, y: 52.6))
//        shape.addCurve(to: CGPoint(x: 60.3, y: 49.4), controlPoint1: CGPoint(x: 54.4, y: 49.2), controlPoint2: CGPoint(x: 57.4, y: 48.9))
//        shape.addCurve(to: CGPoint(x: 78.5, y: 66.7), controlPoint1: CGPoint(x: 68.4, y: 51), controlPoint2: CGPoint(x: 74, y: 58.8))
//        shape.addLine(to: CGPoint(x: 0, y: 230.7))
//        shape.addCurve(to: CGPoint(x: 96.4, y: 248.5), controlPoint1: CGPoint(x: 78.5, y: 240.6), controlPoint2: CGPoint(x: 86.5, y: 248.5))
//        shape.addLine(to: CGPoint(x: 159.9, y: 0))
//        shape.addCurve(to: CGPoint(x: 177.8, y: 230.7), controlPoint1: CGPoint(x: 169.8, y: 248.5), controlPoint2: CGPoint(x: 177.8, y: 240.5))

//        shape.addLine(to: CGPoint(x: 0, y: 66.2))
//        shape.addCurve(to: CGPoint(x: 195.8, y: 49.4), controlPoint1: CGPoint(x: 182.3, y: 58.5), controlPoint2: CGPoint(x: 187.8, y: 51))
//        shape.addCurve(to: CGPoint(x: 204.6, y: 50), controlPoint1: CGPoint(x: 198.7, y: 48.9), controlPoint2: CGPoint(x: 201.7, y: 49.2))
//        shape.addCurve(to: CGPoint(x: 225.4, y: 69.8), controlPoint1: CGPoint(x: 213.8, y: 52.6), controlPoint2: CGPoint(x: 221.8, y: 60.2))
//        shape.addCurve(to: CGPoint(x: 223.6, y: 100.2), controlPoint1: CGPoint(x: 229, y: 79.5), controlPoint2: CGPoint(x: 228.3, y: 91.1))
//        shape.addCurve(to: CGPoint(x: 209.1, y: 110.8), controlPoint1: CGPoint(x: 220.6, y: 106.1), controlPoint2: CGPoint(x: 215.2, y: 111.2))
//        shape.addCurve(to: CGPoint(x: 198.1, y: 103.8), controlPoint1: CGPoint(x: 204.8, y: 110.5), controlPoint2: CGPoint(x: 200.9, y: 107.4))
//        shape.addCurve(to: CGPoint(x: 194.1, y: 93.7), controlPoint1: CGPoint(x: 195.9, y: 100.9), controlPoint2: CGPoint(x: 194.1, y: 97.4))
//        shape.addCurve(to: CGPoint(x: 199.8, y: 85.7), controlPoint1: CGPoint(x: 194.1, y: 89.9), controlPoint2: CGPoint(x: 196.4, y: 86))
//        shape.addCurve(to: CGPoint(x: 204.5, y: 93.1), controlPoint1: CGPoint(x: 203.2, y: 85.4), controlPoint2: CGPoint(x: 206.4, y: 89.9))
//        shape.addCurve(to: CGPoint(x: 213.1, y: 86.2), controlPoint1: CGPoint(x: 208.3, y: 94.3), controlPoint2: CGPoint(x: 212.3, y: 90.6))
//        shape.addCurve(to: CGPoint(x: 209.7, y: 73.9), controlPoint1: CGPoint(x: 213.9, y: 81.9), controlPoint2: CGPoint(x: 212.2, y: 77.4))

//        shape.addCurve(to: CGPoint(x: 204.9, y: 69.2), controlPoint1: CGPoint(x: 208.4, y: 72), controlPoint2: CGPoint(x: 206.8, y: 70.2))
//        shape.addCurve(to: CGPoint(x: 188.1, y: 75.8), controlPoint1: CGPoint(x: 199.1, y: 66), controlPoint2: CGPoint(x: 191.5, y: 69.7))
//        shape.addCurve(to: CGPoint(x: 185.2, y: 96.8), controlPoint1: CGPoint(x: 184.6, y: 82), controlPoint2: CGPoint(x: 184.4, y: 89.6))
//        shape.addCurve(to: CGPoint(x: 189.8, y: 111.4), controlPoint1: CGPoint(x: 185.8, y: 102), controlPoint2: CGPoint(x: 187, y: 107.3))
//        shape.addCurve(to: CGPoint(x: 219.6, y: 118.7), controlPoint1: CGPoint(x: 196.4, y: 121), controlPoint2: CGPoint(x: 209.2, y: 121.7))
//        shape.addCurve(to: CGPoint(x: 239, y: 106.6), controlPoint1: CGPoint(x: 226.9, y: 116.6), controlPoint2: CGPoint(x: 234, y: 112.9))
//        shape.addCurve(to: CGPoint(x: 254.2, y: 69), controlPoint1: CGPoint(x: 246.8, y: 96.4), controlPoint2: CGPoint(x: 253, y: 82))
//        shape.addLine(to: CGPoint(x: 0, y: 68.2))
//        shape.addCurve(to: CGPoint(x: 247, y: 33.6), controlPoint1: CGPoint(x: 254.1, y: 57.6), controlPoint2: CGPoint(x: 252.4, y: 45))
//        shape.close()
        
//        shape.move(to: CGPoint(x: 168.5, y: 229.5))
//        shape.addCurve(to: CGPoint(x: 158.3, y: 239.7), controlPoint1: CGPoint(x: 168.5, y: 235.2), controlPoint2: CGPoint(x: 163.9, y: 239.7))
//        shape.addLine(to: CGPoint(x: 98.1, y: 0))
//        shape.addCurve(to: CGPoint(x: 87.9, y: 229.5), controlPoint1: CGPoint(x: 92.4, y: 239.7), controlPoint2: CGPoint(x: 87.9, y: 235.1))
//        shape.addLine(to: CGPoint(x: 0, y: 60.5))
//        shape.addCurve(to: CGPoint(x: 98.1, y: 50.3), controlPoint1: CGPoint(x: 87.9, y: 54.8), controlPoint2: CGPoint(x: 92.5, y: 50.3))
//        shape.addLine(to: CGPoint(x: 158.3, y: 0))
//        shape.addCurve(to: CGPoint(x: 168.5, y: 60.5), controlPoint1: CGPoint(x: 164, y: 50.3), controlPoint2: CGPoint(x: 168.5, y: 54.9))
//        shape.addLine(to: CGPoint(x: 0, y: 229.5))
//        shape.close()
        
        return shape
    }
    
    
    
//    static var testShape1: UIBezierPath {
//
//    }
//
//    static var testShape2: UIBezierPath {
//
//    }
    
    static var testShape3: UIBezierPath {
        let shape = UIBezierPath()
        shape.move(to: CGPoint(x: 238.4, y: 115.07))
        shape.addLine(to: CGPoint(x: 170.7, y: 0))
        shape.addArc(withCenter: CGPoint(x: 167.23, y: 117.07), radius: CGFloat(4), startAngle: 0, endAngle: 360, clockwise: false)
        shape.addLine(to: CGPoint(x: 133.37, y: 175.7))
        shape.addArc(withCenter: CGPoint(x: 133.37, y: 179.7), radius: CGFloat(4), startAngle: 0, endAngle: 360, clockwise: false)
        shape.addLine(to: CGPoint(x: 167.23, y: 238.34))
        shape.addArc(withCenter: CGPoint(x: 170.7, y: 240.34), radius: CGFloat(4), startAngle: 0, endAngle: 360, clockwise: false)
        shape.addLine(to: CGPoint(x: 238.4, y: 0))
        shape.addArc(withCenter: CGPoint(x: 241.87, y: 238.34), radius: CGFloat(4), startAngle: 0, endAngle: 360, clockwise: false)
        shape.addLine(to: CGPoint(x: 275.73, y: 179.7))
        shape.addArc(withCenter: CGPoint(x: 275.73, y: 175.7), radius: CGFloat(4), startAngle: 0, endAngle: 360, clockwise: false)
        shape.addLine(to: CGPoint(x: 241.87, y: 117.07))
        shape.addArc(withCenter: CGPoint(x: 238.4, y: 115.07), radius: CGFloat(4), startAngle: 0, endAngle: 360, clockwise: false)
        shape.close()
        return shape
    }
    
    static var testShapeX: UIBezierPath {
        let shape = UIBezierPath()
        shape.move(to: CGPoint(x: 240.8, y: 218.2))
        shape.addCurve(to: CGPoint(x: 380.3, y: 299.6), controlPoint1: CGPoint(x: 285.9, y: 196.6), controlPoint2: CGPoint(x: 358, y: 240.1))
        shape.addCurve(to: CGPoint(x: 333.8, y: 449.6), controlPoint1: CGPoint(x: 402.8, y: 359.5), controlPoint2: CGPoint(x: 375.6, y: 437.2))
        shape.addCurve(to: CGPoint(x: 198.9, y: 300.8), controlPoint1: CGPoint(x: 281.5, y: 465.2), controlPoint2: CGPoint(x: 196.6, y: 381.4))
        shape.addCurve(to: CGPoint(x: 240.8, y: 218.2), controlPoint1: CGPoint(x: 199.1, y: 297.2), controlPoint2: CGPoint(x: 201.6, y: 237))
        shape.close()
        return shape
    }
    
    static var testShapeY: UIBezierPath {
        let shape = UIBezierPath()
        shape.move(to: CGPoint(x: 290.7, y: 420.1))
        shape.addCurve(to: CGPoint(x: 273.7, y: 419.1), controlPoint1: CGPoint(x: 289.9, y: 418.2), controlPoint2: CGPoint(x: 280.4, y: 423.7))
        shape.addCurve(to: CGPoint(x: 270.7, y: 394.1), controlPoint1: CGPoint(x: 266.8, y: 414.3), controlPoint2: CGPoint(x: 265, y: 400.3))
        shape.addCurve(to: CGPoint(x: 306.7, y: 401.1), controlPoint1: CGPoint(x: 278.1, y: 386), controlPoint2: CGPoint(x: 298.7, y: 390.3))
        shape.addCurve(to: CGPoint(x: 284.7, y: 459.1), controlPoint1: CGPoint(x: 318.2, y: 416.6), controlPoint2: CGPoint(x: 307.6, y: 450.8))
        shape.addCurve(to: CGPoint(x: 229.7, y: 428.1), controlPoint1: CGPoint(x: 262.7, y: 467.1), controlPoint2: CGPoint(x: 238.8, y: 447.5))
        shape.addCurve(to: CGPoint(x: 234.7, y: 372.1), controlPoint1: CGPoint(x: 218.6, y: 404.2), controlPoint2: CGPoint(x: 230.7, y: 380.2))
        shape.addCurve(to: CGPoint(x: 300.7, y: 326.1), controlPoint1: CGPoint(x: 246, y: 349.5), controlPoint2: CGPoint(x: 270.6, y: 327.4))
        shape.addCurve(to: CGPoint(x: 384.7, y: 413.1), controlPoint1: CGPoint(x: 350.2, y: 324), controlPoint2: CGPoint(x: 393.4, y: 379.3))
        shape.addCurve(to: CGPoint(x: 349.7, y: 442.1), controlPoint1: CGPoint(x: 380.2, y: 430.7), controlPoint2: CGPoint(x: 360.7, y: 445.8))
        shape.addCurve(to: CGPoint(x: 321.7, y: 379.1), controlPoint1: CGPoint(x: 334.5, y: 437), controlPoint2: CGPoint(x: 346.2, y: 399.6))
        shape.addCurve(to: CGPoint(x: 277.7, y: 370.1), controlPoint1: CGPoint(x: 310, y: 369.4), controlPoint2: CGPoint(x: 292.8, y: 365.6))
        shape.addCurve(to: CGPoint(x: 246.7, y: 404.1), controlPoint1: CGPoint(x: 264, y: 374.2), controlPoint2: CGPoint(x: 247.6, y: 386.6))
        shape.addCurve(to: CGPoint(x: 262.7, y: 433.1), controlPoint1: CGPoint(x: 246.2, y: 414.1), controlPoint2: CGPoint(x: 250.5, y: 429.4))
        shape.addCurve(to: CGPoint(x: 290.7, y: 420.1), controlPoint1: CGPoint(x: 276.9, y: 437.4), controlPoint2: CGPoint(x: 291.7, y: 422.5))
        shape.close()
        return shape
    }
    
}
