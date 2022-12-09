//
//  ContentView.swift
//  sensorData
//
//  Created by Amir Ali on 12/6/22.
//

import SwiftUI

var imuDataSample = imuDataManager()
var readingAccelData = imuData(x:0,y:0,z:0)
var readingGyroData = imuData(x:0,y:0,z:0)



struct ContentView: View {
    @State var showingData = false
    var body: some View {
        VStack {
            Button("Show Data!"){
                showingData.toggle()
                imuDataSample.updateImuData()
                readingAccelData = imuDataSample.getAccelData()
                readingGyroData = imuDataSample.getGyroData()
            }
            .buttonStyle(.borderedProminent)
        }
        .padding()
        .sheet(isPresented: $showingData){
            DataSheetView().presentationDetents([.fraction(0.5)])
        }
    }
}

struct DataSheetView: View {
    var body: some View{
        VStack{
            Text("Accel Data")
                .font(.title).padding()
            HStack{
                Text("x: \(readingAccelData.x, specifier: "%.2f")")
                    .padding()
                Text("y: \(readingAccelData.y, specifier: "%.2f")")
                    .padding()
                Text("z: \(readingAccelData.z, specifier: "%.2f")")
                    .padding()
            }
            Text("Gyro Data")
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
