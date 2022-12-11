@_private(sourceFile: "ContentView.swift") import sensorData
import SwiftUI
import SwiftUI

extension ContentView_Previews {
    @_dynamicReplacement(for: previews) private static var __preview__previews: some View {
        #sourceLocation(file: "/Users/ApplePro/Desktop/School/PostGrad/iosDev/sensorData/sensorData/ContentView.swift", line: 90)
        ContentView()
    
#sourceLocation()
    }
}

extension ContentView {
    @_dynamicReplacement(for: body) private var __preview__body: some View {
        #sourceLocation(file: "/Users/ApplePro/Desktop/School/PostGrad/iosDev/sensorData/sensorData/ContentView.swift", line: 20)
        VStack {
            Button(__designTimeString("#6281.[2].[3].property.[0].[0].arg[0].value.[0].arg[0].value", fallback: "Show Data!")){
                showingData.toggle()
                imuDataSample.updateImuData()
                readingAccelData = imuDataSample.getAccelData()
                readingGyroData = imuDataSample.getGyroData()
            }
            .buttonStyle(.borderedProminent)
        }
        .padding()
        VStack{
            Text(__designTimeString("#6281.[2].[3].property.[0].[1].arg[0].value.[0].arg[0].value", fallback: "Accel Data"))
                .font(.title).padding()
            HStack{
                Text("x: \(readingAccelData.x, specifier: __designTimeString("#6281.[2].[3].property.[0].[1].arg[0].value.[1].arg[0].value.[0].arg[0].value.[1].value.arg[1].value", fallback: "%.2f"))")
                    .padding()
                Text("y: \(readingAccelData.y, specifier: __designTimeString("#6281.[2].[3].property.[0].[1].arg[0].value.[1].arg[0].value.[1].arg[0].value.[1].value.arg[1].value", fallback: "%.2f"))")
                    .padding()
                Text("z: \(readingAccelData.z, specifier: __designTimeString("#6281.[2].[3].property.[0].[1].arg[0].value.[1].arg[0].value.[2].arg[0].value.[1].value.arg[1].value", fallback: "%.2f"))")
                    .padding()
            }
            Text(__designTimeString("#6281.[2].[3].property.[0].[1].arg[0].value.[2].arg[0].value", fallback: "Gyro Data"))
                .font(.title).padding()
            HStack{
                Text("x: \(readingGyroData.x, specifier: __designTimeString("#6281.[2].[3].property.[0].[1].arg[0].value.[3].arg[0].value.[0].arg[0].value.[1].value.arg[1].value", fallback: "%.2f"))")
                    .padding()
                Text("y: \(readingGyroData.y, specifier: __designTimeString("#6281.[2].[3].property.[0].[1].arg[0].value.[3].arg[0].value.[1].arg[0].value.[1].value.arg[1].value", fallback: "%.2f"))")
                    .padding()
                Text("z: \(readingGyroData.z, specifier: __designTimeString("#6281.[2].[3].property.[0].[1].arg[0].value.[3].arg[0].value.[2].arg[0].value.[1].value.arg[1].value", fallback: "%.2f"))")
                    .padding()
            }
        }
        
//        .sheet(isPresented: $showingData){
//            DataSheetView().presentationDetents([.fraction(0.5)])
//       }
        
    
#sourceLocation()
    }
}

import struct sensorData.ContentView
import struct sensorData.ContentView_Previews
