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
    
    case aerospaceEngineer
    case astronomer
    case biomedicalEngineer
    case chemicalEngineer
    case civilEngineer
    case computerScientist
    case dentist
    case economist
    case electricalEngineer
    case genetisist
    case mechanicalEngineer
    case nurse
    case pediatrician
    case statistician
    case surgeon
    case teacher
    case veterinarian
    
    
    var title: String {
        
        switch self {
            
        case .aerospaceEngineer:
            return "Aerospace Engineer"
        case .astronomer:
            return "Astronomer"
        case .biomedicalEngineer:
            return "Biomedical Engineer"
        case .chemicalEngineer:
            return "Chemical Engineer"
        case .civilEngineer:
            return "Civil Engineer"
        case .computerScientist:
            return "Computer Scientist"
        case .dentist:
            return "Dentist"
        case .economist:
            return "Economist"
        case .electricalEngineer:
            return "Electrical Engineer"
        case .genetisist:
            return "Genetisist"
        case .mechanicalEngineer:
            return "Mechanical Engineer"
        case .nurse:
            return "Nurse"
        case .pediatrician:
            return "Pediatrician"
        case .statistician:
            return "Statistician"
        case .surgeon:
            return "Surgeon"
        case .teacher:
            return "Teacher"
        case .veterinarian:
            return "Veterinarian"
        
        }
    }
    
    
    var img: UIImage {
        
        switch self {
            
        case .aerospaceEngineer:
            return UIImage(named: "Image_1")!
        case .astronomer:
            return UIImage(named: "Image_2")!
        case .biomedicalEngineer:
            return UIImage(named: "Image_3")!
        case .chemicalEngineer:
            return UIImage(named: "Image_4")!
        case .civilEngineer:
            return UIImage(named: "Image_5")!
        case .computerScientist:
            return UIImage(named: "Image_6")!
        case .dentist:
            return UIImage(named: "Image_7")!
        case .economist:
            return UIImage(named: "Image_8")!
        case .electricalEngineer:
            return UIImage(named: "Image_9")!
        case .genetisist:
            return UIImage(named: "Image_10")!
        case .mechanicalEngineer:
            return UIImage(named: "Image_11")!
        case .nurse:
            return UIImage(named: "Image_12")!
        case .pediatrician:
            return UIImage(named: "Image_13")!
        case .statistician:
            return UIImage(named: "Image_14")!
        case .surgeon:
            return UIImage(named: "Image_15")!
        case .teacher:
            return UIImage(named: "Image_16")!
        case .veterinarian:
            return UIImage(named: "Image_17")!
        
        }
    }

    
    static var backgroundColor: [UIColor] {
        return [enExploreData.allCases[0].backgroundColor,
        enExploreData.allCases[2].backgroundColor,
        enExploreData.allCases[0].backgroundColor,
        UIColor(red: 255/255.0, green: 229/255.0, blue: 217/255.0, alpha: 1.0),
        UIColor(red: 250/255.0, green: 190/255.0, blue: 192/255.0, alpha: 1.0),
            UIColor(red: 255/255.0, green: 229/255.0, blue: 217/255.0, alpha: 1.0)]

    }
    
    
    var mainDescription: String {
        switch self {
            
        case .aerospaceEngineer:
            return "Aerospace Engineers design all kinds of aircrafts - gliders, spacecraft, satellites. In addition to designing, they build and test their prototypes to make sure they are safe and function properly."
        case .astronomer:
            return "Astronomers are scientists who study the galaxy, planets, and space. They analyze the collected information and help us understand how the universe works."
        case .biomedicalEngineer:
            return "Biomedical Engineers combine engineering and medical sciences to develop equipment used in healthcare. Some design devices that can replace injured body parts while others create medicines and machines to help patients."
        case .chemicalEngineer:
            return "Chemical Engineers create and improve manufacturing processes and solve problems that involve production of dangerous chemicals to make them safer to handle."
        case .civilEngineer:
            return "Civil Engineers design, build, and manage the creation of structures. This includes buildings, tunnels, bridges, highways, airports, parking lots, power plants, water systems and more. They consider construction costs, environment hazards, risks, and government regulations."
        case .computerScientist:
            return "Computer Science is the study of the methods of processing information in computers. Areas of computer science include coding, robotics, machine learning, algorithms, and more. Computer Scientists build the tools that enable everyday computing."
        case .dentist:
            return "Dentists find out what's wrong, fix, and help prevent problems with teeth.They provide advice and instruction on taking care of the teeth and gums and on diet choices that affect oral health."
        case .economist:
            return "Economists study the production and distribution of resources, goods, and services by collecting and analyzing data, researching trends, and evaluating economic issues."
        case .electricalEngineer:
            return "Electrical engineers design, develop, test, and supervise the manufacturing of electrical equipment, such as electric motors, radar and navigation systems, communications systems, and power generation equipment."
        case .genetisist:
            return "Geneticists study genes from plants, animals, and humans to determine how genes interact with each other, evolve, and duplicate."
        case .mechanicalEngineer:
            return "Mechanical engineering is one of the broadest engineering fields. Mechanical engineers design and oversee the manufacture of many products ranging from medical devices to new batteries."
        case .nurse:
            return "Registered nurses (RNs) provide and coordinate patient care, educate patients and the public about various health conditions, and provide advice and emotional support to patients and their family members."
        case .pediatrician:
            return "Pathologists are physicians who specialize in the study of body tissue to see if it is normal or abnormal. They identify diseases by examining cells and tissues under a microscope."
        case .statistician:
            return "Statisticians analyze data and apply theories and techniques, such as statistical modeling, to help solve real-world problems in business, engineering, healthcare, or other fields."
        case .surgeon:
            return "Surgeons treat injuries, diseases, and deformities through operations. Using a variety of instruments, a surgeon corrects physical deformities, repairs bone and tissue after injuries, or performs preventive or elective surgeries on patients."
        case .teacher:
            return "A Teacher is responsible for preparing lesson plans and educating students at all levels. Their duties include assigning homework, grading tests, and documenting progress. Teachers must be able to instruct in a variety of subjects and reach students with engaging lesson plans."
        case .veterinarian:
            return "Veterinarians care for the health of animals and work to improve public health. They diagnose, treat, and research medical conditions and diseases of pets, livestock, and other animals."
        }
    }
    
    var boldTextForType: String {
        switch self {
            
        case .aerospaceEngineer:
            return "Two types of Aerospace Engineers are :"
        case .astronomer:
            return "Two types of Astronomers are :"
        case .biomedicalEngineer:
            return "Two types of Biomedical Engineers are :"
        case .chemicalEngineer:
            return "Skills you need: "
        case .civilEngineer:
            return "Skills you need: "
        case .computerScientist:
            return "Skills you need: "
        case .dentist:
            return "Two types of Dentists are :"
        case .economist:
            return "Skills you need: "
        case .electricalEngineer:
            return "Skills you need: "
        case .genetisist:
            return "Skills you need: "
        case .mechanicalEngineer:
            return "Skills you need: "
        case .nurse:
            return "Skills you need: "
        case .pediatrician:
            return "Skills you need: "
        case .statistician:
            return "Skills you need: "
        case .surgeon:
            return "Two types of Surgeons are :"
        case .teacher:
            return "Skills you need: "
        case .veterinarian:
            return "Skills you need: "
        }
    }
    
    var types: [String] {
        
        var yourTypes: [String]!
        switch self {
            
        case .aerospaceEngineer:
            yourTypes =  ["Aeronautical","Astronautical"]
        case .astronomer:
            yourTypes =  ["Observational","Theoretical"]
        case .biomedicalEngineer:
            yourTypes =  ["Analytical","Creativity"]
        case .chemicalEngineer:
            yourTypes =  ["Creativity","Problem-Solving"]
        case .civilEngineer:
            yourTypes =  ["Communication","Math"]
        case .computerScientist:
            yourTypes =  ["Analytical","Concentration"]
        case .dentist:
            yourTypes =  ["Orthodontist","Surgeon"]
        case .economist:
            yourTypes =  ["Math","Analytical"]
        case .electricalEngineer:
            yourTypes =  ["Leadership","Problem-Solving"]
        case .genetisist:
            yourTypes =  ["Analytical","Communication"]
        case .mechanicalEngineer:
            yourTypes =  ["Creativity","Listening"]
        case .nurse:
            yourTypes =  ["Compassion","Critical-thinking"]
        case .pediatrician:
            yourTypes =  ["Communication","Compassion"]
        case .statistician:
            yourTypes =  ["Analytical","Problem-Solving"]
        case .surgeon:
            yourTypes =  ["Cardiothoracic surgeon","Neurosurgeon"]
        case .teacher:
            yourTypes =  ["Communication","Patience"]
        case .veterinarian:
            yourTypes =  ["Compassion","Communication"]
        }
        
        return yourTypes
    }
    
    func typeDescription(fortype: enCareersData) -> NSMutableAttributedString {
        
        
        let _types = fortype.types
        let desc: [String]!
        
        
        switch fortype {
            
        case .aerospaceEngineer:
            
            desc = [" - Work with aircraft that stays in the Earth's atmosphere like helicopter and airplanes\n "," - Work with spacecrafts (go outside Earth's atmosphere) like rockers and satellites "]
            
        case .astronomer:
            desc = [" - Uses telescopes and cameras to observe or look at stars, galaxies and other astronomical objects\n "," - Uses math and computer models to predict what should happen "]
            
        case .biomedicalEngineer:
            desc = [" - Analyze the needs of patients and customers to design appropriate solutions\n "," - Be creative to come up with innovative healthcare equipment and devices "]
            
        case .chemicalEngineer:
            desc = [" - They work to invent new materials and advanced manufacturing techniques\n "," - In designing equipment, they identify problems, including such issues as workers’ safety and problems related to manufacturing"]
            
        case .civilEngineer:
            desc = [" - Must be able to communicate with others, such as architects, landscape architects, urban and regional planners\n "," - Use the principles of shapes and other advanced topics in mathematics for design and troubleshooting in their work "]
            
        case .computerScientist:
            desc = [" - Computer programmers must understand complex instructions in order to create computer code\n "," - Programmers must focus their attention on their work as they write code or check existing code for errors "]
            
        case .dentist:
            desc = [" -  Dental surgeons will perform surgery to fix large or dangerous problems with people's teeth\n "," - Help straighten people's teeth using braces "]
            
        case .economist:
            desc = [" -  From dealing with large datasets to interpreting visual data like graphs, you'll need to be comfortable handling numbers\n "," - Must be able to review data in detail, observe patterns, perform advanced calculations, and draw logical conclusions "]
            
        case .electricalEngineer:
            desc = [" -  Electrical engineers must take charge of programs and a team of employees to see them to completion\n "," - Solve complex problems while repairing goods and refining products "]
            
        case .genetisist:
            desc = [" -  Must be able to conduct scientific experiments and analyses with accuracy and precision\n "," - Have to write and publish reports and research papers, give presentations of their findings, and communicate clearly with team members "]
            
        case .mechanicalEngineer:
            desc = [" - A creative mind is essential to design and build equipment and machinery\n "," - Often work on projects with others, such as architects and computer scientists. They must listen to different approaches made by other experts to complete the task "]
            
        case .nurse:
            desc = [" - Should be caring and empathetic when looking after patients\n "," - Registered nurses must assess changes in the health status of patients, such as determining when to take corrective action and when to make referrals "]
            
        case .pediatrician:
            desc = [" - They must communicate effectively with their patients and other healthcare support staff\n "," - Patients who are sick or injured may be in extreme pain or distress. Pediatricians must treat patients and their families with compassion and understanding "]
            
        case .statistician:
            desc = [" - Use mathematical techniques and models to analyze large amounts of data. They must determine the appropriate software packages and understand computer programming languages to design and develop new techniques and models \n "," - Must devise solutions to problems encountered by scientists or engineers "]
            
        case .surgeon:
            desc = [" - Specialize in procedures involving the heart, lungs, esophagus and other organs within the chest fall under this category \n "," - Experts about diseases and conditions that affect the brain and spine, and commonly help patients suffering from strokes" ]
            
        case .teacher:
            desc = [" - Create lesson plans to teach students subjects, such as reading, science, social studies, and math\n "," - Teach students how to study and communicate with others "]
            
        case .veterinarian:
            desc = [" - When working with animals and their owners, they must treat animals with kindness and respect, and must be sensitive when dealing with the animal owners \n "," - Must be able to discuss their recommendations and explain treatment options to animal owners and give instructions to their staff "]
            
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
            
        case .aerospaceEngineer:
            return UIImage(named: "rocket")
        case .astronomer:
            return UIImage(named: "stars")
        case .biomedicalEngineer:
            return UIImage(named: "biomedical_girl")
        case .chemicalEngineer:
            return UIImage(named: "chemical_girl")
        case .civilEngineer:
            return UIImage(named: "civil_girl")
        case .computerScientist:
            return UIImage(named: "computer")
        case .dentist:
            return UIImage(named: "dentist_girl")
        case .economist:
            return UIImage(named: "economist_girl")
        case .electricalEngineer:
            return UIImage(named: "electrical_girl")
        case .genetisist:
            return UIImage(named: "gene_girl")
        case .mechanicalEngineer:
            return UIImage(named: "mechanical_girl")
        case .nurse:
            return UIImage(named: "nurse_girl")
        case .pediatrician:
            return UIImage(named: "ped_girl")
        case .statistician:
            return UIImage(named: "stat_girl")
        case .surgeon:
            return UIImage(named: "surgeon_girl")
        case .teacher:
            return UIImage(named: "teacher")
        case .veterinarian:
            return UIImage(named: "vet_girl")
        
        }
    }
    
    var boldActivity: String {
        switch self {
            
        case .aerospaceEngineer:
            return "Activities:"
        case .astronomer:
            return "Activities:"
        case .biomedicalEngineer:
            return "Activities:"
        case .chemicalEngineer:
            return "Activities:"
        case .civilEngineer:
            return "Activities:"
        case .computerScientist:
            return "Activities:"
        case .dentist:
            return "Activities:"
        case .economist:
            return "Activities:"
        case .electricalEngineer:
            return "Activities:"
        case .genetisist:
            return "Activities:"
        case .mechanicalEngineer:
            return "Activities:"
        case .nurse:
            return "Activities:"
        case .pediatrician:
            return "Activities:"
        case .statistician:
            return "Activities:"
        case .surgeon:
            return "Activities:"
        case .teacher:
            return "Activities:"
        case .veterinarian:
            return "Activities:"
        }
    }
    
    var activityDescription: String {
        switch self {
            
        case .aerospaceEngineer:
            return "- Design, create, and test aircraft products\n- Make sure designs meet quality standards and regulations\n- Improve safety\n- Come up with easier ways to navigate\n- Identify malfunctioning and come up with solutions"
        case .astronomer:
            return "- Develop and test scientific theories\n- Use telescopes to collect information about outer space\n- Do math calculations to analyze data that might indicate new planets, solar systems, and properties of matter\n- Present their research discoveries"
        case .biomedicalEngineer:
            return "- Design and deliver technology to help people with disabilities\n- Create artificial organs\n- Conduct research on the body systems of humans and animals \n- Evaluate the safety of medical equipment"
        case .chemicalEngineer:
            return "- Make safety procedures that should be used when working with chemicals\n- Design environmental friendly products\n- Purify seawater into drinking water \n- Evaluate equipment to meet regulations"
        case .civilEngineer:
            return "- Use computer technologies to design layout and blueprint of structures\n- Manage repair and maintenance\n- Oversee construction\n- Oversee construction"
        case .computerScientist:
            return "- Create programs to solve a problem\n- Build mobile apps and websites\n- Design video games\n- Create new programming languages that improve the way people use computers\n- Develop computer systems for the latest electric car"
        case .dentist:
            return "- Repair cracked or fractured teeth and remove teeth\n- Teach patients about diets, flossing, the use of fluoride, and other aspects of dental care\n- Examine x rays of teeth, gums, the jaw, and nearby areas in order to diagnose problems\n- Prescribe medication"
        case .economist:
            return "- Research economic issues\n- Conduct surveys and collect data\n- Analyze data using mathematical models, statistical techniques, and software\n- Present research results in reports, tables, and charts\n- Recommend solutions to economic problems"
        case .electricalEngineer:
            return "- Design new ways to use electrical power to develop or improve products\n-  Direct the manufacture, installation, and testing of electrical equipment to ensure that products meet specifications and codes\n- Work with project managers on production to ensure that projects on time"
        case .genetisist:
            return "- Plan and conduct complex projects in basic and applied research\n- Manage laboratory teams and monitor the quality of their work\n- Isolate, analyze, and synthesize proteins, fats, DNA, and other molecules\n- Prepare technical reports, research papers, and recommendations based on their research findings"
        case .mechanicalEngineer:
            return "- Analyze problems to see how mechanical and thermal devices might help solve a particular problem\n- Investigate equipment failures or difficulties to diagnose faulty operation and to recommend remedies\n- Develop and test prototypes of devices they design"
        case .nurse:
            return "- Assess patients’ conditions\n- Record patients’ medical histories and symptoms\n- Observe patients and record the observations\n- Consult and collaborate with doctors and other healthcare professionals\n- Help perform diagnostic tests and analyze the results"
        case .pediatrician:
            return "- Take a patient’s medical history\n- Update charts and patient information to show current findings and treatments\n- Order tests for nurses or other healthcare staff to perform\n- Review test results to identify any abnormal findings\n- Recommend and design a plan of treatment"
        case .statistician:
            return "- Design surveys, experiments, or opinion polls to collect data\n- Interpret data and report conclusions drawn from their analyses\n- Apply mathematical theories and techniques to solve practical problems in business, engineering, the sciences, and other fields"
        case .surgeon:
            return "- Take a patient’s medical history\n- Update charts and patient information to show current findings and treatments\n- Order tests for nurses or other healthcare staff to perform\n- Review test results to identify any abnormal findings\n- Recommend and design a plan of treatment"
        case .teacher:
            return "- Create lesson plans to teach students subjects, such as reading, science, social studies,and math\n- Teach students how to study and communicate with others\n- Develop and enforce classroom rules\n- Grade students’ assignments and exams\n- Prepare students for standardized tests required by the state"
        case .veterinarian:
            return "- Examine animals to diagnose their health problems\n- Treat and dress wounds\n- Perform surgery on animals\n- Test for and vaccinate against diseases\n- Advise animal owners about general care, medical conditions, and treatments"
        }
    }
    
    var activityImage: UIImage? {
        switch self {
            
        case .aerospaceEngineer:
            return UIImage(named: "rocket_2")
        case .astronomer:
            return UIImage(named: "astronomer_girl")
        case .biomedicalEngineer:
            return UIImage(named: "lab")
        case .chemicalEngineer:
            return UIImage(named: "tube_gears")
        case .civilEngineer:
            return UIImage(named: "skyline")
        case .computerScientist:
            return UIImage(named: "computer_girl")
        case .dentist:
            return UIImage(named: "dentist_tools")
        case .economist:
            return UIImage(named: "economist_tools")
        case .electricalEngineer:
            return UIImage(named: "electrical_tools")
        case .genetisist:
            return UIImage(named: "dna")
        case .mechanicalEngineer:
            return UIImage(named: "mechanical_tools")
        case .nurse:
            return UIImage(named: "nurse_tools")
        case .pediatrician:
            return UIImage(named: "ped_tools")
        case .statistician:
            return UIImage(named: "stat_tools")
        case .surgeon:
            return UIImage(named: "surgeon_tools")
        case .teacher:
            return UIImage(named: "teacher_tools")
        case .veterinarian:
            return UIImage(named: "vet_tools")
        
        }
    }
}

//Aerospace Engineer
//Astronomer
//Biomedical Engineer
//Chemical Engineer
//Civil Engineer
//Computer Scientist
//Dentist
//Economist
//Electrical Engineer
//Genetisist
//Mechanical Engineer
//Nurse
//Pediatrician
//Statistician
//Surgeon
//Teacher
//Veterinarian
