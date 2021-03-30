import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
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
final String kAbbottInfo =
    'Ground breaking exercises for Cleve L . Abbott Memorial Alumni Stadium (formerly Alumni Bowl) at Tuskegee University were held on Aug. 21, 1924. The stadium was the first of its kind to be built at any Black school in the South. It was named Alumni Bowl because of the significant contributions made by alumni for the construction of the facility. After 71 years of play in the grand old stadium, University officials formerly dedicated the facility by renaming it the Cleve L. Abbott Memorial Alumni Stadium on Nov. 9, 1996. Abbott, the most successful coach in the 106 year history of Tuskegee football, served as the Golden Tigers’ head coach from 1923 to 1954, winning 202 games, losing 95 and tying 27 in a 32-year coaching span. The present seating capacity of Abbott Memorial Alumni Stadium is 10,000.';
final String kArmstrongInfo = 'Science Center is located in Armstrong Hall.';
final String kBasilInfo =
    'In 1965, the United States Bureau of Health Resources Development donated a grant of \$427,000 that enabled Tuskegee University to erect Basil O’Connor Hall with more than 27,000 square feet of space that Tuskegee’s nursing program has occupied since June 1968. The nursing building serves as a memorial to Mr. Basil O’Connor, the philanthropic former Tuskegee Board of Trustees member.';
final kBannekerInfo = 'Is a Male Residence Hall for upperclassmen';
final String kBethuneInfo = 'Is a Male Residence Hall for freshmen';
final String kBioethicsInfo =
    'The John A. Andrew Complex is completely renovated as the location of the Tuskegee University National Center for Bioethics in Research and Health Care-the only center in the nation with its unique mission to serve African Americans and other underserved communities. The modern facility also includes classroom and office space for all College of Liberal Arts and Education (CLAE) programs, accommodations for the University archives and a museum. The Bioethics Center was established in 1999 under the leadership of Tuskegee’s fifth president, Dr. Benjamin F. Payton, and in response to the 1997 apology by President Bill Clinton for the United States Public Health Services Syphilis Study in Macon County, Alabama.';
String kBrimmerInfo =
    'The College of Business and Information Science, located in the new Andrew F. Brimmer Hall, is a direct outgrowth of Tuskegee University’s historical mission and its emphasis on economic empowerment and business development. From its inception, Tuskegee has been a highly recognized and visible institution committed to the values of self help, business development and lifelong learning';
final String kBookerInfo =
    'This heroic bronze sculpture, crafted by architect Charles Keck, was unveiled on April15, 1922. When the Monument was unveiled more than 100,000 people were present to pay tribute to Tuskegee’s founder and first president. The monument shows Dr. Booker T. Washington “Lifting the Veil of Ignorance” and pointing the way to progress through education and industry.';
final String kCampbellInfo =
    'Built in 1921 to serve as a horse and mule barn until 1955, the building was later renamed the Farm Mechanization Building from 1955 to 1991. A 1988 renovation made the center section of the building three stories high. The building serves today as home for the College of Agricultural, Environmental and Natural Sciences (CAENS). Thomas Monroe Campbell, for whom the building is named, was the nation’s first cooperative extension agent and is a graduate of Tuskegee.';
final String kCarnegieInfo =
    'Named in honor of its benefactor, Andrew Carnegie, the building was once the assembly hall where Dr. W.E.B. DuBois taught summer school in 1903 and Dr. George Washington Carver began teaching Bible classes in 1911. Carnegie Hall now houses the offices of Financial Aid Services, and the Career Development and Placement Services Center.';
final String kCarverInfo =
    'Named after the great agricultural scientist George Washington Carver, the Carver Research Foundation houses research labs for conducting basic science research primarily in prostate cancer. The one-floor facility consists of a classroom for graduate students, a conference room, a core research facility and offices and research labs. The research facility is funded in part through grants from the Research Centers in Minority Institutions (RCMI) of the National Institutes of Health.';
final String kCentralizedBuilding =
    'The College has a modern animal facility capable of accommodating from rodents to large animals and well-organized Comparative Medicine Resource Center (CMRC) for research involving laboratory animals and small ruminants. The facility provides all services to researchers who have projects approved for animal use. The animal facility serves the biomedical research community in the university and is fully equipped with, among others, offices, garment changing areas, animal isolation/quarantine, housing rooms (for both conventional and special accommodations), and rooms for feed storage, cold holding and necropsy. A designated attending veterinarian, a facility manager, a center director and adequate non-technical support personnel are available.';
final String kCHamblissInfo =
    'n 1930, the school served a dual purpose public elementary school and practice facility for students in the Department of Education. The Chambliss Business House previously served as the home of the College of Business.';
