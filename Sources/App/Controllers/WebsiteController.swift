import Vapor
import Leaf

struct WebsiteController: RouteCollection {
  func boot(router: Router) throws {
    router.get(use: AirsoftCalculatorPrivacyPolicy)
  }
  
  func AirsoftCalculatorPrivacyPolicy(_ req: Request) throws -> Future<View> {
    return try req.view().render("AirsoftCalculator")
  }
}
