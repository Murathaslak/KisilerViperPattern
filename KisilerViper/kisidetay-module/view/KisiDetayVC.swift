//
//  KisiDetayVC.swift
//  KisilerViper
//
//  Created by Osman Murat Haslak on 9.11.2022.
//

import UIKit

class KisiDetayVC: UIViewController {
    
    @IBOutlet var textFieldKisiTel: UITextField!
    @IBOutlet var textFieldKisiAd: UITextField!
    
    var kisi:Kisiler?
    var kisiDetayPresenterNesnesi: ViewToPresenterKisiDetayProtocol?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if let k = kisi {
            textFieldKisiAd.text = k.kisi_ad
            textFieldKisiTel.text = k.kisi_tel
        }
        KisiDetayRouter.createModule(ref: self)
    }
    
    @IBAction func buttonGuncelle(_ sender: Any) {
        if let ka = textFieldKisiAd.text, let kt = textFieldKisiTel.text, let k = kisi {
            kisiDetayPresenterNesnesi?.guncelle(kisi_id: Int(k.kisi_id!)!, kisi_ad: ka, kisi_tel: kt)
        }
    }

}
