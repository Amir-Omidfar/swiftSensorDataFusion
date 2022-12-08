@_private(sourceFile: "ContentView.swift") import sensorData
import SwiftUI
import SwiftUI

extension ContentView_Previews {
    @_dynamicReplacement(for: previews) private static var __preview__previews: some View {
        #sourceLocation(file: "/Users/ApplePro/Desktop/School/PostGrad/iosDev/sensorData/sensorData/ContentView.swift", line: 51)
        ContentView()
    
#sourceLocation()
    }
}

extension DataSheetView {
    @_dynamicReplacement(for: body) private var __preview__body: some View {
        #sourceLocation(file: "/Users/ApplePro/Desktop/School/PostGrad/iosDev/sensorData/sensorData/ContentView.swift", line: 35)
        Text(__designTimeString("#6323.[4].[0].property.[0].[0].arg[0].value", fallback: "Data"))
            .font(.title)
        HStack{
            Text("x: \(readingAccelData.x, specifier: __designTimeString("#6323.[4].[0].property.[0].[1].arg[0].value.[0].arg[0].value.[1].value.arg[1].value", fallback: "%.2f"))")
                .padding()
            Text("y: \(readingAccelData.y, specifier: __designTimeString("#6323.[4].[0].property.[0].[1].arg[0].value.[1].arg[0].value.[1].value.arg[1].value", fallback: "%.2f"))")
                .padding()
            Text("z: \(readingAccelData.z, specifier: __designTimeString("#6323.[4].[0].property.[0].[1].arg[0].value.[2].arg[0].value.[1].value.arg[1].value", fallback: "%.2f"))")
                .padding()
        }
    
#sourceLocation()
    }
}

extension ContentView {
    @_dynamicReplacement(for: body) private var __preview__body: some View {
        #sourceLocation(file: "/Users/ApplePro/Desktop/School/PostGrad/iosDev/sensorData/sensorData/ContentView.swift", line: 18)
        VStack {
            Button(__designTimeString("#6323.[3].[1].property.[0].[0].arg[0].value.[0].arg[0].value", fallback: "Show Data!")){
                showingData.toggle()
                imuDataSample.updateAccelData()
                readingAccelData = imuDataSample.getAccelData()
            }
            .buttonStyle(.borderedProminent)
        }
        .padding()
        .sheet(isPresented: $showingData){
            DataSheetView().presentationDetents([.fraction(__designTimeFloat("#6323.[3].[1].property.[0].[0].modifier[1].arg[1].value.[0].modifier[0].arg[0].value.[0].arg[0].value", fallback: 0.2))])
        }
    
#sourceLocation()
    }
}

import struct sensorData.ContentView
import struct sensorData.DataSheetView
import struct sensorData.ContentView_Previews
