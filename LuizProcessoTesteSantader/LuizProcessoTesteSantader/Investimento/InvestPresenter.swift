//
//  InvestPresenter.swift
//  LuizProcessoTesteSantader
//
//  Created by Luiz Otavio Processo on 27/09/19.
//  Copyright (c) 2019 Luiz Otavio Processo. All rights reserved.
//
//  This file was generated by the Clean Swift Xcode Templates so
//  you can apply clean architecture to your iOS and Mac projects,
//  see http://clean-swift.com
//

import UIKit

protocol InvestPresentationLogicProtocol
{
  func presentInvestData(response: Invest.InvestInfo.Response)
}

class InvestPresenter: InvestPresentationLogicProtocol
{
  weak var viewController: InvestDisplayLogicProtocol?
  
  // MARK: Do something
  
  func presentInvestData(response: Invest.InvestInfo.Response)
  {
    let viewModel = Invest.InvestInfo.ViewModel(investInfo: response.investInfo)
    viewController?.displayInvestData(viewModel: viewModel)
  }
}
