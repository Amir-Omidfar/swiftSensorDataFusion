@_private(sourceFile: "ContentView.swift") import sensorData
import SwiftUI
import SwiftUI

extension ContentView_Previews {
    @_dynamicReplacement(for: previews) private static var __preview__previews: some View {
        #sourceLocation(file: "/Users/ApplePro/Desktop/School/PostGrad/iosDev/sensorData/sensorData/ContentView.swift", line: 45)
        ContentView()
    
#sourceLocation()
    }
}

extension DataSheetView {
    @_dynamicReplacement(for: body) private var __preview__body: some View {
        #sourceLocation(file: "/Users/ApplePro/Desktop/School/PostGrad/iosDev/sensorData/sensorData/ContentView.swift", line: 29)
        Text(__designTimeString("#2169.[2].[0].property.[0].[0].arg[0].value", fallback: "Data"))
            .font(.title)
        HStack{
            Text(__designTimeString("#2169.[2].[0].property.[0].[1].arg[0].value.[0].arg[0].value", fallback: "acceleration in x"))
                .padding()
            Text(__designTimeString("#2169.[2].[0].property.[0].[1].arg[0].value.[1].arg[0].value", fallback: "acceleration in x"))
                .padding()
            Text(__designTimeString("#2169.[2].[0].property.[0].[1].arg[0].value.[2].arg[0].value", fallback: "acceleration in x"))
                .padding()
        }
    
#sourceLocation()
    }
}

extension ContentView {
    @_dynamicReplacement(for: body) private var __preview__body: some View {
        #sourceLocation(file: "/Users/ApplePro/Desktop/School/PostGrad/iosDev/sensorData/sensorData/ContentView.swift", line: 14)
        VStack {
            Button(__designTimeString("#2169.[1].[1].property.[0].[0].arg[0].value.[0].arg[0].value", fallback: "Show Data!")){
                showingData.toggle()
            }
            .buttonStyle(.borderedProminent)
        }
        .padding()
        .sheet(isPresented: $showingData){
            DataSheetView().presentationDetents([.fraction(__designTimeFloat("#2169.[1].[1].property.[0].[0].modifier[1].arg[1].value.[0].modifier[0].arg[0].value.[0].arg[0].value", fallback: 0.2))])
        }
    
#sourceLocation()
    }
}

import struct sensorData.ContentView
import struct sensorData.DataSheetView
import struct sensorData.ContentView_Previews
