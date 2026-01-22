//
//  VistaImagenes.swift
//  CursoiOS vistas basicas
//
//  Created by Equipo 8 on 22/1/26.
//

import SwiftUI

struct VistaImagenes: View {
    var body: some View {
        VStack(spacing: 5) {

            // Formas (Shapes)

            Capsule()
                .fill(Color.blue)
                .frame(width: 200, height: 50)

            Circle()
                .fill(.green)
                .frame(width: 50)

            Ellipse()
                .fill(.red.opacity(0.5))
                .frame(width: 100, height: 50)

            ZStack {
                Rectangle()
                    .fill(.yellow.opacity(0.2))
                    .frame(height: 50)
                Text("Texto informativo")
            }

            RoundedRectangle(cornerRadius: 10)
                .fill(.indigo.opacity(0.3))
                .frame(height: 50)

            //Imagenes

            Image(systemName: "thermometer.sun.fill")
                .font(.custom("", size: 40))
            Image("gato")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 100, height: 150)
            Image("pajarraco")
                .frame(height: 160)
                .clipShape(Circle())
                .shadow(color: .green, radius: 5)
                .overlay(Circle().stroke(Color.indigo, lineWidth: 2))
        }
    }
}

#Preview {
    VistaImagenes()
}
