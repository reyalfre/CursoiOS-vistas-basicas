//
//  VistaListas2.swift
//  CursoiOS vistas basicas
//
//  Created by Equipo 8 on 23/1/26.
//

import SwiftUI

struct VistaListas2: View {
    @State private var animalBuscar: String = ""
    let arrayAnimalesInicial = [
        "Gato", "Pájaro", "Pez", "Perro", "Araña", "Hamster", "Pato",
    ]
    @State private var arrayAnimales: [String]

    init() {
        arrayAnimales = arrayAnimalesInicial
    }
    //let arrayAnimalesInicial: [String
    var body: some View {
        Text("Animales disponibles: \(arrayAnimales.count)")

        //  List(arrayAnimales, id: \.self) { animal in Text(animal)

        //  }

        List {
            ForEach(arrayAnimales, id: \.self) {
                animal in Text(animal)
            }
            .onDelete(perform: borrar)
            .onMove(perform: mover)
        }
        .searchable(text: $animalBuscar)
        .onChange(of: animalBuscar) {
            oldValue,
            textoBusqueda in
            if !textoBusqueda.isEmpty {
                arrayAnimales = arrayAnimalesInicial
                arrayAnimales = arrayAnimales.filter {
                    $0.lowercased().contains(textoBusqueda.lowercased())
                }
            } else {
                arrayAnimales = arrayAnimalesInicial
            }
        }

    }
    func borrar(at posicion: IndexSet) {
        arrayAnimales.remove(atOffsets: posicion)

    }

    func mover(_ origen: IndexSet, _ destino: Int) {
        arrayAnimales.move(fromOffsets: origen, toOffset: destino)
        // print(arrayAnimales)
    }
}

#Preview {
    VistaListas2()
}
