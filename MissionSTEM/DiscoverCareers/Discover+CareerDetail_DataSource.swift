//
//  Discover+CareerDetail_DataSource.swift
//  MissionSTEM
//
//  Created by Aditi on 29/07/20.
//  Copyright © 2020 upFree. All rights reserved.
//

import Foundation
import UIKit

enum enCareersData: CaseIterable {
    
    case generaltips
    case shopping
    case bathroomhygiene
    case clothing
    case buildings
    case lifestyle
    case community
    case financial
    case outreach
    case grants
    case climatemitigation

    
    
    var title: String {
        
        switch self {
            
        case .generaltips:
            return "general tips"
        case .shopping:
            return "shopping"
        case .bathroomhygiene:
            return "bathroom/hygiene"
        case .clothing:
            return "clothing"
        case .buildings:
            return "buildings"
        case .lifestyle:
            return "lifestyle"
        case .community:
            return "community"
        case .financial:
            return "financial"
        case .outreach:
            return "outreach"
        case .grants:
            return "grants"
        case .climatemitigation:
            return "climate mitigation"
        }
    }
    
    
    var img: UIImage {
        
        switch self {
            
        case .generaltips:
            return UIImage(named: "icon1")!
        case .shopping:
            return UIImage(named: "icon2")!
        case .bathroomhygiene:
            return UIImage(named: "icon3")!
        case .clothing:
            return UIImage(named: "icon4")!
        case .buildings:
            return UIImage(named: "icon5")!
        case .lifestyle:
            return UIImage(named: "icon6")!
        case .community:
            return UIImage(named: "icon7")!
        case .financial:
            return UIImage(named: "icon8")!
        case .outreach:
            return UIImage(named: "icon9")!
        case .grants:
            return UIImage(named: "icon10")!
        case .climatemitigation:
            return UIImage(named: "icon11")!

        
        }
    }

    
    static var backgroundColor: [UIColor] {
        return [enExploreData.allCases[0].backgroundColor,
        enExploreData.allCases[2].backgroundColor,
        enExploreData.allCases[0].backgroundColor,
        UIColor(red: 134/255.0, green: 190/255.0, blue: 191/255.0, alpha: 1.0),
        UIColor(red: 84/255.0, green: 154/255.0, blue: 155/255.0, alpha: 1.0),
            UIColor(red: 134/255.0, green: 190/255.0, blue: 191/255.0, alpha: 1.0)]

    }
    
    
    var mainDescription: String {
        switch self {
            
        case .generaltips:
            return "Some simple fixes will contribute to helping the enviroment over time."
        case .shopping:
            return "There are a multitude of eco-friendly, easy shopping options that both benefit you and the enviroment."
        case .bathroomhygiene:
            return "Bathroom hygiene products can easily be replaced by organic and sustainable options. There are many reusable and DIY products to replace the harmful ones you may already use."
        case .clothing:
            return "Many large clothing corporations, or fast-fashion businesses contribute to a large percent of global pollution."
        case .buildings:
            return "If you live in an apartment building or a house, there are many simple fixes to reduce energy output and aid the enviroment."
        case .lifestyle:
            return "By changing a few habits, you can impact the enviroment and contribute to positive growth."
        case .community:
            return "Communities can have a large impact if everyone commits to making a few small changes over time."
        case .financial:
            return "There is a common misconception that switching over to enviromentally-friendly products will cost more than mainstream products. However, there are many reasonable priced or cheaper options to consider."
        case .outreach:
            return "By educating members of your community, you can spread awareness of easily-fixable enviromental issues in your neighborhood."
        case .grants:
            return "If financials are a concern, there are a multitude of grants available for your business."
        case .climatemitigation:
            return "In case of a natural disaster or emergency, there are many resources available to help out."

        }
    }
    
