//
//  StatisticView.swift
//  CulminatingTaskKinesiology
//
//  Created by Abdul Malik on 2022-05-11.
//

import SwiftUI

struct StatisticView: View {
    
    // MARK: Stored properties
    
    
    
    // MARK: Computed properties
    var body: some View {
        VStack {
             Text("Statistics!")
                .font(.title)
                .padding()
            
            HStack {
            
            Text("This week:  5/25")
                .padding()
            
            Text("25%")
                .padding()
            }
        }
       // .navigationTitle("Statistics!")
        
    }
}

struct StatisticView_Previews: PreviewProvider {
    static var previews: some View {
        StatisticView()
    }
}
