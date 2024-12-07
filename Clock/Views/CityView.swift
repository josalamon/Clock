import SwiftUI

struct CityView: View {
    
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
                Text("Today, \(timeZoneOffset)HRS")
                Text(city)
                    .font(.system(.largeTitle, design: .default,weight: .thin))
            }
            
            Spacer()
            
            // Right side
            Text(time)
                .font(.system(size: 64.0, weight: .thin, design: .default))
            Text(amOrPm)
                .font(.system(.largeTitle,design: .default,weight: .thin))
            
        }

    }
}