final String kChappieInfo =
    'The James Center Arena is the third home for the Tuskegee Basketball Golden Tigers and Tigerettes. Huntington Hall served as the home court from 1908 to 1931 and Logan Hall from January 9, 1931 until 1987.';
final String kConvenienceStore =
    'New eatery, convenience store is established in 2013.';
final String kDouglassInfo =
    'Named after Frederick Douglas, Douglass Hall was completed in 1904, but burned down in 1934. The building standing today is what was rebuilt after the fire. It was used as a woman’s dormitory and also housed a large auditorium.';
final String kEastCommons =
    'The Commons Apartments has two (2) and four (4) bedroom apartments available for Tuskegee University students meeting the requirement';
final String kEmeryOneInfo = 'Singles Female Residence Halls';
final String kEmeryTwoInfo = 'Singles Female Residence Halls';
final String kEmeryThreeInfo = 'Singles Male Residence Halls';
final String kEmeryFourInfo = 'Singles Male Residence Halls';
final String kEmeryRInfo =
    'It was built in 1968. A low, one story concrete block structure built by buildings and grounds department near to Emery III';
final String kFosterInfo =
    'Formerly named the Engineering Building, the facility was renamed in 2002 for the fourth president of Tuskegee University, Dr. Luther Hilton Foster. The building houses the administrative offices of the College of Engineering, Architecture and Physical Sciences (CEAPS).Tuskegee is a leading producer of African American engineers in the country, the leading producer of Blacks in mathematics, science and engineering in the state of Alabama and the only HBCU with accredited aerospace programs.';
final String kFordLibrary =
    'The library, originally constructed in 1932, eventually became overcrowded and too aged to function as a progressive University main library. Renovated and rededicated as the Ford Motor Company Library/Learning Resources Center in 2001, the three-story library is now a state-of-the-art facility with computer laboratories, more than 300,000 volumes, and more than 1,600 periodicals. One of the highlights is the Booker T. Washington Collection.';
final String kCarverMuseumInfo =
    'Arguably be a ring the name of one of the most influential scientist of all time and certainly the most recognizable African-American agricultural researcher in history, the lifetime work of Dr.George Washington Carver is on display in the Museum. Authorized within the Tuskegee Institute National Historic Site for the preservation of historic structures in 1975, the property was purchased by the National Historic Park Service.';
final String kHarperInfo =
    'Named after former nurse name Mary Starke Harper 41 career in nursing spanned more than 30 years.A registered nurse, sociologist, clinical psychologist, secondary school educator, and program administrator, Dr. Harper holds degrees from St. Louis University, the University of Minnesota, and Tuskegee. She has provided consultations throughout the United States and Africa, Australia, Europe, the Middle East, North and South America. She was for a number of years coordinator of Long Term Care Programs, National Institute of Mental Health, U. S. Department of Health and Human Services.';
final String kHarveyInfo =
    'Named after former nursing dean Lillian Harvey, the dormitory once solely housed students in the School of Nursing.';
final String kHousingInfo =
    'The duties and responsibilities of the housing office is to provide on campus housing for all students residing in the Residence Halls, Commons and Marable Apartments. Students must be accepted to the University and be enrolled full time for an academic year or semester.';
final String kHuntingtonInfo =
    'Huntington Hall was completed in 1899 and was used as a women’s dormitory. It was named after the Huntington family, funds having been donated by the widow of Collis Huntington. Huntington made his fortune in the railroad business and was the president of the Cheasapeake and Ohio Railroad. The building went on to be used as the residence of staff members and also housed classrooms and faculty offices.';
final String kJamesInfo = 'Is a Female/Male Residence Hall for upperclassmen';
final String kKelloggInfo =
    'This building was completed in 1901 and used to teach the many trades for women. From 1938 to 1943 George Washington Carver lived here. Today it is used as a hotel, restaurant, and conference center and can also be reserved for weddings and other events. For more information, visit www.tuskegeekelloggcenter.com.';
final String kKresgeInfo =
    'The administrative home of the campus completed in 1976 houses faculty, student and administrative services divisions. The Kresge Center houses the offices of the President, University Advancement, Alumni Affairs, Provost, Business and Fiscal Affairs, Budget, Accounts Payable, Marketing and Communications, Sports Information, Human Resources Management, Bursar, Cashier, Registrar, Controller, Accounting,Payroll, Purchasing, Auxiliary Services, and Grants Management.';
