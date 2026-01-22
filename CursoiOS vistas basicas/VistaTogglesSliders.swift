//
//  VistaTogglesSliders.swift
//  CursoiOS vistas basicas
//
//  Created by Equipo 8 on 22/1/26.
//

import SwiftUI

struct VistaTogglesSliders: View {
    @State private var usarWifi = false
    @State private var numArticulos = 0
    @State private var posicionSlider = 2.0
    var body: some View {
        VStack {
            Toggle(isOn: $usarWifi) {
                Text("Usar WiFi?")
            }
            Text("\(usarWifi ? "Usar Wifi" : "No usar Wifi")")

            Stepper(value: $numArticulos, in: 0...10, step: 1) {
                Text("\(numArticulos) articulos")
            }
            .onChange(of: numArticulos) { oldValue, newValue in

            }
            
            Stepper{
                Text("Número de artículos: \(numArticulos)")
            } onIncrement: {
                if numArticulos < 10 {
                    numArticulos += 1
                }
            } onDecrement: {
                if numArticulos > 0 {
                    numArticulos -= 1
                }
            }
            Slider(value: $posicionSlider, in: 1...10, step: 1){
                //Etiqueta de accesibilidad
                Text("Slider está en posición: \(Int(posicionSlider))")
            }
            Text("Slider está en posición \(Int(posicionSlider))")
        }
        .padding(10)
    }
}
#Preview {
    VistaTogglesSliders()
}
