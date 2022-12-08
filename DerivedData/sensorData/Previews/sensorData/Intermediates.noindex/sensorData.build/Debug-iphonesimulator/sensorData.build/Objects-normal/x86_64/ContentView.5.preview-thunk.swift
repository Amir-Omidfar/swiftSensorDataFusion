@_private(sourceFile: "ContentView.swift") import sensorData
import SwiftUI
import SwiftUI

extension ContentView_Previews {
    @_dynamicReplacement(for: previews) private static var __preview__previews: some View {
        #sourceLocation(file: "/Users/ApplePro/Desktop/School/PostGrad/iosDev/sensorData/sensorData/ContentView.swift", line: 45)
        __designTimeSelection(ContentView(), "#2169.[3].[0].property.[0].[0]")
    
#sourceLocation()
    }
}

extension DataSheetView {
    @_dynamicReplacement(for: body) private var __preview__body: some View {
        #sourceLocation(file: "/Users/ApplePro/Desktop/School/PostGrad/iosDev/sensorData/sensorData/ContentView.swift", line: 29)
        __designTimeSelection(Text(__designTimeString("#2169.[2].[0].property.[0].[0].arg[0].value", fallback: "Data"))
            .font(.title), "#2169.[2].[0].property.[0].[0]")
        __designTimeSelection(HStack{
            __designTimeSelection(Text(__designTimeString("#2169.[2].[0].property.[0].[1].arg[0].value.[0].arg[0].value", fallback: "acceleration in x"))
                .padding(), "#2169.[2].[0].property.[0].[1].arg[0].value.[0]")
            __designTimeSelection(Text(__designTimeString("#2169.[2].[0].property.[0].[1].arg[0].value.[1].arg[0].value", fallback: "acceleration in x"))
                .padding(), "#2169.[2].[0].property.[0].[1].arg[0].value.[1]")
            __designTimeSelection(Text(__designTimeString("#2169.[2].[0].property.[0].[1].arg[0].value.[2].arg[0].value", fallback: "acceleration in x"))
                .padding(), "#2169.[2].[0].property.[0].[1].arg[0].value.[2]")
        }, "#2169.[2].[0].property.[0].[1]")
    
#sourceLocation()
    }
}

extension ContentView {
    @_dynamicReplacement(for: body) private var __preview__body: some View {
        #sourceLocation(file: "/Users/ApplePro/Desktop/School/PostGrad/iosDev/sensorData/sensorData/ContentView.swift", line: 14)
        __designTimeSelection(VStack {
            __designTimeSelection(Button(__designTimeString("#2169.[1].[1].property.[0].[0].arg[0].value.[0].arg[0].value", fallback: "Show Data!")){
                __designTimeSelection(showingData.toggle(), "#2169.[1].[1].property.[0].[0].arg[0].value.[0].arg[1].value.[0]")
            }
            .buttonStyle(.borderedProminent), "#2169.[1].[1].property.[0].[0].arg[0].value.[0]")
        }
        .padding()
        .sheet(isPresented: __designTimeSelection($showingData, "#2169.[1].[1].property.[0].[0].modifier[1].arg[0].value")){
            __designTimeSelection(DataSheetView().presentationDetents([.fraction(__designTimeFloat("#2169.[1].[1].property.[0].[0].modifier[1].arg[1].value.[0].modifier[0].arg[0].value.[0].arg[0].value", fallback: 0.2))]), "#2169.[1].[1].property.[0].[0].modifier[1].arg[1].value.[0]")
        }, "#2169.[1].[1].property.[0].[0]")
    
#sourceLocation()
    }
}

import struct sensorData.ContentView
import struct sensorData.DataSheetView
import struct sensorData.ContentView_Previews
