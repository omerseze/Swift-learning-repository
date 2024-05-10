//
//  ContentView.swift
//  NewStateManagementUI
//
//  Created by ömer  faruk sezer on 10.05.2024.
//

import SwiftUI
import SwiftData


// observable ile burada tanımlayıp propertyleri tanımlayabiliriz.
@Observable
class Darkthem : Observable {
    var isEnabled : Bool = false
}



struct darkChoiceView : View {
    //bindable kullanımı
   @Bindable var darktheme :Darkthem
    
    var body: some View {
        Toggle(isOn: $darktheme.isEnabled){
            EmptyView()
        }.fixedSize()
    }
}



struct ContentView: View {
    
  
    @State private var darktheme = Darkthem()
    
    var body: some View {
        VStack {
            darkChoiceView(darktheme: darktheme)
      
            Text("Bindable").font(.largeTitle).foregroundColor(.indigo).bold().monospaced()
            
        }.frame(maxWidth: .infinity,maxHeight: .infinity)
        //darhthem is.enabled eğer false ise renk kırmızı eğer true ise yeşil olarak arka planı değiştiririz.
            .background(darktheme.isEnabled  ? .green : .red)
        
        
    }
}

   
    
    #Preview {
        ContentView()
        
    }
     

