import Vapor
import Leaf

struct WebsiteController: RouteCollection {
  //MARK: - WebsiteController routes
  func boot(router: Router) throws {
    //MARK: AirsoftCalculator
    router.get("de", "airsoftcalculator", use: deAirsoftCalculatorPrivacyPolicy)
    router.get("en", "airsoftcalculator", use: enAirsoftCalculatorPrivacyPolicy)
    router.get("es", "airsoftcalculator", use: esAirsoftCalculatorPrivacyPolicy)
    router.get("fr", "airsoftcalculator", use: frAirsoftCalculatorPrivacyPolicy)
    router.get("it", "airsoftcalculator", use: itAirsoftCalculatorPrivacyPolicy)
    router.get("nl", "airsoftcalculator", use: nlAirsoftCalculatorPrivacyPolicy)
  }
  
  //MARK: - Handling routes methods
  //MARK: To show AirsoftCalculator.app Privacy Policy in German
  func deAirsoftCalculatorPrivacyPolicy(_ req: Request) throws -> Future<View> {
    let context = IndexContext(language: "de",
                               title: "Datenschutz-Richtlinie",
                               appName: "AirsoftCalculator"
    )
    return try req.view().render("deAirsoftCalculator", context)
  }
  
  //MARK: To show AirsoftCalculator.app Privacy Policy in English
  func enAirsoftCalculatorPrivacyPolicy(_ req: Request) throws -> Future<View> {
    let context = IndexContext(language: "en",
                               title: "Privacy Policy",
                               appName: "AirsoftCalculator"
    )
    return try req.view().render("enAirsoftCalculator", context)
  }
  
  //MARK: To show AirsoftCalculator.app Privacy Policy in Spanish
  func esAirsoftCalculatorPrivacyPolicy(_ req: Request) throws -> Future<View> {
    let context = IndexContext(language: "es",
                               title: "Política de privacidad",
                               appName: "AirsoftCalculator"
    )
    return try req.view().render("esAirsoftCalculator", context)
  }
  
  //MARK: To show AirsoftCalculator.app Privacy Policy in French
  func frAirsoftCalculatorPrivacyPolicy(_ req: Request) throws -> Future<View> {
    let context = IndexContext(language: "fr",
                               title: "Politique de Confidentialité",
                               appName: "AirsoftCalculator"
    )
    return try req.view().render("frAirsoftCalculator", context)
  }
  
  //MARK: To show AirsoftCalculator.app Privacy Policy in Italian
  func itAirsoftCalculatorPrivacyPolicy(_ req: Request) throws -> Future<View> {
    let context = IndexContext(language: "it",
                               title: "Informativa sulla Privacy",
                               appName: "AirsoftCalculator"
    )
    return try req.view().render("itAirsoftCalculator", context)
  }
  
  //MARK: To show AirsoftCalculator.app Privacy Policy in Dutch
  func nlAirsoftCalculatorPrivacyPolicy(_ req: Request) throws -> Future<View> {
    let context = IndexContext(language: "nl",
                               title: "Privacybeleid",
                               appName: "AirsoftCalculator"
    )
    return try req.view().render("nlAirsoftCalculator", context)
  }
}

//MARK: - To insert constants in Resources/Views/<file name>.leaf files
struct IndexContext: Encodable {
  let language: String
  let title: String
  let appName: String
}
