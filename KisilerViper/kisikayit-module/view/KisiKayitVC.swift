//
//  KisiKayitVC.swift
//  KisilerViper
//
//  Created by Osman Murat Haslak on 9.11.2022.
//

import UIKit

class KisiKayitVC: UIViewController {

    @IBOutlet var textFieldKisiTel: UITextField!
    @IBOutlet var textFieldKisiAd: UITextField!
    
    var kisiKayitPresenterNesnesi: ViewToPresenterKisiKayitProtocol?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        KisiKayitRouter.createModule(ref: self)

    }
    
    @IBAction func buttonKaydet(_ sender: Any) {
        if let ka = textFieldKisiAd.text, let kt = textFieldKisiTel.text {
            kisiKayitPresenterNesnesi?.ekle(kisi_ad: ka, kisi_tel: kt)
        }
    }
    


}
