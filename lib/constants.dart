
//TODO Add Rest of Buildings
// TODO Add Redtails for C-Store
//  TODO add Foster
// and add Kenney for Bioethics
import 'package:flutter/material.dart';

import 'models/building_archetype.dart';

final kBuildings = [
  'Abbott Stadium',
  'Brimmer',
  'Armstrong Hall',
  'Banneker Hall',
  'Basil O Connor Hall',
  'Bethune Hall',
  'Bioethics',
  'Booker T. Washington Monument',
  'Brimmer',
  'Campbell Hall',
  'Carnegie Hall',
  'Carver Foundation',
  'Centralized Laboratory Animal Research Facility',
  'Chambliss Business House',
  'Chappie James Arena',
  'Convenience Store',
  'Douglass Hall',
  'East Commons',
  'Emery I',
  'Emery II',
  'Emery III',
  'Emery IV',
  'Emery Recreation Building',
  'Engineering Building',
  'Ford Library',
  'George Washington Carver Museum',
  'Harper Hall',
  'Harvey Hall',
  'Henderson Hall',
  'Housing',
  'Huntington Hall',
  'James Hall',
  'Kellogg Hotel and Conference Center',
  'Kresge Center',
  'Large Animal Clinic',
  'Lewis Adams Hall',
  'Logan Hall',
  'Marable Courts',
  'Margaret Murray Washington Hall',
  'Milbank Hall',
  'Morrison Mayberry Hall',
  'North Commons',
  'Old Adminsitration Building',
  'Olivia Davidson Hall',
  'Patterson Hall',
  'Physical Plant',
  'Post Mortem Building',
  'Power Plant',
  'Robert Circle',
  'Robert R. Moton Hall',
  'Rockefeller Hall',
  'Rosenwald Hall',
  'ROTC',
  'Russell Hall',
  'Russell Nursery',
  'Sage Hall',
  'Small Animal Clinic',
  'Softball Field',
  'Tantum Hall',
  'Tennis Court',
  'The Oaks',
  'Thrasher Hall',
  'Tompkins Hall',
  'Tuskegee Univ. Police Dept.',
  'University Apartment',
  'University Chapel',
  'Washington Field',
  'West Commons',
  'White Hall',
  'WIlcox A',
  'Wilcox B',
  'Wilcox C',
  'Wilcox D',
  'Wilcox E',
  'William V. Chambliss House',
  'Williams - Bowie Hall',
  'Younge Hall',

];
// Building Descriptions
final String kAbbottInfo = 'Ground breaking exercises for Cleve L . Abbott Memorial Alumni Stadium (formerly Alumni Bowl) at Tuskegee University were held on Aug. 21, 1924. The stadium was the first of its kind to be built at any Black school in the South. It was named Alumni Bowl because of the significant contributions made by alumni for the construction of the facility. After 71 years of play in the grand old stadium, University officials formerly dedicated the facility by renaming it the Cleve L. Abbott Memorial Alumni Stadium on Nov. 9, 1996. Abbott, the most successful coach in the 106 year history of Tuskegee football, served as the Golden Tigers’ head coach from 1923 to 1954, winning 202 games, losing 95 and tying 27 in a 32-year coaching span. The present seating capacity of Abbott Memorial Alumni Stadium is 10,000.';
final String kArmstrongInfo = 'Science Center is located in Armstrong Hall.';
final String kBasilInfo = 'In 1965, the United States Bureau of Health Resources Development donated a grant of \$427,000 that enabled Tuskegee University to erect Basil O’Connor Hall with more than 27,000 square feet of space that Tuskegee’s nursing program has occupied since June 1968. The nursing building serves as a memorial to Mr. Basil O’Connor, the philanthropic former Tuskegee Board of Trustees member.';
final kBannekerInfo = 'Is a Male Residence Hall for upperclassmen';
final String kBethuneInfo = 'Is a Male Residence Hall for freshmen';
final String kBioethicsInfo = 'The John A. Andrew Complex is completely renovated as the location of the Tuskegee University National Center for Bioethics in Research and Health Care-the only center in the nation with its unique mission to serve African Americans and other underserved communities. The modern facility also includes classroom and office space for all College of Liberal Arts and Education (CLAE) programs, accommodations for the University archives and a museum. The Bioethics Center was established in 1999 under the leadership of Tuskegee’s fifth president, Dr. Benjamin F. Payton, and in response to the 1997 apology by President Bill Clinton for the United States Public Health Services Syphilis Study in Macon County, Alabama.';
 String kBrimmerInfo = 'The College of Business and Information Science, located in the new Andrew F. Brimmer Hall, is a direct outgrowth of Tuskegee University’s historical mission and its emphasis on economic empowerment and business development. From its inception, Tuskegee has been a highly recognized and visible institution committed to the values of self help, business development and lifelong learning';
