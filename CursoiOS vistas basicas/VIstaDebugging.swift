//
//  VIstaDebugging.swift
//  CursoiOS vistas basicas
//
//  Created by Equipo 8 on 28/1/26.
//

import SwiftUI

struct VIstaDebugging: View {
    @State private var temperaturaCelsius = ""
    @State private var temperaturaFarenheit = "--"
    var body: some View {
        VStack(alignment: .leading, spacing: 1) {
            Text("Grados Celsius (ºC)")
                .font(.title3)
                .foregroundStyle(Color.blue)
            TextField("Ej: 25,5", text: $temperaturaCelsius)
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .keyboardType(.decimalPad)
                .font(.headline)
                .onChange(of: temperaturaCelsius) { vieja, nuevaTemp in
                    convertirTemperatura()
                }
        }

        Image(systemName: "arrow.down.circle.fill")
            .font(.system(size: 40))
            .foregroundStyle(Color.orange)

        VStack(alignment: .leading, spacing: 10) {
            Text("Grados Fahrenheit (ºF)")
                .font(.title3)
                .foregroundStyle(.red)
            Text(temperaturaFarenheit)
                .font(.system(size: 20, weight: .bold, design: .rounded))
                .foregroundStyle(.red)
                .frame(maxWidth: .infinity, alignment: .center)
                .padding(.vertical, 15)
                .background(
                    RoundedRectangle(cornerRadius: 15)
                        .fill(Color(.systemGray5))
                )
        }
    }
    private func convertirTemperatura() {
        let valorCelsius = Double(temperaturaCelsius) ?? 0.0
        let valorFarenheit = (valorCelsius * 9/5) + 32
        temperaturaFarenheit = String(format: "%.2f", valorFarenheit)
    }
}
#Preview {
    VIstaDebugging()
}
