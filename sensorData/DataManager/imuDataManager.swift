//
//  imuDataManager.swift
//  sensorData
//
//  Created by Amir Ali on 12/7/22.
//

import Foundation
import CoreMotion

struct AccelData{
    var x: Double
    var y: Double
    var z: Double
}

class imuDataManager: CMMotionManager {
    let motionManager = CMMotionManager()
    var imuAccelData = AccelData(x:0,y:0,z:0)
    
    override init() {
        motionManager.accelerometerUpdateInterval = 1.0 / 60.0  // 60 Hz
        motionManager.startAccelerometerUpdates()
        
    }
    
    func updateAccelData(){
        if (self.motionManager.isAccelerometerAvailable){
            self.imuAccelData.x=self.motionManager.accelerometerData?.acceleration.x ?? 0
            self.imuAccelData.y=self.motionManager.accelerometerData?.acceleration.y ?? 0
            self.imuAccelData.z=self.motionManager.accelerometerData?.acceleration.z ?? 0
        }
    }
    
    func getAccelData() -> AccelData{
        return self.imuAccelData
    }
    
}