final String kBookerInfo = 'This heroic bronze sculpture, crafted by architect Charles Keck, was unveiled on April15, 1922. When the Monument was unveiled more than 100,000 people were present to pay tribute to Tuskegee’s founder and first president. The monument shows Dr. Booker T. Washington “Lifting the Veil of Ignorance” and pointing the way to progress through education and industry.';
final String kCampbellInfo = 'Built in 1921 to serve as a horse and mule barn until 1955, the building was later renamed the Farm Mechanization Building from 1955 to 1991. A 1988 renovation made the center section of the building three stories high. The building serves today as home for the College of Agricultural, Environmental and Natural Sciences (CAENS). Thomas Monroe Campbell, for whom the building is named, was the nation’s first cooperative extension agent and is a graduate of Tuskegee.';
final String kCarnegieInfo = 'Named in honor of its benefactor, Andrew Carnegie, the building was once the assembly hall where Dr. W.E.B. DuBois taught summer school in 1903 and Dr. George Washington Carver began teaching Bible classes in 1911. Carnegie Hall now houses the offices of Financial Aid Services, and the Career Development and Placement Services Center.';
final String kCarverInfo = 'Named after the great agricultural scientist George Washington Carver, the Carver Research Foundation houses research labs for conducting basic science research primarily in prostate cancer. The one-floor facility consists of a classroom for graduate students, a conference room, a core research facility and offices and research labs. The research facility is funded in part through grants from the Research Centers in Minority Institutions (RCMI) of the National Institutes of Health.';
final String kCentralizedBuilding = 'The College has a modern animal facility capable of accommodating from rodents to large animals and well-organized Comparative Medicine Resource Center (CMRC) for research involving laboratory animals and small ruminants. The facility provides all services to researchers who have projects approved for animal use. The animal facility serves the biomedical research community in the university and is fully equipped with, among others, offices, garment changing areas, animal isolation/quarantine, housing rooms (for both conventional and special accommodations), and rooms for feed storage, cold holding and necropsy. A designated attending veterinarian, a facility manager, a center director and adequate non-technical support personnel are available.';
final String kCHamblissInfo =  'n 1930, the school served a dual purpose public elementary school and practice facility for students in the Department of Education. The Chambliss Business House previously served as the home of the College of Business.';
final String kChappieInfo = 'The James Center Arena is the third home for the Tuskegee Basketball Golden Tigers and Tigerettes. Huntington Hall served as the home court from 1908 to 1931 and Logan Hall from January 9, 1931 until 1987.';
final String kConvenienceStore =  'New eatery, convenience store is established in 2013.';
final String kDouglassInfo =  'Named after Frederick Douglas, Douglass Hall was completed in 1904, but burned down in 1934. The building standing today is what was rebuilt after the fire. It was used as a woman’s dormitory and also housed a large auditorium.';
final String kEastCommons =  'The Commons Apartments has two (2) and four (4) bedroom apartments available for Tuskegee University students meeting the requirement';
final String kEmeryOneInfo = 'Singles Female Residence Halls';
final String kEmeryTwoInfo = 'Singles Female Residence Halls';
final String kEmeryThreeInfo = 'Singles Male Residence Halls';
final String kEmeryFourInfo = 'Singles Male Residence Halls';
final String kEmeryRInfo = 'It was built in 1968. A low, one story concrete block structure built by buildings and grounds department near to Emery III';
final String kFosterInfo = 'Formerly named the Engineering Building, the facility was renamed in 2002 for the fourth president of Tuskegee University, Dr. Luther Hilton Foster. The building houses the administrative offices of the College of Engineering, Architecture and Physical Sciences (CEAPS).Tuskegee is a leading producer of African American engineers in the country, the leading producer of Blacks in mathematics, science and engineering in the state of Alabama and the only HBCU with accredited aerospace programs.';
final String kFordLibrary =  'The library, originally constructed in 1932, eventually became overcrowded and too aged to function as a progressive University main library. Renovated and rededicated as the Ford Motor Company Library/Learning Resources Center in 2001, the three-story library is now a state-of-the-art facility with computer laboratories, more than 300,000 volumes, and more than 1,600 periodicals. One of the highlights is the Booker T. Washington Collection.';
final String kCarverMuseumInfo =  'Arguably be a ring the name of one of the most influential scientist of all time and certainly the most recognizable African-American agricultural researcher in history, the lifetime work of Dr.George Washington Carver is on display in the Museum. Authorized within the Tuskegee Institute National Historic Site for the preservation of historic structures in 1975, the property was purchased by the National Historic Park Service.';
final String kHarperInfo =  'Named after former nurse name Mary Starke Harper 41 career in nursing spanned more than 30 years.A registered nurse, sociologist, clinical psychologist, secondary school educator, and program administrator, Dr. Harper holds degrees from St. Louis University, the University of Minnesota, and Tuskegee. She has provided consultations throughout the United States and Africa, Australia, Europe, the Middle East, North and South America. She was for a number of years coordinator of Long Term Care Programs, National Institute of Mental Health, U. S. Department of Health and Human Services.';
final String kHarveyInfo = 'Named after former nursing dean Lillian Harvey, the dormitory once solely housed students in the School of Nursing.';
final String kHousingInfo = 'The duties and responsibilities of the housing office is to provide on campus housing for all students residing in the Residence Halls, Commons and Marable Apartments. Students must be accepted to the University and be enrolled full time for an academic year or semester.';
final String kHuntingtonInfo = 'Huntington Hall was completed in 1899 and was used as a women’s dormitory. It was named after the Huntington family, funds having been donated by the widow of Collis Huntington. Huntington made his fortune in the railroad business and was the president of the Cheasapeake and Ohio Railroad. The building went on to be used as the residence of staff members and also housed classrooms and faculty offices.';
final String kJamesInfo =  'Is a Female/Male Residence Hall for upperclassmen';
final String kKelloggInfo = 'This building was completed in 1901 and used to teach the many trades for women. From 1938 to 1943 George Washington Carver lived here. Today it is used as a hotel, restaurant, and conference center and can also be reserved for weddings and other events. For more information, visit www.tuskegeekelloggcenter.com.';
final String kKresgeInfo = 'The administrative home of the campus completed in 1976 houses faculty, student and administrative services divisions. The Kresge Center houses the offices of the President, University Advancement, Alumni Affairs, Provost, Business and Fiscal Affairs, Budget, Accounts Payable, Marketing and Communications, Sports Information, Human Resources Management, Bursar, Cashier, Registrar, Controller, Accounting,Payroll, Purchasing, Auxiliary Services, and Grants Management.';
final String kLargeAnimalInfo = 'The Large Animal Care Center with 20,237 NSF, houses the faculty and staff of the Large Animal Medicine and Surgery Unit of the Department of Clinical Sciences, a divisible classroom with 130 student stations, a centralized surgical sterilization area and pharmacy, central supply, a student operating room suite for surgery on large and small animals, and animal quarters that contain 27 stalls for horses and/or cattle. The principal large animal surgery suite for client animals is also located in this building.';
final String kLewisInfo = 'It was built in 1964, and this is a women’s dormitory now';
final String kLoganInfo = 'The Tuskegee Logan Hall Fitness Center is a modern 3000 square-feet facility located on the ground floor of Logan Hall. The facility was built in 2010 to provide an atmosphere in which the physical fitness needs, health and fitness concerns of Tuskegee University students, faculty and staff could be addressed.';
final String kMarableInfo = 'The Marable Apartments has two (2) bedroom apartments available for Tuskegee University students meeting the requirements';
final String kMargaretInfo = 'Named after Booker T. Washington’s third wife, Margaret, who as the Lady Principal of the school, this building was originally the home of the school’s agriculture department. It was built in 1897. It is now used as the university’s Welcome Center and has an auditorium, meeting spaces for students, a cafeteria, and a book store. It is also home to the Admissions Department.';
final String kMilBankInfo = 'Millbank Agricultural Hall was constructed in 1909. Gift of Mrs. Elizabeth M. Anderson. Agricultural classes were taught here. George Washington Carver had a laboratory in this building.';
final String kMorrisInfo = 'Building of Agriculture and Environmental Sciences';
final String kNorthCommonsInfo = 'Students who are eligible upperclassmen enjoy the comforts of residing in the modern state-of-the-art living complexes. These apartment style living-learning facilities are cons t rusted on the University campus.';
final String kOldAdministrationInfo = 'The offices of Admissions, Dean of Students, and Counseling Center are a part of this building, which previously housed the offices of the first three University presidents, a community post office and a bank /credit union for the residents of Tuskegee.';
final String kPattersonInfo = 'The five-floor facility includes a media and student center, the school’s office of admissions and recruitment, the Patterson Hall Auditorium and atrium, the Office of the Dean and associate deans, the T.S. Williams Veterinary Medicine Library, a comprehensive classroom, and the departments of biomedical sciences and pathobiology';
final String kPhysicalBuilding = 'The space allocation and usage, as it relates to the School programmatic activities, are described on the following pages for each building in the Veterinary School Complex.';
final String kPostMortemBuilding = 'The Post Mortem Building provides 4,126 NSF for faculty/staff offices, necropsy and poultry diagnostic laboratories, a small seminar room with 15 student stations, and a tissue trimming, solution preparation and gross photography room. This facility has recently been renovated including installation of a new HAVC system, three down draft tables for small animals, stainless steel cabinets and tables, a pneumatic necropsy table for large animals, ceiling mounted spot lights, a hoist, new sinks and a new cold room, safety showers, band saw, 30-seat amphitheater bleachers, a projection screen, a multiple head (7) microscope, a washer and dryer, safety shower/eye wash, and a portable high pressure washer/sterilizer.';
final String kPowerPlant = 'The Power Plant was built in 1915 and was the source of the campus’ electricity. It appears dilapidated today and is no longer in use.';
final String kMotonHall = 'Robert Russa Motorn Hall was built in 1952. Engineering building until 1970, human resource center, job corps center headquarters since 1980. Designed to be built in three units for electrical, mechanical and civil engineering, only two units built. Built by institute construction department.';
final String kRockefellerHall = 'Rockefeller Hall built in 1903 through donations from John D. Rockefeller. Three story brick building originally was a boy dormitory housing 160 young men. In later years, it was used as a male dormitory.';
final String kRosenwaldBuilding = 'The Department of Pathobiology utilizes this area to provide laboratory instruction in veterinary microbiology, virology, immunology, molecular biology, public health, epidemiology, and clinical microbiology and to provide microbiology laboratory instruction for nursing and allied health students. There are two smaller preparatory laboratories, a storage incubator, and an autoclave room adjacent to this laboratory.';
final String kROTCBuilding = 'Home of the NROTC';
final String kRussellHall = 'Is a Female Residence Hall for Upperclassmen';
final String kRussellNursery = 'It was built in 1957. Laboratory school for school of education nursery and kindergarten.';
final String kSageHall = 'Is a Female Residence Hall for Underclassmen';
final String kSmallClinic = 'The Small Animal Hospital occupies approximately 7,100 NSF of the clinical wing. In addition, an area outside approximately 25 feet from the building provides 6 holding (6 x 12) runs and an exercise area (60 x 40) for companion animal patients. Approximately 500 yards from the clinic is a 1,657 NSF dog kennel serving the programs of the Departments of Biomedical Sciences and Clinical Sciences.';
final String kTantumHall = 'Tantum Hall was built in 1907 and used as a female dormitory now.';
final String kTennisCourt = 'The Pepsico Tennis Courts were completed in 2001. Under the tutelage of head coach Gregory Green, Tuskegee played the 2001 men and women tennis seasons at this facility, which has five courts, lights and seating for approximately 200 spectators.';
final String kOaks = 'The students and faculty of Tuskegee constructed the family home of Dr. Booker T. Washington in 1899. It was the first home in Macon County, Alabama, to have running water and electricity. With eight rooms (five bedrooms, three bathrooms), three porches and its original furnishings, it is a mansion by present-day standards. The Oaks is now owned and maintained by the National Park Service under the authorized purchase for preservation of historic structures within the Tuskegee Institute National Historic Site.';
final String kThrasherHall = 'Named in memory of Max Bennett Thrasher of Westmoreland, New Hampshire, this handsome three-story brick building was built in 1893.';
final String kTompkins = 'Tompkins Hall was completed in 1910 and was the main dining hall at Tuskegee Institute. This building was later transformed into the Student Union, thus making it the central point on campus when it came to student life.  ';
// final String k = '';
// final String k = '';
// final String k = '';
// final String k = '';
final kRecentBuildings = [
  'Brimmer',
  "Carnegie",
];

Map contacts = Map<String, int>();
void working (){
var buildingDirectory = Map<String, BuildingArchetype>();
buildingDirectory['Brimmer'] = BuildingArchetype(
title: 'Brimmer',
info: kBrimmerInfo,
lat: 32.427183,
long: -85.702267,
);

}
// Colors
final kMainYellow = Color(0xffE3B821);