final String kLargeAnimalInfo =
    'The Large Animal Care Center with 20,237 NSF, houses the faculty and staff of the Large Animal Medicine and Surgery Unit of the Department of Clinical Sciences, a divisible classroom with 130 student stations, a centralized surgical sterilization area and pharmacy, central supply, a student operating room suite for surgery on large and small animals, and animal quarters that contain 27 stalls for horses and/or cattle. The principal large animal surgery suite for client animals is also located in this building.';
final String kLewisInfo =
    'It was built in 1964, and this is a women’s dormitory now';
final String kLoganInfo =
    'The Tuskegee Logan Hall Fitness Center is a modern 3000 square-feet facility located on the ground floor of Logan Hall. The facility was built in 2010 to provide an atmosphere in which the physical fitness needs, health and fitness concerns of Tuskegee University students, faculty and staff could be addressed.';
final String kMarableInfo =
    'The Marable Apartments has two (2) bedroom apartments available for Tuskegee University students meeting the requirements';
final String kMargaretInfo =
    'Named after Booker T. Washington’s third wife, Margaret, who as the Lady Principal of the school, this building was originally the home of the school’s agriculture department. It was built in 1897. It is now used as the university’s Welcome Center and has an auditorium, meeting spaces for students, a cafeteria, and a book store. It is also home to the Admissions Department.';
final String kMilBankInfo =
    'Millbank Agricultural Hall was constructed in 1909. Gift of Mrs. Elizabeth M. Anderson. Agricultural classes were taught here. George Washington Carver had a laboratory in this building.';
final String kMorrisInfo = 'Building of Agriculture and Environmental Sciences';
final String kNorthCommonsInfo =
    'Students who are eligible upperclassmen enjoy the comforts of residing in the modern state-of-the-art living complexes. These apartment style living-learning facilities are cons t rusted on the University campus.';
final String kOldAdministrationInfo =
    'The offices of Admissions, Dean of Students, and Counseling Center are a part of this building, which previously housed the offices of the first three University presidents, a community post office and a bank /credit union for the residents of Tuskegee.';
final String kPattersonInfo =
    'The five-floor facility includes a media and student center, the school’s office of admissions and recruitment, the Patterson Hall Auditorium and atrium, the Office of the Dean and associate deans, the T.S. Williams Veterinary Medicine Library, a comprehensive classroom, and the departments of biomedical sciences and pathobiology';
final String kPhysicalBuilding =
    'The space allocation and usage, as it relates to the School programmatic activities, are described on the following pages for each building in the Veterinary School Complex.';
final String kPostMortemBuilding =
    'The Post Mortem Building provides 4,126 NSF for faculty/staff offices, necropsy and poultry diagnostic laboratories, a small seminar room with 15 student stations, and a tissue trimming, solution preparation and gross photography room. This facility has recently been renovated including installation of a new HAVC system, three down draft tables for small animals, stainless steel cabinets and tables, a pneumatic necropsy table for large animals, ceiling mounted spot lights, a hoist, new sinks and a new cold room, safety showers, band saw, 30-seat amphitheater bleachers, a projection screen, a multiple head (7) microscope, a washer and dryer, safety shower/eye wash, and a portable high pressure washer/sterilizer.';
final String kPowerPlant =
    'The Power Plant was built in 1915 and was the source of the campus’ electricity. It appears dilapidated today and is no longer in use.';
final String kMotonHall =
    'Robert Russa Motorn Hall was built in 1952. Engineering building until 1970, human resource center, job corps center headquarters since 1980. Designed to be built in three units for electrical, mechanical and civil engineering, only two units built. Built by institute construction department.';
final String kRockefellerHall =
    'Rockefeller Hall built in 1903 through donations from John D. Rockefeller. Three story brick building originally was a boy dormitory housing 160 young men. In later years, it was used as a male dormitory.';
final String kRosenwaldBuilding =
    'The Department of Pathobiology utilizes this area to provide laboratory instruction in veterinary microbiology, virology, immunology, molecular biology, public health, epidemiology, and clinical microbiology and to provide microbiology laboratory instruction for nursing and allied health students. There are two smaller preparatory laboratories, a storage incubator, and an autoclave room adjacent to this laboratory.';
final String kROTCBuilding = 'Home of the NROTC';
final String kRussellHall = 'Is a Female Residence Hall for Upperclassmen';
final String kRussellNursery =
    'It was built in 1957. Laboratory school for school of education nursery and kindergarten.';
final String kSageHall = 'Is a Female Residence Hall for Underclassmen';
final String kSmallClinic =
    'The Small Animal Hospital occupies approximately 7,100 NSF of the clinical wing. In addition, an area outside approximately 25 feet from the building provides 6 holding (6 x 12) runs and an exercise area (60 x 40) for companion animal patients. Approximately 500 yards from the clinic is a 1,657 NSF dog kennel serving the programs of the Departments of Biomedical Sciences and Clinical Sciences.';
