//
//  VistaPruebas.swift
//  CursoiOS vistas basicas
//
//  Created by Equipo 8 on 22/1/26.
//

import SwiftUI

struct VistaPruebas: View {
    let parrafo = "Este es un parrafo más largo que puede contener muchas líneas y caracteres. Lo vamos a alargar para que ocupe unas cuantas líneas. bEste es un párrafo más largo que puede contener muchas líneas y caracteres. Lo vamos a alargar para que ocupe unas cuantas líneas."
    var body: some View {
        Text("VistaPruebas")
        Text("Hola estoy en casa")
        
        Text(parrafo)
            .lineLimit(3)
            .multilineTextAlignment(.center) // alinea el texto en el centro
    }
}

#Preview {
    VistaPruebas()
}
