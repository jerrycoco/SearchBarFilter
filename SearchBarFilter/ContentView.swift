//
//  ContentView.swift
//  SearchBarFilter
//
//  Created by jerry nkongolo on 2023-05-11.
//

import SwiftUI

struct ContentView: View {
    
    @State var searchingFor = ""
    let cities = ["Algeria", "Angola", "Benin", "Botswana", "Burkina Faso", "Burundi", "Cameroon", "Cape Verde", "Central African Republic", "Chad", "Comoros", "Democratic Republic of the Congo", "Republic of the Congo", "Djibouti", "Egypt", "Equatorial Guinea", "Eritrea", "Eswatini (formerly Swaziland)", "Ethiopia", "Gabon", "Gambia", "Ghana", "Guinea", "Guinea-Bissau", "Ivory Coast (Côte d'Ivoire)", "Kenya", "Lesotho", "Liberia", "Libya", "Madagascar", "Malawi", "Mali", "Mauritania", "Mauritius", "Morocco", "Mozambique", "Namibia", "Niger", "Nigeria", "Rwanda", "São Tomé and Príncipe", "Senegal", "Seychelles", "Sierra Leone", "Somalia", "South Africa", "South Sudan", "Sudan", "Tanzania", "Togo", "Tunisia", "Uganda", "Zambia", "Zimbabwe"]
    
    var body: some View {
        NavigationView{
            
            List {
                ForEach(result, id: \.self) { city in
                  
                    NavigationLink(destination: Text("Where we can write more on each country")) {
                        Text(city)
                        
                    }
                }
            }
            .searchable(text: $searchingFor)
            .navigationTitle("Africa")
//
            
            
        }
    }
    
    var result : [String]{
        if searchingFor.isEmpty{
            return cities
        } else {
            return cities.filter { $0.contains(searchingFor) }
        }
    }
}

struct Country : Identifiable {
    var id = UUID()
    var capital : String
}

let CapitalCityName = [
Country(capital: "Luanda"),
Country(capital: "")
]

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct capitalAfricaCountry : View {
    var body: some View{
        
        Text("Hello capital city ")
    }
}
