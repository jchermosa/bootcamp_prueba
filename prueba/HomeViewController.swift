//
//  HomeViewController.swift
//  prueba
//
//  Created by Julio Hermosa on 2025-02-24.
//

import UIKit

class HomeViewController: UIViewController {

    @IBOutlet weak var yConstraint: NSLayoutConstraint!
    @IBOutlet weak var xConstraint: NSLayoutConstraint!
    @IBOutlet weak var tableView: UITableView!
    var nombre: String!
    let apellido = "Hermosa"
    let edad = 18
    var nro = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print(nombre!)
        tableViewConfiguration()
//        navigationItem.backAction
//        heightAnchor.constant = 0
        
//        moverBoton()
        
//        guardarDatos()
        // Do any additional setup after loading the view.
    }
    
    func tableViewConfiguration() {
        tableView.register(UINib(nibName: "CellTableViewCell", bundle: nil), forCellReuseIdentifier: "pokemonCell")
        tableView.delegate = self
        tableView.dataSource = self
    }
    
    @IBAction func returnButton(_ sender: Any) {
        self.dismiss(animated: true)
        
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
//        navigationController?.parent
    }
    
//    func crearVistas() {
//        let imageLogo = UIImageView(image: UIImage(named: "roshka"))
//        imageLogo.frame = CGRect(origin: CGPoint(x: 0, y: 0), size: CGSize(width: view.frame.width * 0.7, height: view.frame.height  * 0.3))
//        view.addSubview(imageLogo)
//    }
    
    func moverBoton() {
        let space = Int(view.window?.safeAreaInsets.top ?? 0) + Int(view.window?.safeAreaInsets.bottom ?? 0)
        let x = Int.random(in: 0...Int(view.frame.width) - 75)
        let y = Int.random(in: 0...Int(view.frame.height) - (space + 65))
        xConstraint.constant = CGFloat(x)
        yConstraint.constant = CGFloat(y)
    }
    
    @IBAction func buttonAction(_ sender: Any) {
        moverBoton()
    }
    
    func guardarDatos() {
        let dictionary: [String: Any] = ["nombre":nombre,"apellido": apellido,"edad":edad]
        UserDefaults.standard.set(dictionary, forKey: "1")
        if let dato = UserDefaults.standard.dictionary(forKey: "1") {
            if let nombreDato = dato["edad"] {
                print(nombreDato)
            }
            print(dato)
        } else {
            print("falta registro")
        }
        
        let jugador1:[String: Any] = ["nombre":"Julio", "puntaje":10]
        let jugador2:[String: Any] = ["nombre":"Kevin", "puntaje":20]
        print(jugador1["nombre"] ?? "desconocido")//Julio
        
        let puntajes = [jugador1, jugador2]
        print(puntajes[1])//"nombre":"Julio", "puntaje":"10"
        
        UserDefaults.standard.set(puntajes, forKey: "puntajes")
        
        if let puntajesGuardados = UserDefaults.standard.array(forKey: "puntajes") {
            if let puntajesAray:[String:Any] = puntajesGuardados as? [String:Any] {
                
                
            }
        }
        
        
    }
}

extension HomeViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 20
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "pokemonCell") as! CellTableViewCell
        cell.tituloLabel.text = "\(indexPath.row)"
        return cell
    }
    
}
