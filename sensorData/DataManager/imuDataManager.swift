//
//  imuDataManager.swift
//  sensorData
//
//  Created by Amir Ali on 12/7/22.
//


import Foundation
import CoreMotion

struct imuData{
    var x: Double
    var y: Double
    var z: Double
}

class imuDataManager: CMMotionManager {
    let motionManager = CMMotionManager()
    var imuAccelData = imuData(x:0,y:0,z:0)
    var imuGyroData = imuData(x: 0, y: 0, z: 0)
    
    override init() {
        self.motionManager.accelerometerUpdateInterval = 1.0 / 60.0  // 60 Hz
        self.motionManager.startAccelerometerUpdates()
        self.motionManager.gyroUpdateInterval = 1.0 / 60.0
        self.motionManager.startGyroUpdates()
        
    }
    
    func updateImuData(){
        if (self.motionManager.isAccelerometerAvailable){
            self.imuAccelData.x=self.motionManager.accelerometerData?.acceleration.x ?? 0
            self.imuAccelData.y=self.motionManager.accelerometerData?.acceleration.y ?? 0
            self.imuAccelData.z=self.motionManager.accelerometerData?.acceleration.z ?? 0
        }
        if (self.motionManager.isGyroAvailable){
            self.imuGyroData.x=self.motionManager.gyroData?.rotationRate.x ?? 0
            self.imuGyroData.y=self.motionManager.gyroData?.rotationRate.y ?? 0
            self.imuGyroData.z=self.motionManager.gyroData?.rotationRate.z ?? 0
        }
        
        
    }
    
    func getAccelData() -> imuData{
        return self.imuAccelData
    }
    
    func getGyroData() -> imuData{
        return self.imuGyroData
    }
}
