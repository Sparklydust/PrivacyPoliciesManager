import Vapor
import Leaf

struct WebsiteController: RouteCollection {
  //MARK: - WebsiteController routes
  func boot(router: Router) throws {
    //MARK: AirsoftCalculator
    let airsoftCalculatorRoutes = router.grouped("airsoftcalculator")
    airsoftCalculatorRoutes.get(CountryCode.germany.rawValue, use: deAirsoftCalculatorPrivacyPolicy)
    airsoftCalculatorRoutes.get(CountryCode.england.rawValue, use: enAirsoftCalculatorPrivacyPolicy)
    airsoftCalculatorRoutes.get(CountryCode.spain.rawValue, use: esAirsoftCalculatorPrivacyPolicy)
    airsoftCalculatorRoutes.get(CountryCode.france.rawValue, use: frAirsoftCalculatorPrivacyPolicy)
    airsoftCalculatorRoutes.get(CountryCode.italy.rawValue, use: itAirsoftCalculatorPrivacyPolicy)
    airsoftCalculatorRoutes.get(CountryCode.netherland.rawValue, use: nlAirsoftCalculatorPrivacyPolicy)

    //MARK: Partages
    let partagesRoutes = router.grouped("partages")
    partagesRoutes.get(CountryCode.germany.rawValue, use: dePartagesPrivacyPolicy)
    partagesRoutes.get(CountryCode.england.rawValue, use: enPartagesPrivacyPolicy)
    partagesRoutes.get(CountryCode.spain.rawValue, use: esPartagesPrivacyPolicy)
    partagesRoutes.get(CountryCode.france.rawValue, use: frPartagesPrivacyPolicy)
    partagesRoutes.get(CountryCode.italy.rawValue, use: itPartagesPrivacyPolicy)
    partagesRoutes.get(CountryCode.netherland.rawValue, use: nlPartagesPrivacyPolicy)
  }
}

//MARK: - AirsoftCalculator.app routes methods
extension WebsiteController {
  //MARK: German AirsoftCalculator.app Privacy Policy
  func deAirsoftCalculatorPrivacyPolicy(_ req: Request) throws -> Future<View> {
    let context = IndexContext(countryCode: CountryCode.germany.rawValue,
                               title: PrivacyPolicy.german.rawValue,
                               appName: App.AirsoftCalculator.rawValue
    )
    return try req.view().render("deAirsoftCalculator", context)
  }
  
  //MARK: English AirsoftCalculator.app Privacy Policy
  func enAirsoftCalculatorPrivacyPolicy(_ req: Request) throws -> Future<View> {
    let context = IndexContext(countryCode: CountryCode.england.rawValue,
                               title: PrivacyPolicy.english.rawValue,
                               appName: App.AirsoftCalculator.rawValue
    )
    return try req.view().render("enAirsoftCalculator", context)
  }
  
  //MARK: Spanish AirsoftCalculator.app Privacy Policy
  func esAirsoftCalculatorPrivacyPolicy(_ req: Request) throws -> Future<View> {
    let context = IndexContext(countryCode: CountryCode.spain.rawValue,
                               title: PrivacyPolicy.spanish.rawValue,
                               appName: App.AirsoftCalculator.rawValue
    )
    return try req.view().render("esAirsoftCalculator", context)
  }
  
  //MARK: French AirsoftCalculator.app Privacy Policy
  func frAirsoftCalculatorPrivacyPolicy(_ req: Request) throws -> Future<View> {
    let context = IndexContext(countryCode: CountryCode.france.rawValue,
                               title: PrivacyPolicy.french.rawValue,
                               appName: App.AirsoftCalculator.rawValue
    )
    return try req.view().render("frAirsoftCalculator", context)
  }
  
  //MARK: Italian AirsoftCalculator.app Privacy Policy
  func itAirsoftCalculatorPrivacyPolicy(_ req: Request) throws -> Future<View> {
    let context = IndexContext(countryCode: CountryCode.italy.rawValue,
                               title: PrivacyPolicy.italian.rawValue,
                               appName: App.AirsoftCalculator.rawValue
    )
    return try req.view().render("itAirsoftCalculator", context)
  }
  
  //MARK: Dutch AirsoftCalculator.app Privacy Policy
  func nlAirsoftCalculatorPrivacyPolicy(_ req: Request) throws -> Future<View> {
    let context = IndexContext(countryCode: CountryCode.netherland.rawValue,
                               title: PrivacyPolicy.dutch.rawValue,
                               appName: App.AirsoftCalculator.rawValue
    )
    return try req.view().render("nlAirsoftCalculator", context)
  }
}

//MARK: - Partages.app routes methods
extension WebsiteController {
  //MARK: German Partages.app Privacy Policy
  func dePartagesPrivacyPolicy(_ req: Request) throws -> Future<View> {
    let context = IndexContext(countryCode: CountryCode.germany.rawValue,
                               title: PrivacyPolicy.german.rawValue,
                               appName: App.Partages.rawValue
    )
    return try req.view().render("dePartages", context)
  }

  //MARK: English Partages.app Privacy Policy
  func enPartagesPrivacyPolicy(_ req: Request) throws -> Future<View> {
    let context = IndexContext(countryCode: CountryCode.england.rawValue,
                               title: PrivacyPolicy.english.rawValue,
                               appName: App.Partages.rawValue
    )
    return try req.view().render("enPartages", context)
  }

  //MARK: Spanish Partages.app Privacy Policy
  func esPartagesPrivacyPolicy(_ req: Request) throws -> Future<View> {
    let context = IndexContext(countryCode: CountryCode.spain.rawValue,
                               title: PrivacyPolicy.spanish.rawValue,
                               appName: App.Partages.rawValue
    )
    return try req.view().render("esPartagesPrivacyPolicy", context)
  }

  //MARK: French Partages.app Privacy Policy
  func frPartagesPrivacyPolicy(_ req: Request) throws -> Future<View> {
    let context = IndexContext(countryCode: CountryCode.france.rawValue,
                               title: PrivacyPolicy.french.rawValue,
                               appName: App.Partages.rawValue
    )
    return try req.view().render("frPartages", context)
  }

  //MARK: Italian Partages.app Privacy Policy
  func itPartagesPrivacyPolicy(_ req: Request) throws -> Future<View> {
    let context = IndexContext(countryCode: CountryCode.italy.rawValue,
                               title: PrivacyPolicy.italian.rawValue,
                               appName: App.Partages.rawValue
    )
    return try req.view().render("itPartages", context)
  }

  //MARK: Dutch Partages.app Privacy Policy
  func nlPartagesPrivacyPolicy(_ req: Request) throws -> Future<View> {
    let context = IndexContext(countryCode: CountryCode.netherland.rawValue,
                               title: PrivacyPolicy.dutch.rawValue,
                               appName: App.Partages.rawValue
    )
    return try req.view().render("nlPartages", context)
  }
}

//MARK: - To insert constants in Resources/Views/<file name>.leaf files
struct IndexContext: Encodable {
  let countryCode: String
  let title: String
  let appName: String
}
