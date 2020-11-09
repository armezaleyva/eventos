//
//  ViewController.swift
//  eventos
//
//  Created by Alumno on 11/9/20.
//  Copyright © 2020 Alumno. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    var eventos: [Evento] = []
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 284
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return eventos.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let celdaEvento = tableView.dequeueReusableCell(withIdentifier: "celdaEvento") as! CeldaEventoController
        let evento = eventos[indexPath.row]
        
        celdaEvento.lblTitulo.text = evento.titulo
        celdaEvento.lblLugar.text = evento.lugar
        celdaEvento.lblFecha.text = evento.fecha
        celdaEvento.lblHora.text = evento.hora
        
        celdaEvento.imgEvento.image = UIImage(named: evento.imagen)
        
        return celdaEvento
    }
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.title = "Eventos"
        
        eventos.append(Evento(titulo: "Baile de la Brissa", fecha: "20 de noviembre", hora: "8 pm", lugar: "Explanada del TOG", imagen: "brissa"))
        eventos.append(Evento(titulo: "Concierto de Rise Against", fecha: "25 de diciembre", hora: "9 pm", lugar: "Casa del Meza", imagen: "riseagainst"))
        eventos.append(Evento(titulo: "Concierto de Sum 41", fecha: "28 de diciembre", hora: "10 pm", lugar: "ULSA", imagen: "sum41"))
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

