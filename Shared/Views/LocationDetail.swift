//
//  LocationDetail.swift
//  TrekrMultiPlatform
//
//  Created by Diego Sierraalta on 2022-01-18.
//

import SwiftUI

struct LocationDetail: View {
    
    // The location to show details about
    // A copy of an instance of a structure will be provided
    let location: Location
    
    var body: some View {
        ScrollView{
            Image(location.heroPicture)
                .resizable()
                .scaledToFit()
            
            HStack {
                
                Text(location.country)
                    .font(.title)
                    .foregroundColor(.secondary)
                    .multilineTextAlignment(.leading)
                    .padding(.bottom)
                
                Spacer()
                

            }
            .padding(.horizontal)
            
            Text(location.description)
                .padding(.horizontal)
            
            HStack {
                
                Text("Did You Know?")
                    .font(.title3)
                    .bold()
                    .padding(.vertical)
                
                Spacer()
                
            }
            .padding(.horizontal)
                        
            // Conditionally show the travel advisories
            if !location.advisory.isEmpty {
                
                // Shows the location's "more" text without bottom padding
                Text(location.more)
                    .padding(.horizontal)
                
                HStack {
                    
                    Text("Advisory")
                        .font(.title3)
                        .bold()
                        .padding(.vertical)
                    
                    Spacer()
                    
                }
                .padding(.horizontal)
                
                Text(location.advisory)
                    .padding([.horizontal, .bottom])
                
            } else {
                
                // Show only the location's "more" text with bottom padding included
                Text(location.more)
                    .padding([.horizontal, .bottom])
                
            }
            
        }
        .navigationTitle(location.name)
    }
}

struct LocationDetail_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView{
            LocationDetail(location: Location.example)
        }
    }
}
