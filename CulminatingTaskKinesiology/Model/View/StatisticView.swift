//
//  StatisticView.swift
//  CulminatingTaskKinesiology
//
//  Created by Abdul Malik on 2022-05-11.
//

import SwiftUI

struct StatisticView: View {
    
    // MARK: Stored properties
    
    // The list of favourite songs
    @Binding var favourites: [Quiz]
    
    // MARK: Computed properties
    var body: some View {
        
        NavigationView {
            
        VStack {

            HStack {
            
            Text("This week:  5/25")
                .padding()
            
            Text("25%")
                .padding()
            }
        }
        .navigationTitle("Statistics!")
        .padding()
        
    }
}
}

struct StatisticView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            StatisticView(favourites: .constant([testQuiz]))
        }
        
    }
}
