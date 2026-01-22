//
//  VistaStacks.swift
//  CursoiOS vistas basicas
//
//  Created by Equipo 8 on 22/1/26.
//

import SwiftUI

struct VistaStacks: View {
    var body: some View {
        VStack {
            // Vertical Stack (apilado de arriba hacia abajo)
            VStack {
                Text("Uno")
                Text("Dos")
                Text("Tres")
            }
            .background(.yellow)
            
            // Horizontal Stack (izquierda a derecha)
            HStack {
                Text("Uno")
                Text("Dos")
                Text("Tres")
            }
            .background(.brown)
            
            // Z Stack (apilados uno encima de otro)
            ZStack {
                Text("Uno") // "Uno" es el que queda debajo del todo
                Text("Dos") // "Dos" se monta encima de "Uno"
                Text("Tres") // "Tres" se monta encima de "Dos".
            }
            .background(.red)
            
            // Espaciado entre vistas
            VStack(spacing: 10) {
                Text("Uno")
                    .padding(10)
                    .background(.green)
                Text("Dos")
                    .background(.green)
            }
            .background(Color.blue.opacity(0.25))
            
            // Alineado de vistas en un VStack
            VStack(alignment: .leading) {
                Text("Texto 1")
                Text("Otro texto diferente")
            }
            
            // Alineado de vistas en un HStack
            HStack(alignment: .top) {
                Text("Grande")
                    .font(.system(size: 30))
                    .background(.green)
                Text("Normal")
                    .background(.green)
                Text("Mediano-grande")
                    .font(.system(size:25))
                    .background(.green)
            }
            .background(.red.opacity(0.25))
            
            // Spacers. Actúan como un muelle comprimible
            HStack {
                Text("Texto Izquierda")
                Spacer(minLength: 105)
                Text("Centro")
                Spacer()
                    .frame(width: 50) // Spacer de tamaño fijo
                Text("Derecha")
            }
            .background(.yellow)
            
            ZStack {
                Text("Hola")
                    .background(.blue.opacity(0.2))
                    .offset(x: 20, y: 20) // El offset (0,0) es la esquina superior izquierda
                Text("Adios")
                    .background(.red.opacity(0.2))
                    .offset(x: -10, y: -10)
            }
            .background(.green.opacity(0.3))
        }
    }
}

#Preview {
    VistaStacks()
}