final String kTantumHall =
    'Tantum Hall was built in 1907 and used as a female dormitory now.';
final String kTennisCourt =
    'The Pepsico Tennis Courts were completed in 2001. Under the tutelage of head coach Gregory Green, Tuskegee played the 2001 men and women tennis seasons at this facility, which has five courts, lights and seating for approximately 200 spectators.';
final String kOaks =
    'The students and faculty of Tuskegee constructed the family home of Dr. Booker T. Washington in 1899. It was the first home in Macon County, Alabama, to have running water and electricity. With eight rooms (five bedrooms, three bathrooms), three porches and its original furnishings, it is a mansion by present-day standards. The Oaks is now owned and maintained by the National Park Service under the authorized purchase for preservation of historic structures within the Tuskegee Institute National Historic Site.';
final String kThrasherHall =
    'Named in memory of Max Bennett Thrasher of Westmoreland, New Hampshire, this handsome three-story brick building was built in 1893.';
final String kTompkins =
    'Tompkins Hall was completed in 1910 and was the main dining hall at Tuskegee Institute. This building was later transformed into the Student Union, thus making it the central point on campus when it came to student life.  ';
final String kWest = 'Students who are eligible upperclassmen enjoy the comforts of residing in the modern state-of-the-art living complexes. These apartment style Living learning facilities are constructed on the University campus.';
final String kWhite = 'White Hall was completed in 1910 and was named after Alexander Moss White, with funds being donated by his children. The clock tower was added in 1913 and had a manual winding system. It was converted to electric in 1951 and still chimes today. The building was the main woman’s dormitory.';
final String kWilcoxA = 'Constructed in the 1920s, the Wilcox Buildings once housed the so called trades at Tuskegee: carpentry, plumbing, brick masonry, shoe repair, tailoring, and electricity. These structures are examples of buildings constructed by student labor. The buildings are named in honor of William G. Wilcox, member, Board of Trustees, 1907 to 1923.';
final String kWilcoxB = 'The offices of Campus Technology and the Faculty and Staff Instructional Technology Café have occupancy inside Wilcox B';
final String kWilcoxC = 'Within Wilcox C is the Department of Architecture. Renovated in 1981';
final String kWilcoxD = 'The buildings are named in honor of William G. Willcox, member, Board of Trustees, 1907 to 1923.';
final String kWilcoxE = 'Willcox E accommodates the Advanced Materials Testing Laboratory';
final String kWilliamV = 'Constructed in 1928, the brick structure, donated by and named for William V. Chambliss, class of 1890, replaced the Children’s House built in 1901.';
final String kYounge = 'Is a Female Residence Hall for freshmen';
final String kHendersonInfo = 'Carver Research Building is Agricultural Life Science, Research, Teaching and Extension Building. The building, 40,000 square-foot building will house state-of-the-art classrooms and laboratories to support science and agricultural education programs';
// final String k = '';
// final String k = '';
// final String k = '';
// final String k = '';
// TODO: Dynamically Update this in a future update
final kRecentBuildings = [
  'Brimmer',
  "Carnegie",
];

