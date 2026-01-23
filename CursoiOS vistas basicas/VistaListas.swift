//
//  VistaListas.swift
//  CursoiOS vistas basicas
//
//  Created by Equipo 8 on 23/1/26.
//

import SwiftUI

struct Animal: Identifiable {
    let id = UUID()
    let nombre: String
}

struct VistaListas: View {

    let arrayAnimales = [
        "Perro", "Gato", "Tortuga", "Pato", "Pato", "Hamster", "Cocodrilo",
        "Elefante", "Elefante", "Elefante",
    ]

    var listaAnimales: [Animal] = []

    init() {
        for animal in arrayAnimales {
            listaAnimales.append(Animal(nombre: animal))
        }
    }
    var body: some View {
        //      List{
        //          Text("Hola")
        //          Text("Alfredo")
        //      }

        //  List(arrayAnimales, id: \.self){
        //     Text($0)
        // }

        List {
            ForEach(listaAnimales) { animal in
                HStack {
                    Spacer()
                    Text(animal.nombre)
                    Spacer()
                }
            }
        }
        // Colorear cada elemento de un color, en este caso los pares de gris
        List {
            ForEach(Array(listaAnimales.enumerated()), id: \.element.id) {
                indice,
                animal in
                Text("\(indice): \(animal.nombre)")
                 .listRowBackground(
                        indice % 2 == 0 ? Color.gray.opacity(0.1) : Color.white
                    )
            }

        }
    }
}

#Preview {
    VistaListas()
}
