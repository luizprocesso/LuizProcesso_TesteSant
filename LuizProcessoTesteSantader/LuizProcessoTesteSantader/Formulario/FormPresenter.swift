//
//  FormPresenter.swift
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

protocol FormPresentationLogicProtocol
{
  func presentFormData(response: Form.UserInfo.Response)
}

class FormPresenter: FormPresentationLogicProtocol
{
  weak var viewController: FormDisplayLogicProtocol?
  
  // MARK: Do something
  
  func presentFormData(response: Form.UserInfo.Response)
  {
    let viewModel = Form.UserInfo.ViewModel(infos: response.infos)
    viewController?.displayViewInfo(viewModel: viewModel)
  }
}
