import UIKit
import XCTest

protocol StockExchange {
    func currentPrice(symbol: String) -> Double
}

class NYStockExchange: StockExchange {
    func currentPrice(symbol: String) -> Double {
        return 10.0
    }
}

// Property Injection through protocol
// Constructor Injection through protocol
// Method Injection through protocol
class Porfolio {
    
    var exchange: StockExchange
    var value: Double = 0.0
    
    init(exchange: StockExchange) {
        self.exchange = exchange
    }
    
    func add(quantity: Int, symbol: String) {
        let price = self.exchange.currentPrice(symbol: symbol)
        value = Double(quantity) * price
    }
    
}

class FixedStockExchangeStub: StockExchange {
    
    private var symbolAndPrice: [String: Double] = [:]
    
    func fix(symbol: String, price: Double) {
        symbolAndPrice[symbol] = price
    }
    
    func currentPrice(symbol: String) -> Double {
        return symbolAndPrice[symbol]!
    }
}

class PortfolioTests: XCTestCase {
    
    private var exchange: FixedStockExchangeStub!
    private var porfolio: Porfolio!
    
    override func setUp() {
        exchange = FixedStockExchangeStub()
        exchange.fix(symbol: "MSFT", price: 100)
        porfolio = Porfolio(exchange: exchange)
    }
    
    func test_given_5_microsoft_total_should_be_500() {
        
        porfolio.add(quantity: 5, symbol: "MSFT")
        XCTAssertEqual(500, porfolio.value)
        
    }
    
}

//PortfolioTests.defaultTestSuite.run()
