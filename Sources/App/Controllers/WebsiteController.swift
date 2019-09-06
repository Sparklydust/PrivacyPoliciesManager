import Vapor
import Leaf

struct WebsiteController: RouteCollection {
  //MARK: - WebsiteController routes
  func boot(router: Router) throws {
    //MARK: AirsoftCalculator
    router.get("en", "airsoftcalculator", use: AirsoftCalculatorPrivacyPolicy)
  }
  //MARK: - Handling routes methods
  //MARK: To show AirsoftCalculator.app Privacy Policy in English
  func AirsoftCalculatorPrivacyPolicy(_ req: Request) throws -> Future<View> {
    let context = IndexContext(language: "en",
                               title: "Privacy Policy",
                               appName: "AirsoftCalculator"
    )
    return try req.view().render("enAirsoftCalculator", context)
  }
}

//MARK: - To insert a title in website title
struct IndexContext: Encodable {
  let language: String
  let title: String
  let appName: String
}
