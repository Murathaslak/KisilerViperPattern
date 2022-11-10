//
//  KisiDetayProtocols.swift
//  KisilerViper
//
//  Created by Osman Murat Haslak on 9.11.2022.
//

import Foundation

import Foundation

protocol ViewToPresenterKisiDetayProtocol {
    
    var kisiDetayInteractor: PresenterToInteractorKisiDetayProtocol? {get set}
    
    func guncelle(kisi_id:Int,kisi_ad:String,kisi_tel:String)
}

protocol PresenterToInteractorKisiDetayProtocol{
    func kisiGuncelle(kisi_id:Int,kisi_ad:String,kisi_tel:String)
}

protocol PresenterToRouterKisiDetayProtocol {
    static func createModule(ref: KisiDetayVC)
}
