//
//  AlarmsView.swift
//  Clock
//
//  Created by Skye Willow Harris-Stoertz on 2024-12-06.
//

import SwiftUI

struct AlarmsView: View {
    var body: some View {
        NavigationStack{
            VStack{
                HStack{
                    Image(systemName: "bed.double.fill")
                    Text("Sleep | Wake Up")
                }
                
                HStack{
                    // Left side
                    Text("7:30")
                        .font(.system(size: 64.0, weight: .thin, design: .default))
                    Text("AM")
                        .font(.system(.largeTitle, design: .default, weight: .thin))
                    
                    Spacer()
                    
                    // Right side
                    Toggle("", isOn: Binding.constant(true))
                }
                .padding()
            }
            .navigationTitle("Alarms")
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
    AlarmsView()
}
