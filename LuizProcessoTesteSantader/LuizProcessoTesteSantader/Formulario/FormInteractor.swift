//
//  FormInteractor.swift
//  LuizProcessoTesteSantader
//
//  Created by Luiz Otavio Processo on 26/09/19.
//  Copyright (c) 2019 Luiz Otavio Processo. All rights reserved.
//
//  This file was generated by the Clean Swift Xcode Templates so
//  you can apply clean architecture to your iOS and Mac projects,
//  see http://clean-swift.com
//

import UIKit

protocol FormBusinessLogicProtocol{
  func getFormData(request: Form.UserInfo.Request)
}

protocol FormDataStoreProtocol{
  //var name: String { get set }
}

class FormInteractor: FormBusinessLogicProtocol, FormDataStoreProtocol{
  var presenter: FormPresentationLogicProtocol?
  var worker: FormWorker?
  
  // MARK: Do something
  
  func getFormData(request: Form.UserInfo.Request){
    worker = FormWorker()
    worker?.requestFromAPI(completionHandler: { infos in
        let response = Form.UserInfo.Response(infos: infos.cells)
        self.presenter?.presentFormData(response: response)
    })
  }
}
