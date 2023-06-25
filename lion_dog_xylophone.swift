//importing libraries
import Foundation
import UIKit

//defining the class 
class CreativeAgency  {
    //defining properties
    var clients: [String]
    var strategies: [String]
    var services : [String]
    
    //initisilzing the properties
    init (clients : [String], strategies : [String], services : [String]) {
        self.clients = clients
        self.strategies = strategies
        self.services = services
    }
    //function to offer services
    func offerServices(client : String, strategy : String) -> String {
        var message : String = ""
        let clientIndex = self.clients.firstIndex(of: client)
        let strategyIndex = self.strategies.firstIndex(of: strategy)
        if let clientIdx = clientIndex, let strategyIdx = strategyIndex{
            message = "We offer \(self.services[clientIdx]) for \(self.clients[clientIdx]) using \(self.strategies[strategyIdx]) strategy."
        } else {
            message = "Sorry we cannot provide services for this client."
        }
        return message
    }
}

//creating object
let creativeAgency = CreativeAgency(clients : ["small businesses","start-ups","established companies"], strategies : ["digital marketing","social media marketing","branding"], services : ["innovative marketing and advertising solutions","tailored strategies for businesses","unique ideas and creative solutions"])

//calling function
let message = creativeAgency.offerServices(client: "small businesses", strategy: "branding")
print(message)
//output: We offer innovative marketing and advertising solutions for small businesses using branding strategy.