// Latitude and Longitude URLs
final String kAbbott_url = 'https://www.google.com/maps/dir//32.424797,+-85.705327/@32.4320749,-85.7564006,15z/data=!4m7!4m6!1m0!1m3!2m2!1d-85.705327!2d32.424797!3e0';
final String kArmstrong_url = 'https://www.google.com/maps/dir//32.427120,+-85.703555/@32.5762265,-86.6807364,7z/data=!4m7!4m6!1m0!1m3!2m2!1d-85.703555!2d32.42712!3e0';
final String kBanneker_url = 'https://www.google.com/maps/dir//32.433356,+-85.706427/@32.5762265,-86.6807364,7z/data=!4m7!4m6!1m0!1m3!2m2!1d-85.706427!2d32.433356!3e0';
final String kBasil_url = 'https://www.google.com/maps/dir//32.432356,+-85.704836/@32.5762265,-86.6807364,7z/data=!4m7!4m6!1m0!1m3!2m2!1d-85.704836!2d32.432356!3e0';
final String kBethune_url = 'https://www.google.com/maps/dir//32.433388,+-85.707186/@32.5762265,-86.6807364,7z/data=!4m7!4m6!1m0!1m3!2m2!1d-85.707186!2d32.433388!3e0';
final String kBioethics_url = 'https://www.google.com/maps/dir//32.433917,+-85.704540/@32.5762265,-86.6807364,7z/data=!4m7!4m6!1m0!1m3!2m2!1d-85.70454!2d32.433917!3e0';
final String kBooker_url = 'https://www.google.com/maps/dir//32.430250,+-85.707715/@32.5762265,-86.6807364,7z/data=!4m7!4m6!1m0!1m3!2m2!1d-85.707715!2d32.43025!3e0';
final String kBrimmer_url = 'https://www.google.com/maps/dir//32.427183,+-85.702267/@32.5762265,-86.6807364,7z/data=!4m7!4m6!1m0!1m3!2m2!1d-85.702267!2d32.427183!3e0';
final String kCampbell_url = 'https://www.google.com/maps/dir//32.432915,+-85.710944/@32.5762265,-86.6807364,7z/data=!4m7!4m6!1m0!1m3!2m2!1d-85.710944!2d32.432915!3e0"';
final String kCarnegie_url = 'https://www.google.com/maps/dir//32.428846,+-85.705417/@32.5762265,-86.6807364,7z/data=!4m7!4m6!1m0!1m3!2m2!1d-85.705417!2d32.428846!3e0';
final String kCarver_url = 'https://www.google.com/maps/dir//32.426704,+-85.703393/@32.4343925,-85.70867,15z/data=!4m7!4m6!1m0!1m3!2m2!1d-85.703393!2d32.426704!3e0';
final String kCentralized_url = 'https://www.google.com/maps/dir//32.432163,+-85.709784/@32.4343925,-85.70867,15z/data=!4m7!4m6!1m0!1m3!2m2!1d-85.709784!2d32.432163!3e0';
final String kChambliss_url = 'https://www.google.com/maps/dir//32.430877,+-85.711595/@32.4343925,-85.70867,15z/data=!4m7!4m6!1m0!1m3!2m2!1d-85.711595!2d32.430877!3e0';
final String kChappie_url = 'https://www.google.com/maps/dir//32.431196,+-85.709972/@32.4343925,-85.70867,15z/data=!4m7!4m6!1m0!1m3!2m2!1d-85.709972!2d32.431196!3e0';
final String kConvenience_url = 'https://www.google.com/maps/dir//32.430709,+-85.702722/@32.4343925,-85.70867,15z/data=!4m7!4m6!1m0!1m3!2m2!1d-85.702722!2d32.430709!3e0';
final String kDouglass_url = 'https://www.google.com/maps/dir//32.430411,+-85.704343/@32.4343925,-85.70867,15z/data=!4m7!4m6!1m0!1m3!2m2!1d-85.704343!2d32.430411!3e0';
final String kEast_url = 'https://www.google.com/maps/dir//32.428298,+-85.702631/@32.5762265,-86.6807364,7z/data=!4m7!4m6!1m0!1m3!2m2!1d-85.702631!2d32.428298!3e0';
final String kEmeryI_url = 'https://www.google.com/maps/dir//32.429443,+-85.709267/@32.5762265,-86.6807364,7z/data=!4m7!4m6!1m0!1m3!2m2!1d-85.709267!2d32.429443!3e0';
final String kEmeryII_url = 'https://www.google.com/maps/dir//32.429599,+-85.709782/@32.5762265,-86.6807364,7z/data=!4m7!4m6!1m0!1m3!2m2!1d-85.709782!2d32.429599!3e0';
final String kEmeryIII_url = 'https://www.google.com/maps/dir//32.429742,+-85.710316/@32.5762265,-86.6807364,7z/data=!4m7!4m6!1m0!1m3!2m2!1d-85.710316!2d32.429742!3e0';
final String kEmeryIV_url= 'https://www.google.com/maps/dir//32.429919,+-85.710813/@32.4343008,-85.7085698,15z/data=!4m7!4m6!1m0!1m3!2m2!1d-85.710813!2d32.429919!3e0';
final String kEmeryR_url = 'https://www.google.com/maps/dir//32.429629,+-85.710201/@32.4343008,-85.7085698,15z/data=!4m7!4m6!1m0!1m3!2m2!1d-85.710201!2d32.429629!3e0';
final String kEngineering_url = 'https://www.google.com/maps/dir//32.429919,+-85.710813/@32.4343008,-85.7085698,15z/data=!4m7!4m6!1m0!1m3!2m2!1d-85.710813!2d32.429919!3e0';
final String kFord_url = 'https://www.google.com/maps/dir//32.427662,+-85.705021/@32.4343008,-85.7085698,15z/data=!4m7!4m6!1m0!1m3!2m2!1d-85.705021!2d32.427662!3e0';
final String kGeorge_url = 'https://www.google.com/maps/dir//32.429701,+-85.706560/@32.4343008,-85.7085698,15z/data=!4m7!4m6!1m0!1m3!2m2!1d-85.70656!2d32.429701!3e0';
final String kHarper_url = 'https://www.google.com/maps/dir//32.432360,+-85.712218/@32.4343008,-85.7085698,15z/data=!4m7!4m6!1m0!1m3!2m2!1d-85.712218!2d32.43236!3e0';
final String kHarvey_url = 'https://www.google.com/maps/dir//32.431819,+-85.705163/@32.4343008,-85.7085698,15z/data=!4m7!4m6!1m0!1m3!2m2!1d-85.705163!2d32.431819!3e0';
final String kHenderson_url = 'https://www.google.com/maps/dir//32.433179,+-85.711995/@32.4344736,-85.707808,15z/data=!4m7!4m6!1m0!1m3!2m2!1d-85.711995!2d32.433179!3e0';
final String kHousing_url = 'https://www.google.com/maps/dir//32.433388,+-85.708998/@32.4344737,-85.707808,15z/data=!4m7!4m6!1m0!1m3!2m2!1d-85.708998!2d32.433388!3e0';
final String kHuntington_url = 'https://www.google.com/maps/dir//32.430238,+-85.703849/@32.4344736,-85.707808,15z/data=!4m7!4m6!1m0!1m3!2m2!1d-85.703849!2d32.430238!3e0';
final String kJames_url = 'https://www.google.com/maps/dir//32.432403,+-85.704018/@32.4320748,-85.7564007,15z/data=!4m7!4m6!1m0!1m3!2m2!1d-85.704018!2d32.432403!3e0';
final String kKellogg_url = 'https://www.google.com/maps/dir//32.430204,+-85.707109/@32.4320748,-85.7564007,15z/data=!4m7!4m6!1m0!1m3!2m2!1d-85.707109!2d32.430204!3e0';
final String kKresge_url = 'https://www.google.com/maps/dir//32.430778,+-85.708455/@32.4320748,-85.7564007,15z/data=!4m7!4m6!1m0!1m3!2m2!1d-85.708455!2d32.430778!3e0';
final String kLargeAnimal_url = 'https://www.google.com/maps/dir//32.435091,+-85.707401/@32.4320748,-85.7564007,15z/data=!4m7!4m6!1m0!1m3!2m2!1d-85.707401!2d32.435091!3e0';
final String kLewis_url = 'https://www.google.com/maps/dir//32.429925,+-85.703762/@32.4320748,-85.7564007,15z/data=!4m7!4m6!1m0!1m3!2m2!1d-85.703762!2d32.429925!3e0';
final String kLogan_url = 'https://www.google.com/maps/dir//32.426794,+-85.704753/@32.4320748,-85.7564007,15z/data=!4m7!4m6!1m0!1m3!2m2!1d-85.704753!2d32.426794!3e0';
final String kMarable_url = 'https://www.google.com/maps/dir//32.425716,+-85.699969/@32.4320749,-85.7564006,15z/data=!4m7!4m6!1m0!1m3!2m2!1d-85.699969!2d32.425716!3e0';
final String kMargaret_url = 'https://www.google.com/maps/dir//32.429059,+-85.707727/@32.4320748,-85.7564007,15z/data=!4m7!4m6!1m0!1m3!2m2!1d-85.707727!2d32.429059!3e0';
final String kMilbank_url = 'https://www.google.com/maps/dir//32.433580,+-85.713479/@32.4320748,-85.7564007,15z/data=!4m7!4m6!1m0!1m3!2m2!1d-85.713479!2d32.43358!3e0';
final String kMorrison_url = 'https://www.google.com/maps/dir//32.432039,+-85.711610/@32.4320748,-85.7564007,15z/data=!4m7!4m6!1m0!1m3!2m2!1d-85.71161!2d32.432039!3e0';
final String kMortem_url = 'https://www.google.com/maps/dir//32.434152,+-85.708221/@32.4320748,-85.7564007,15z/data=!4m7!4m6!1m0!1m3!2m2!1d-85.708221!2d32.434152!3e0';
final String kNorth_url = 'https://www.google.com/maps/dir//32.432367,+-85.703608/@32.4320748,-85.7564007,15z/data=!4m7!4m6!1m0!1m3!2m2!1d-85.703608!2d32.432367!3e0';
final String kOaks_url = 'https://www.google.com/maps/dir//32.428318,+-85.705670/@32.4320748,-85.7564007,15z/data=!4m7!4m6!1m0!1m3!2m2!1d-85.70567!2d32.428318!3e0';
final String kOld_building_url = 'https://www.google.com/maps/dir//32.428376,+-85.704732/@32.4320748,-85.7564007,15z/data=!4m7!4m6!1m0!1m3!2m2!1d-85.704732!2d32.428376!3e0';
final String kOlivia_url = 'https://www.google.com/maps/dir//32.431066,+-85.704049/@32.4320748,-85.7564007,15z/data=!4m7!4m6!1m0!1m3!2m2!1d-85.704049!2d32.431066!3e0';
final String kPatterson_url = 'https://www.google.com/maps/dir//32.434088,+-85.70726/@32.4320748,-85.7564007,15z/data=!4m7!4m6!1m0!1m3!2m2!1d-85.70726!2d32.434088!3e0';
final String kPostMortem_url = 'https://www.google.com/maps/dir//32.434152,+-85.708221/@32.4320748,-85.7564007,15z/data=!4m7!4m6!1m0!1m3!2m2!1d-85.708221!2d32.434152!3e0';
final String kPhysical_url = 'https://www.google.com/maps/dir//32.430240,+-85.702904/@32.4320748,-85.7564007,15z/data=!4m7!4m6!1m0!1m3!2m2!1d-85.702904!2d32.43024!3e0';
final String kPolice_url = 'https://www.google.com/maps/dir//32.428919,+-85.703919/@32.4320748,-85.7564007,15z/data=!4m7!4m6!1m0!1m3!2m2!1d-85.703919!2d32.428919!3e0';
final String kPower_url = 'https://www.google.com/maps/dir//32.429801,+-85.701934/@32.4320748,-85.7564007,15z/data=!4m7!4m6!1m0!1m3!2m2!1d-85.701934!2d32.429801!3e0';
final String kRobertCircle_url = 'https://www.google.com/maps/dir//32.435166,+-85.706864/@32.4320748,-85.7564007,15z/data=!4m7!4m6!1m0!1m3!2m2!1d-85.706864!2d32.435166!3e0';
final String kRobertR_url = 'https://www.google.com/maps/dir//32.429373,+-85.708797/@32.4320748,-85.7564007,15z/data=!4m7!4m6!1m0!1m3!2m2!1d-85.708797!2d32.429373!3e0';
final String kRockefeller_url = 'https://www.google.com/maps/dir//32.428740,+-85.702842/@32.4320748,-85.7564007,15z/data=!4m7!4m6!1m0!1m3!2m2!1d-85.702842!2d32.42874!3e0';
final String kRosenwald_url = 'https://www.google.com/maps/dir//32.433760,+-85.707191/@32.4320748,-85.7564007,15z/data=!4m7!4m6!1m0!1m3!2m2!1d-85.707191!2d32.43376!3e0';
final String kROTC_url = 'https://www.google.com/maps/dir//32.426966,+-85.702558/@32.4320748,-85.7564007,15z/data=!4m7!4m6!1m0!1m3!2m2!1d-85.702558!2d32.426966!3e0';
final String kRussell_url = 'https://www.google.com/maps/dir//32.432638,+-85.706268/@32.4320748,-85.7564007,15z/data=!4m7!4m6!1m0!1m3!2m2!1d-85.706268!2d32.432638!3e0';
final String kRussellHall_url = 'https://www.google.com/maps/dir//32.432638,+-85.706268/@32.4320748,-85.7564007,15z/data=!4m7!4m6!1m0!1m3!2m2!1d-85.706268!2d32.432638!3e0';
final String kRussellNursery_url = 'https://www.google.com/maps/dir//32.431506,+-85.711526/@32.4320748,-85.7564007,15z/data=!4m7!4m6!1m0!1m3!2m2!1d-85.711526!2d32.431506!3e0';
final String kSage_url = 'https://www.google.com/maps/dir//32.427807,+-85.703188/@32.4320748,-85.7564007,15z/data=!4m7!4m6!1m0!1m3!2m2!1d-85.703188!2d32.427807!3e0';
final String kSmall_url = 'https://www.google.com/maps/dir//32.427807,+-85.703188/@32.4320748,-85.7564007,15z/data=!4m7!4m6!1m0!1m3!2m2!1d-85.703188!2d32.427807!3e0';
final String kSoftball_url = 'https://www.google.com/maps/dir//32.427807,+-85.703188/@32.4320748,-85.7564007,15z/data=!4m7!4m6!1m0!1m3!2m2!1d-85.703188!2d32.427807!3e0';
final String kTantum_url = 'https://www.google.com/maps/dir//32.431136,+-85.705919/@32.4320748,-85.7564007,15z/data=!4m7!4m6!1m0!1m3!2m2!1d-85.705919!2d32.431136!3e0';
final String kTennis_url = 'https://www.google.com/maps/dir//32.426654,+-85.705367/@32.4320748,-85.7564007,15z/data=!4m7!4m6!1m0!1m3!2m2!1d-85.705367!2d32.426654!3e0';
final String kThrasher_url = 'https://www.google.com/maps/dir//32.427450,+-85.703322/@32.4320748,-85.7564007,15z/data=!4m7!4m6!1m0!1m3!2m2!1d-85.703322!2d32.42745!3e0';
final String kTompkins_url = 'https://www.google.com/maps/dir//32.428884,+-85.704570/@32.4320748,-85.7564007,15z/data=!4m7!4m6!1m0!1m3!2m2!1d-85.70457!2d32.428884!3e0';
final String kUniversityApartment_url = 'https://www.google.com/maps/dir//32.430753,+-85.713589/@32.4320748,-85.7564007,15z/data=!4m7!4m6!1m0!1m3!2m2!1d-85.713589!2d32.430753!3e0';
final String kUniversityChapel_url = 'https://www.google.com/maps/dir//32.430856,+-85.707173/@32.4320748,-85.7564007,15z/data=!4m7!4m6!1m0!1m3!2m2!1d-85.707173!2d32.430856!3e0';
final String kWashingtonField_url = 'https://www.google.com/maps/dir//32.425438,+-85.703710/@32.4320748,-85.7564007,15z/data=!4m7!4m6!1m0!1m3!2m2!1d-85.70371!2d32.425438!3e0';
final String kWest_url = 'https://www.google.com/maps/dir//32.433024,+-85.709192/@32.4320748,-85.7564007,15z/data=!4m7!4m6!1m0!1m3!2m2!1d-85.709192!2d32.433024!3e0';
final String kWhite_url = 'https://www.google.com/maps/dir//32.429665,+-85.705160/@32.4320748,-85.7564007,15z/data=!4m7!4m6!1m0!1m3!2m2!1d-85.70516!2d32.429665!3e0';
final String kWilcoxA_url = 'https://www.google.com/maps/dir//32.429939,+-85.707959/@32.4320748,-85.7564007,15z/data=!4m7!4m6!1m0!1m3!2m2!1d-85.707959!2d32.429939!3e0';
final String kWilcoxB_url = 'https://www.google.com/maps/dir//32.430420,+-85.708318/@32.4320748,-85.7564007,15z/data=!4m7!4m6!1m0!1m3!2m2!1d-85.708318!2d32.43042!3e0';
final String kWilcoxC_url = 'https://www.google.com/maps/dir//32.429914,+-85.708835/@32.4320748,-85.7564007,15z/data=!4m7!4m6!1m0!1m3!2m2!1d-85.708835!2d32.429914!3e0';
final String kWilcoxD_url = 'https://www.google.com/maps/dir//32.430647,+-85.709223/@32.4320748,-85.7564007,15z/data=!4m7!4m6!1m0!1m3!2m2!1d-85.709223!2d32.430647!3e0';
final String kWilliamsB_url = 'https://www.google.com/maps/dir//32.434830,+-85.708793/@32.4320748,-85.7564007,15z/data=!4m7!4m6!1m0!1m3!2m2!1d-85.708793!2d32.43483!3e0';
final String kWilliamV_url = 'https://www.google.com/maps/dir//32.430896,+-85.711715/@32.4320748,-85.7564007,15z/data=!4m7!4m6!1m0!1m3!2m2!1d-85.711715!2d32.430896!3e0';
final String kWilcoxE_url = 'https://www.google.com/maps/dir//32.430409,+-85.709543/@32.4320748,-85.7564007,15z/data=!4m7!4m6!1m0!1m3!2m2!1d-85.709543!2d32.430409!3e0';
final String kYounge_url = 'https://www.google.com/maps/dir//32.432771,+-85.707353/@32.4320748,-85.7564007,15z/data=!4m7!4m6!1m0!1m3!2m2!1d-85.707353!2d32.432771!3e0';

// TODO: Figure out whether you can force the maps url to open in walking view
void launchURL(url) async {
//   const url = 'https://flutter.dev';
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}
// Map contacts = Map<String, int>();
//
// void working() {
//   var buildingDirectory = Map<String, BuildingArchetype>();
//   buildingDirectory['Brimmer'] = BuildingArchetype(
//     title: 'Brimmer',
//     info: kBrimmerInfo,
//     lat: 32.427183,
//     long: -85.702267,
//   );
//   buildingDirectory['Brimmer'] = BuildingArchetype(
//     title: 'Brimmer',
//     info: kBrimmerInfo,
//     lat: 32.427183,
//     long: -85.702267,
//   );
// }
// Map buildingMap (){
//   Map<String,String> fruit = new Map();
//   fruit['banana'] = 'yellow';
//   return fruit;
// }
// Colors
final kMainYellow = Color(0xffE3B821);