    var boldTextForType: String {
        switch self {
            
        case .generaltips:
            return "Some general tips are:"
        case .shopping:
            return "How to shop sustainabily:"
        case .bathroomhygiene:
            return "Some products to try out:"
        case .clothing:
            return "How to shop sustainabily:"
        case .buildings:
            return "Some ways for your building to be more enviromentally-friendly: "
        case .lifestyle:
            return "Some lifestyle changes to make to impact the enviroment: "
        case .community:
            return "How to impact your community:"
        case .financial:
            return "Tips to reduce financial costs: "
        case .outreach:
            return "Ways you can impact your communitym: "
        case .grants:
            return "Available grants: "
        case .climatemitigation:
            return "Resources available: "


        }
    }
    
    var types: [String] {
        
        var yourTypes: [String]!
        switch self {
            
        case .generaltips:
            yourTypes =  ["Business","Personal"]
        case .shopping:
            yourTypes =  ["Bulk","Reusable"]
        case .bathroomhygiene:
            yourTypes =  ["Products","DIY products"]
        case .clothing:
            yourTypes =  ["Avoid fast fashion","Simple fixes"]
        case .buildings:
            yourTypes =  ["Reduce","Simple fixes"]
        case .lifestyle:
            yourTypes =  ["Education","Transportation"]
        case .community:
            yourTypes =  ["Technology","Local"]
        case .financial:
            yourTypes =  ["Grants","Alternatives"]
        case .outreach:
            yourTypes =  ["Education","Sharing"]
        case .grants:
            yourTypes =  ["Grants for BIPOC","Involvement"]
        case .climatemitigation:
            yourTypes =  ["Resouces","Tips"]
            

        }
        
        return yourTypes
    }
    
    func typeDescription(fortype: enCareersData) -> NSMutableAttributedString {
        
        
        let _types = fortype.types
        let desc: [String]!
        
        
        switch fortype {
            
        case .generaltips:
            
            desc = [" - Businesses can set up drives to collect reusable or recyclible products to use\n "," - You can reduce emissions by carpooling and using active transportation "]
            
        case .shopping:
            desc = [" - Purchasing items such as soap and essential foods in bulk reduce waste\n "," - Many reusable products, like beeswax or silicon wraps are cheaper over time and are better for the enviroment "]
            
        case .bathroomhygiene:
            desc = [" - Use a bamboo toothbrush and resuable razors and dryer sheets\n "," - You can make your own toothpaste and natural cleaners "]
            
        case .clothing:
            desc = [" - Purchase more from thrift stores and second hand at garage sales instead of fast fashion\n "," - Learn to sew! Repair old clothes and turn second hand clothing into something personal"]
            
        case .buildings:
            desc = [" -  Use less air conditioning use and buy low energy products and applicances\n "," - Converting to solar energy to reduce your electric bill and help the enviroment"]
            
        case .lifestyle:
            desc = [" - Learn how climate change impacts you and what to consider when buying products!\n "," - Public transportation grealy reduces pollution in your community. Cheap alternatives include biking, taking the bus or train, and carpooling "]
            
        case .community:
            desc = [" -  Acessible technological solutions such as automatic no-touch door openers would be a great addition to the community\n "," - Sourcing from local supplies reduces waste and supports local businesses "]
            
        case .financial:
            desc = [" -  For businesses, applying to grants is a great incentive to go enviromentally-friendly (see grants). Also, many government organiztions give tax breaks and financial incentives to go green!\n "," - Buying in bulk reduces cost over time, and many local businesses give discounts within the community "]
            
        case .outreach:
            desc = [" -  Educate yourself and others and encourage them to take action within their own homes and businesses\n "," - In order to reduce waste, small businesses can give away or swap resouces "]
            
        case .grants:
            desc = [" -  Large corporations, such as Lowes and Poise have grants specifically for women and BIPOC owned businesses\n "," - Contact large businesses for more opportunities and ways to get involved "]
        case .climatemitigation:
            desc = [" -  You can contact your local representative for their plans in case of natural disasters, and there are many general tips online\n "," - You can prepare by setting up kits and coordinating with family and community members in case of emergency "]
            

            
        }
        
        var new: NSMutableAttributedString!
        
        for (i,j) in _types.enumerated() {
            
            
            let underlined = NSMutableAttributedString(attributedString: j.underline())
            underlined.append(NSAttributedString(string: desc[i]))
            if new == nil {
                
                new = underlined
            }
            else {
                new.append(underlined)
            }
            
        }
     
        return new
    }
    
    
    var typeImage: UIImage? {
        switch self {
            
        case .generaltips:
            return UIImage(named: "21")
        case .shopping:
            return UIImage(named: "1")
        case .bathroomhygiene:
            return UIImage(named: "3")
        case .clothing:
            return UIImage(named: "5")
        case .buildings:
            return UIImage(named: "7")
        case .lifestyle:
            return UIImage(named: "9")
        case .community:
            return UIImage(named: "11")
        case .financial:
            return UIImage(named: "13")
        case .outreach:
            return UIImage(named: "15")
        case .grants:
            return UIImage(named: "17")
        case .climatemitigation:
            return UIImage(named: "19")
        
        }
    }
    
