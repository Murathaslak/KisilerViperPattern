//
//  KisiKayitPresenter.swift
//  KisilerViper
//
//  Created by Osman Murat Haslak on 9.11.2022.
//

import Foundation

class KisiKayitPresenter: ViewToPresenterKisiKayitProtocol {
    var kisiKayitInteractor: PresenterToInteractorKisiKayitProtocol?
    
    func ekle(kisi_ad: String, kisi_tel: String) {
        kisiKayitInteractor?.kisiEkle(kisi_ad: kisi_ad, kisi_tel: kisi_tel)
    }
    
    
}
