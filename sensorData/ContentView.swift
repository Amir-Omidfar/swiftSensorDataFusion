//
//  ContentView.swift
//  sensorData
//
//  Created by Amir Ali on 12/6/22.
//

import SwiftUI

var imuDataSample = imuDataManager()




struct ContentView: View {
    @State var showingData = false
    var body: some View {
        VStack {
                Button("Show Live IMU Data!"){
                        showingData.toggle()
                    }
                    .buttonStyle(.borderedProminent)
                }
                .padding()
                .sheet(isPresented: $showingData){
                    LiveImuData().presentationDetents([.fraction(0.5)])
                }
    }
}
    
    
struct LiveImuData: View {
    @State var readingAccelData = imuData(x:0,y:0,z:0)
    @State var readingGyroData = imuData(x:0,y:0,z:0)
    @State var currentDate = Date.now
    let timer = Timer.publish(every:0.2,on:.main,in:.common).autoconnect()
    
    var body: some View{
        VStack {
            Text("Live IMU Data Display").padding()
            Text("").onReceive(timer){
                input in currentDate=input
                imuDataSample.updateImuData()
                readingAccelData = imuDataSample.getAccelData()
                readingGyroData = imuDataSample.getGyroData()
            }.padding()
            Text("Accelerometer Data")
                .font(.title).padding()
            HStack{
                Text("x: \(readingAccelData.x, specifier: "%.2f")")
                    .padding()
                Text("y: \(readingAccelData.y, specifier: "%.2f")")
                    .padding()
                Text("z: \(readingAccelData.z, specifier: "%.2f")")
                    .padding()
            }
            Text("Gyroscope Data")
                .font(.title).padding()
            HStack{
                Text("x: \(readingGyroData.x, specifier: "%.2f")")
                    .padding()
                Text("y: \(readingGyroData.y, specifier: "%.2f")")
                    .padding()
                Text("z: \(readingGyroData.z, specifier: "%.2f")")
                    .padding()
            }
        }
    }
        
}
    
    
    
    

struct ContentView_Previews: PreviewProvider {
        static var previews: some View {
            ContentView()
        }
}

