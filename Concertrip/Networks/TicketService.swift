//
//  TicketService.swift
//  Concertrip
//
//  Created by 양어진 on 01/01/2019.
//  Copyright © 2019 양어진. All rights reserved.
//

import Alamofire

struct TicketService: APIManager, Requestable {
    typealias NetworkData = Ticket
    static let shared = TicketService()
    let queryURL = url("/api/ticket")
    let header: HTTPHeaders = [
        "Content-Type": "application/json",
        "Authorization": "eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJjb25jZXJ0cmlwIiwidXNlcklkeCI6Mn0.Hc9kqk1lE4H1gMXxsTLt50GTP2wpPPv_x4TzuTMM2o8"
    ]
    
    func getTicketList(completion: @escaping ([String]) -> Void) {
        gettable(queryURL, body: nil, header: header) { (res) in
            print("ticket Res : \(res)")
            switch res {
            case .success(let value):
                guard let ticketList = value.ticketData else
                {return}
                print("ticketList : \(ticketList.count)")
                
                completion(ticketList)
            case .error(let error):
                print(error)
            }
        }
    }
}
