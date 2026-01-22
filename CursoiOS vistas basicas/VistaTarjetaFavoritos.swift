//
//  VistaTarjetaFavoritos.swift
//  CursoiOS vistas basicas
//
//  Created by Equipo 8 on 22/1/26.
//

import SwiftUI

struct VistaTarjetaFavoritos: View {
    var body: some View {
        VStack(spacing: 15) {
            TarjetaFavorito(imagen: "pajarraco")
            TarjetaFavorito(imagen: "gato")
        }
        .background(Color.green.opacity(0.3))
    }
}
struct TarjetaFavorito: View {
    @State private var esFavorito: Bool = false
    @State private var nombre: String = "Gato"
    var imagen: String
    var body: some View {
        HStack(spacing: 15) {
            Image(imagen)
                .resizable()
                .scaledToFit()
                .frame(width: 100)
            VStack(alignment: .leading, spacing: 5) {
                Text("Un miau miau")
                    .font(.headline)
                    .fontWeight(.semibold)
                    .foregroundStyle(.brown)

                HStack(spacing: 4) {
                    Image(systemName: "star.fill")
                        .foregroundStyle(.orange)
                        .font(.caption)
                    Text("4.9")
                        .font(.subheadline)
                        .fontWeight(.bold)
                }
                Text("Creado por cutie cute®")
                    .font(.caption)
                    .foregroundStyle(.secondary)
            }
            Spacer()

            Image(systemName: esFavorito ? "heart.fill" : "heart")
                .foregroundStyle(.red)
                .font(.title3)
                .onTapGesture {
                    esFavorito.toggle()
                }
        }
        .padding(15)
        .background(Color.white)
        .cornerRadius(15)
        .shadow(radius: 5)
    }
}

#Preview {
    VistaTarjetaFavoritos()
}