    var boldActivity: String {
        switch self {
            
        case .generaltips:
            return "Actions:"
        case .shopping:
            return "Actions:"
        case .bathroomhygiene:
            return "Actions:"
        case .clothing:
            return "Actions:"
        case .buildings:
            return "Actions:"
        case .lifestyle:
            return "Actions:"
        case .community:
            return "Actions:"
        case .financial:
            return "Actions:"
        case .outreach:
            return "Actions:"
        case .grants:
            return "Actions:"
        case .climatemitigation:
            return "Actions:"

        }
    }
    
    var activityDescription: String {
        switch self {
            
        case .generaltips:
            return "- Conserve energy and resouces\n- Work with local businesses for mutualy beneficial enviromentally-friendly improvements"
        case .shopping:
            return "- Avoid fast fashion refashion old clothes\n- Donate old clothes\n- Contact and support local businesses"
        case .bathroomhygiene:
            return "- Reuse products as much as possible and conserve waste\n- Buy sustainable products\n- DIY your own products to save money and help the enviroment"
        case .clothing:
            return "- Shop second hand instead of brand new\n- Research sustainable companies and avoid fast fashion"
        case .buildings:
            return "- Contact utilities companies for possible discounts\n- Reduce overall energy use"
        case .lifestyle:
            return "- Always look for a sustainable option when buying products\n- Use individual transportaion less\n- Work on conserving energy and resources"
        case .community:
            return "- Track overall emmisions in your neighborhood\n- Set up recycling and compost centers\n- Create educational resources"
        case .financial:
            return "- Research ways to lower personal costs\n- Contact wholesale and bulk suppliers\n- Plan ahead to make shopping efficient"
        case .outreach:
            return "- Contact your neighbors and local businesses to educate them\n-  Work together to figure out how they can positively impact the enviroment"
        case .grants:
            return "- Come up with a plan detailing how much money you need and how you will use it\n- Researcha and apply for grantst that fit your needs\n- Share tips with your community to compile a list of grants"
        case .climatemitigation:
            return "- Make a list of contacts in case of emergency\n- Prepare emergancy kits beforehand in order to be best prepared\n- Map out disaster safe zones to travel to for saftey"
        }
    }
    
    var activityImage: UIImage? {
        switch self {
            
        case .generaltips:
            return UIImage(named: "22")
        case .shopping:
            return UIImage(named: "2")
        case .bathroomhygiene:
            return UIImage(named: "4")
        case .clothing:
            return UIImage(named: "6")
        case .buildings:
            return UIImage(named: "8")
        case .lifestyle:
            return UIImage(named: "10")
        case .community:
            return UIImage(named: "12")
        case .financial:
            return UIImage(named: "14")
        case .outreach:
            return UIImage(named: "16")
        case .grants:
            return UIImage(named: "18")
        case .climatemitigation:
            return UIImage(named: "20")
        }
    }
}

//Aerospace Engineer
//Astronomer
//Biomedical Engineer
//Chemical Engineer
//Civil Engineer
//Computer Scientist
//community
//financial
//Electrical Engineer
//grants
//Mechanical Engineer
//Nurse
//Pediatrician
//Statistician
//Surgeon
//Teacher
//Veterinarian
