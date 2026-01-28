//
//  VistaGeometryReader.swift
//  CursoiOS vistas basicas
//
//  Created by Equipo 8 on 28/1/26.
//

import SwiftUI

struct VistaGeometryReader: View {
    var body: some View {
        VStack(spacing: 10) {
            Text("Un Geometry Reader Debajo ⬇️")
            Spacer().frame(minHeight: 50, maxHeight: 100)
            // La vista GeometryReader coge todo el espacio posivle que se le deje
            GeometryReader { geometry in
                VStack {
                    Text("\(geometry.size.width)")
                    Text("\(geometry.size.height)")
                    Text(
                        String(
                            format: "Coordenadas absolutas: x: %.2f, y: %.2f",
                            geometry.frame(in: .global).origin.x,
                            geometry.frame(in: .global).origin.y
                        )
                    )

                    Rectangle()
                        .fill(.green)
                        .frame(width: geometry.size.width * 0.5, height: 100)
                        .position(
                            x: geometry.size.width / 4,
                            y: geometry.size.height / 3
                        )

                    //  Rectangle().fill(.green)
                }
            }
            .background(.blue.opacity(0.25))

            GeometryReader {
                geometry in
                HStack(spacing: 0) {
                    Rectangle()
                        .fill(Color.red)
                        .frame(width: geometry.size.width * 0.75)
                    Rectangle()
                        .fill(Color.blue)
                        .frame(width: geometry.size.width + 0.25)
                }
            }
            .frame(height: 100)
            .background(.red.opacity(0.25))
        }
    }
}

#Preview {
    VistaGeometryReader()
}
