//
//  WorldClockView.swift
//  Clock
//
//  Created by Skye Willow Harris-Stoertz on 2024-12-06.
//

import SwiftUI

struct WorldClockView: View {
    var body: some View {
        NavigationStack {
            VStack{
                // Ottawa
                ExtractedView(timeZoneOffset: "+0", city: "Ottawa", time: "6:35", amOrPm: "AM")
                
                // Vancouver
                HStack{
                    //Left side
                    VStack{
                        Text("Today, -3HRS")
                        Text("Vancouver")
                            .font(.system(.largeTitle, design: .default,weight: .thin))
                    }
                    
                    Spacer()
                    
                    // Right side
                    Text("6:35")
                        .font(.system(size: 64.0, weight: .thin, design: .default))
                    Text("AM")
                        .font(.system(.largeTitle,design: .default,weight: .thin))
                    
                }
                
            }
            .navigationTitle("World Clock")
            .toolbar {
                
                ToolbarItem(placement: .topBarLeading) {
                    
                    Button("Edit") {
                        // Does nothing right now
                    }
                    
                }
                
                ToolbarItem(placement: .primaryAction) {
                    
                    Button {
                        //Does nothing right now
                    } label: {
                        Image(systemName: "plus")
                    }
                    
                }
                
            }
            
        }
    }
}
#Preview {
    LandingView()
}

struct ExtractedView: View {
    
    // MARK: Stored Properties
    let timeZoneOffset: String
    let city: String
    let time: String
    let amOrPm: String
    
    //MARK: Computed Properties
    var body: some View {
        HStack{
            //Left side
            VStack{
                Text("Today, +0HRS")
                Text("Ottawa")
                    .font(.system(.largeTitle, design: .default,weight: .thin))
            }
            
            Spacer()
            
            // Right side
            Text("6:35")
                .font(.system(size: 64.0, weight: .thin, design: .default))
            Text("AM")
                .font(.system(.largeTitle,design: .default,weight: .thin))
            
        }
    }
}


