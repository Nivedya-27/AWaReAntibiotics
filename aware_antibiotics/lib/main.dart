/// Flutter code sample for TextButton

// This sample shows how to render a disabled TextButton, an enabled TextButton
// and lastly a TextButton with gradient background.

import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

/// This is the main application widget.
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  static const String _title = 'Antibiotics Information';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: _title,
      home: Scaffold(
        appBar: AppBar(title: const Text(_title)),
        body: const MyHome(),
      ),
    );
  }
}

/// This is the stateless widget that the main application instantiates.
class MyHome extends StatelessWidget {
  const MyHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
        //mainAxisSize: MainAxis
        children: <Widget>[
          Expanded(
        child: Center(
            child: Column(
            children:<Widget>[
              const SizedBox(height: 40),
              ClipRRect(
                borderRadius: BorderRadius.circular(4),
                child: Stack(
                  children: <Widget>[
                    Positioned.fill(
                      child: Container(
                        decoration: const BoxDecoration(
                          gradient: LinearGradient(
                            colors: <Color>[
                              Color(0xFF0D2DA1),
                              Color(0xFF1957D2),
                              Color(0xFF42BCF5),
                            ],
                          ),
                        ),
                      ),
                    ),
                    TextButton(
                      style: TextButton.styleFrom(
                        padding: const EdgeInsets.all(16.0),
                        primary: Colors.white,
                        textStyle: const TextStyle(fontSize: 20),
                      ),
                      onPressed: () {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => GuidelinesScreen()));
                      },
                      child: const Text('Guidelines'),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 30),
          ClipRRect(
            borderRadius: BorderRadius.circular(4),
            child: Stack(
              children: <Widget>[
                Positioned.fill(
                  child: Container(
                    decoration: const BoxDecoration(
                      gradient: LinearGradient(
                        colors: <Color>[
                          Color(0xFF0DA12D),
                          Color(0xFF19D222),
                          Color(0xFF72F542),
                        ],
                      ),
                    ),
                  ),
                ),
                TextButton(
                  style: TextButton.styleFrom(
                    padding: const EdgeInsets.all(16.0),
                    primary: Colors.white,
                    textStyle: const TextStyle(fontSize: 20),
                  ),
                  onPressed: () {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => AccessScreen()));
                  },
                  child: const Text('Access'),
                ),
              ],
            ),
          ),
          const SizedBox(height: 30),
          ClipRRect(
            borderRadius: BorderRadius.circular(4),
            child: Stack(
              children: <Widget>[
                Positioned.fill(
                  child: Container(
                    decoration: const BoxDecoration(
                      gradient: LinearGradient(
                        colors: <Color>[
                          Color(0xFFA1920D),
                          Color(0xFFD2AA19),
                          Color(0xFFF5E342),
                        ],
                      ),
                    ),
                  ),
                ),
                TextButton(
                  style: TextButton.styleFrom(
                    padding: const EdgeInsets.all(16.0),
                    primary: Colors.white,
                    textStyle: const TextStyle(fontSize: 20),
                  ),
                  onPressed: () {
                    Navigator.of(context).push(
                        MaterialPageRoute(builder: (context) => WatchScreen()));
                  },
                  child: const Text('Watch'),
                ),
              ],
            ),
          ),
          const SizedBox(height: 30),
          ClipRRect(
            borderRadius: BorderRadius.circular(4),
            child: Stack(
              children: <Widget>[
                Positioned.fill(
                  child: Container(
                    decoration: const BoxDecoration(
                      gradient: LinearGradient(
                        colors: <Color>[
                          Color(0xFFA1370D),
                          Color(0xFFD23519),
                          Color(0xFFF55142),
                        ],
                      ),
                    ),
                  ),
                ),
                TextButton(
                  style: TextButton.styleFrom(
                    padding: const EdgeInsets.all(16.0),
                    primary: Colors.white,
                    textStyle: const TextStyle(fontSize: 20),
                  ),
                  onPressed: () {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => ReserveScreen()));
                  },
                  child: const Text('Reserve'),
                ),
              ],
            ),
          ),
          ],
        ),
          ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Text('''Reproduced/adapted from WHO Access, Watch, Reserve (AWaRe) classification of antibiotics for evaluation and monitoring of use, 2021. Geneva: World Health Organization; 2021 (WHO/HMP/HPS/EML/2021.04).\nLicence: CC BY-NC-SA 3.0 IGO''')
          ),
        ],
      ),
      ),
    );
  }
}

class GuidelinesScreen extends StatelessWidget {
  const GuidelinesScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Guidelines for Antibiotic Administration"),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: const Text('''
This is where
the guidelines for antibiotic use
will appear

Courtesy WHO, Up-To-Date

Thank you
'''),
      ),
    );
  }
}

final access_drugs = [
  'Amikacin',
  'Amoxicillin',
  'Amoxicillin/clavulanic-acid',
  'Ampicillin',
  'Ampicillin/sulbactam',
  'Azidocillin',
  'Bacampicillin',
  'Benzathine-benzylpenicillin',
  'Benzylpenicillin',
  'Brodimoprim',
  'Cefacetrile',
  'Cefadroxil',
  'Cefalexin',
  'Cefaloridine',
  'Cefalotin',
  'Cefapirin',
  'Cefatrizine',
  'Cefazedone',
  'Cefazolin',
  'Cefradine',
  'Cefroxadine',
  'Ceftezole',
  'Chloramphenicol',
  'Clindamycin',
  'Clometocillin',
  'Cloxacillin',
  'Dicloxacillin',
  'Doxycycline',
  'Epicillin',
  'Flucloxacillin',
  'Furazidin',
  'Gentamicin',
  'Hetacillin',
  'Mecillinam',
  'Metampicillin',
  'Meticillin',
  'Metronidazole',
  'Nafcillin',
  'Nifurtoinol',
  'Nitrofurantoin',
  'Ornidazole',
  'Oxacillin',
  'Penamecillin',
  'Phenoxymethylpenicillin',
  'Pivampicillin',
  'Pivmecillinam',
  'Procaine Prenicillin G',
  'Propicillin',
  'Secnidazole',
  'Spectinomycin',
  'Sulbactam',
  'Sulfadiazine',
  'Sulfadiazine/tetroxoprim',
  'Sulfadiazine/trimethoprim',
  'Sulfadimethoxine',
  'Sulfadimidine',
  'Sulfadimidine/trimethoprim',
  'Sulfafurazole',
  'Sulfaisodimidine',
  'Sulfalene',
  'Sulfamazone',
  'Sulfamerazine',
  'Sulfamerazine/trimethoprim',
  'Sulfamethizole',
  'Sulfamethoxazole',
  'Sulfamethoxazole/trimethoprim',
  'Sulfamethoxypyridazine',
  'Sulfametomidine',
  'Sulfametoxydiazine',
  'Sulfametrole/trimethoprim',
  'Sulfamoxole',
  'Sulfamoxole/trimethoprim',
  'Sulfanilamide',
  'Sulfaperin',
  'Sulfaphenazole',
  'Sulfapyridine',
  'Sulfathiazole',
  'Sulfathiourea',
  'Sultamicillin',
  'Talampicillin',
  'Tetracycline',
  'Thiamphenicol',
  'Tinidazole',
  'Trimethoprim'
];

final access_descriptions = [
  '''
General dosing-IV/IM
Age wise dosing
Gestational age<30 weeks:
PNA\u2264 14 days: 15mg/kg/dose every 48 hours
PNA\u2265 15 days: 15mg/kg/dose every 24 hours

Gestational age 30 to 34 weeks, PNA\u2264 60 days: 15mg/kg/dose every 24 hours

Gestational age≥ 35 weeks:
PNA ≤7 days: 15 mg/kg/dose every 24 hours
PNA ≥8 days: 17.5 mg/kg/dose every 24 hours 
Body weight <1 kg:
PNA ≤14 days: 15 mg/kg/dose every 48 hours
PNA 15 to 28 days: 15 mg/kg/dose every 24 hours
Body weight 1 to 2 kg:
PNA ≤7 days: 15 mg/kg/dose every 48 hours
PNA 8 to 28 days: 15 mg/kg/dose every 24 hours
Body weight >2 kg:
PNA ≤7 days: 15 mg/kg/dose every 24 hours
PNA 8 to 28 days: 17.5 mg/kg/dose every 24 hours

Meningitis: IV: Use smaller doses and longer intervals for neonates <2 kg
PNA ≤7 days and ≥2 kg: 15 to 20 mg/kg/day divided every 12 hours
PNA >7 days and ≥2 kg: 30 mg/kg/day divided every 8 hours

Dosing: Pediatric
General dosing, severe, susceptible infections: Infants, Children, and Adolescents:IM, IV
15 to 22.5 mg/kg/day divided every 8 hours or 15 to 20 mg/kg/dose every 24 hours 
CNS infections:
Meningitis: Infants and Children: IV: 20 to 30 mg/kg/day divided every 8 hours
Adolescents: IV: 15 mg/kg/day divided every 8 hours

Cystic fibrosis, pulmonary infection: Infants, Children, and Adolescents:
Traditional dosing: IV, IM: 10 mg/kg/dose every 8 hours
Extended-interval dosing: IV: 30 mg/kg/dose every 24 hours 
Endocarditis, treatment: Children and Adolescents: IV: 15 mg/kg/day divided every 8 to 12 hours; 
Intra-abdominal infection, complicated: Infants, Children, and Adolescents: IV: 15 to 22.5 mg/kg/day divided every 8 to 24 hours
Mycobacterium, avium complex infection  treatment: HIV-exposed/-positive:
Infants and Children: IV: 15 to 30 mg/kg/day divided every 12 to 24 hours as part of a multiple drug regimen; maximum daily dose: 1,500 mg/day
Adolescents: IV: 10 to 15 mg/kg/dose every 24 hours as part of a multiple drug regimen; maximum daily dose: 1,500 mg/day
Tuberculosis, drug-resistant: Infants, Children, and Adolescents ≤14 years:
Non-HIV-exposed/-positive: Once-daily regimen: IM, IV: 15 to 20 mg/kg/dose once daily as part of a multiple drug regimen 
Twice-weekly regimen: IM, IV: 25 to 30 mg/kg/dose administered twice weekly as part of a multiple drug regimen; dosing based on experience in adult patients and pediatric pharmacokinetic

Dosing: Adult
Conventional/traditional dosing: IM, IV: 5 mg/kg every 8 hours or 7.5 mg/kg every 12 hours. 
High-dose extended-interval dosing: IV: 15 to 20 mg/kg once daily; use with caution in patients with CrCl <40 mL/minute
Indication-specific dosing:
Bloodstream infection: Adjunctive empiric therapy for patients with sepsis/septic shock and concern for resistant gram-negative bacteria (eg, immunosuppression, prevalent local resistance, recent antibiotic exposure): IV:15 to 30 mg/kg once daily in combination with a second gram-negative active agent

Cystic fibrosis, acute pulmonary exacerbation (off-label use): IV:30 to 35 mg/kg once daily in combination with other appropriate agents; adjust dose and interval to achieve a target peak of 80 to 120 mg/L
Meningitis, bacterial (susceptible gram-negative organisms):IV:5 mg/kg every 8 hours in combination with other appropriate agents
Pneumonia, hospital-acquired or ventilator-associated (alternative agent):
IV:15 to 20 mg/kg once daily in combination with a second gram-negative age
Tuberculosis, drug resistant (alternative agent) (off-label use):
IM, IV:15 mg/kg once daily or 25 mg/kg 3 times weekly in combination with additional appropriate antituberculosis agents
*renal dose adjustment required in all categories
''',
  '''
  Community management of chest indrawing pneumonia (WHO)
  80-90 mg/kg two divided doses x 5 days
  
  Dosing: Pediatric

General dosing, susceptible infection:
Mild to moderate infection:
Infants ≤3 months: Oral: 25 to 50 mg/kg/day in divided doses every 8 hours 
Infants >3 months, Children, and Adolescents: maximum dose: 500 mg/dose.
 Oral: 20 to 40 mg/kg/day in divided doses every 8 hours (maximum dose: 500 mg/dose) or 25 to 45 mg/kg/day in divided doses every 12 hours (maximum dose: 875 mg/dose).
Severe infection (as step-down therapy): Infants, Children, and Adolescents: Oral: 80 to 100 mg/kg/day in divided doses every 8 hours; maximum dose: 500 mg/dose
  Endocarditis prophylaxis: Dental or oral procedures or respiratory tract procedures (eg, tonsillectomy, adenoidectomy): Infants, Children, and Adolescents: Oral: 50 mg/kg 30 to 60 minutes before procedure; maximum dose: 2,000 mg/dose
  Otitis media, acute (AOM): Infants ≥2 months and Children: Oral: 80 to 90 mg/kg/day in divided doses every 12 hours; variable duration of therapy, if <2 years of age or severe symptoms (any age): 10-day course; if 2 to 5 years of age with mild to moderate symptoms: 7-day course; ≥6 years of age with mild to moderate symptoms: 5- to 7-day course
  Tonsillopharyngitis; Group A streptococcal infection, treatment and primary prevention of rheumatic fever:
Immediate release (oral suspension, chewable tablets, tablets, capsules): Children and Adolescents 3 to 18 years: Oral: 50 mg/kg once daily or 25 mg/kg twice daily for 10 days; maximum daily dose: 1,000 mg/day
  
  Dosing: Adult
  Usual dosage range:
Immediate release: Oral: 500 mg to 1 g every 8 to 12 hours.
Extended release: Oral: 775 mg once daily.
Endocarditis, prophylaxis (dental or invasive respiratory tract procedures) (off-label use): Oral: 2 g 30 to 60 minutes before procedure.
Otitis media, acute (alternative agent): Limited data: Oral: 500 mg every 8 hours or 875 mg every 12 hours (WHO 2001; manufacturer's labeling). Some experts use 1 g every 8 hours for patients at high risk of severe infection or resistant Streptococcus pneumoniae. Duration is 5 to 7 days for mild to moderate infection and 10 days for severe infection
Pneumonia, community acquired:
Empiric therapy, outpatient (patients without comorbidities or risk factors for antibiotic-resistant pathogens):
Oral: 1 g 3 times daily 
Oral step-down therapy following initial parenteral therapy, inpatient:
Oral: 1 g 3 times daily; some experts use lower doses (500 mg 3 times daily or 875 mg twice daily) for patients without risk factors for drug-resistant S. pneumoniae (eg, age <65 years without comorbidities)
Duration is for a minimum of 5 days
Streptococcal pharyngitis (group A): Oral: 500 mg twice daily or 1 g once daily for 10 days
  ''',
  '''
 Dosing: Pediatric
 Otitis media, acute: Infants ≥3 months and Children: Oral suspension (600 mg/5 mL): Oral: 90 mg amoxicillin/kg/day divided every 12 hours for up to 10 days
 Pneumonia, community-acquired: Infants ≥3 months, Children, and Adolescents:
Empiric therapy: Oral: 90 mg amoxicillin/kg/day in divided doses twice daily; maximum daily dose: 4,000 mg/day.
H. influenzae mild or step-down therapy: Oral:
Standard dose: 45 mg amoxicillin/kg/day in divided doses 3 times daily.
High dose: 90 mg amoxicillin/kg/day in divided doses twice daily.
IV dosing
Infants <3 months or weighing <4 kg: IV: 50 mg amoxicillin/kg/dose every 12 hours.
Infants ≥3 months, Children, and Adolescents weighing 4 to <40 kg: 50 mg amoxicillin/kg/dose every 8 hours; maximum dose: 2,000 mg amoxicillin/dose.
Children and Adolescents weighing ≥40 kg: 2,000 mg amoxicillin every 8 to 12 hours. 
 
Dosing: Adult
Dosing range:
Oral: Immediate release: 500 mg every 8 to 12 hours or 875 mg every 12 hours; Extended release: 2 g every 12 hours.
IV : 1 g every 8 hours or 2 g every 8 to 12 hours; surgical prophylaxis: 1 to 2 g at induction of anesthesia for procedures <1 hour (for procedures >1 hour may administer up to 2 additional doses in 24 hours).
Otitis media (Oral dosing): 
Immediate release: 875 mg twice daily or 500 mg every 8 hours (WHO 2001).
Extended release: 1 or 2 g twice daily, based on weight and severity of infection; 
Duration: 5 to 7 days for mild to moderate infection and 10 days for severe infection
Pneumonia (Community acquired, outpatient): Oral dosing : 
Immediate release: 500 mg 3 times daily or 875 mg twice daily as part of an appropriate combination regimen 
Extended release: 2 g twice daily as part of an appropriate combination regimen
Duration of therapy: Minimum of 5 days
 ''',
  '''
Dosing: Pediatric

General dosing: Infants, Children, and Adolescents:
Oral: 50 to 100 mg/kg/day divided every 6 hours; maximum daily dose: 2,000 mg/day.
IM, IV: 50 to 200 mg/kg/day divided every 6 hours; maximum daily dose: 8g/day; higher doses (300 to 400 mg/kg/day; maximum daily dose: 12g/day) are recommended for some infections.
Community-acquired pneumonia: Infants >3 months, Children, and Adolescents: (consider addition of vancomycin or clindamycin to empiric therapy if  MRSA suspected) 
Empiric treatment or S. pneumoniae or H. influenzae, IV: 150 to 200 mg/kg/day divided every 6 hours.
Group A Streptococcus: IV: 200 mg/kg/day divided every 6 hours.
S. pneumoniae: IV: 300 to 400 mg/kg/day divided every 6 hours.
Endocarditis Treatment: IV: 200 to 300 mg/kg/day divided every 4 to 6 hours; maximum daily dose: 12g/day; use in combination with other antibiotics for at least 4 weeks
Prophylaxis: : IV, IM: 50 mg/kg within 30 to 60 minutes before procedure; maximum dose: 2,000 mg/dose. Intravenously (IV) administered antibiotics should be used for patients who are unable to tolerate or absorb oral medications
Intra-abdominal infection: IV: 200 mg/kg/day divided every 6 hours; maximum single dose: 2,000 mg; 
Meningitis (including health care-associated meningitis and ventriculitis): IV: 300 to 400 mg/kg/day divided every 4 to 6 hours; maximum daily dose: 12g/day

Surgical prophylaxis: IV: 50 mg/kg within 60 minutes prior to surgical incision; may repeat in 2 hours if lengthy procedure or excessive blood loss; maximum dose: 2,000 mg/dose

Dosing Adult:
Bloodstream infection:
Pathogen-directed therapy for Enterococcus spp.:IV:2 g every 4 hours; use as part of an appropriate combination regimen in the setting of suspected endocarditis or critical illness. Duration of therapy is 7 to 14 days for uncomplicated infection (ie, fever resolution within 72 hours and absence of metastatic focus of infection or endovascular hardware) 
Pathogen-directed therapy for Listeria monocytogenes:IV:2 g every 4 hours

Endocarditis, prophylaxis (alternative agent for patients unable to take oral therapy) (off-label use): IM, IV:2 g as a single dose 30 to 60 minutes before procedure.
Endocarditis, treatment: Enterococcus faecalis, native or prosthetic valve (penicillin-susceptible):IV:2 g every 4 hours as part of an appropriate combination regimen (eg, with ceftriaxone or gentamicin). Duration is usually 6 weeks

Intra-abdominal infection, health care-associated (off-label use):Empiric or pathogen-directed therapy for Enterococcus spp. in high-risk patients 
IV:2 g every 4 hours as part of an appropriate combination regimen

Meningitis, bacterial:As a component of empiric therapy:
IV:2 g every 4 hours; for empiric therapy and for directed therapy for Enterococcus or Listeria, use as part of an appropriate combination regimen. Treatment duration is 7 to 21 days, depending on causative pathogen(s) and clinical response

Osteomyelitis and/or discitis, treatment (off-label use): Pathogen-directed therapy for penicillin-susceptible Enterococcus or Streptococcus spp.:IV:2 g every 4 hours or 12 g as a continuous infusion every 24 hours, generally for ≥6 weeks. Shorter courses are appropriate if the affected bone is completely resected
  ''',
  '''
Dosing Pediatric 
General dosing, susceptible infection:
Mild to moderate infection: IV: 100 to 200 mg ampicillin/kg/day divided every 6 hours; maximum dose: 2,000 mg ampicillin/dose
Severe infection (eg, meningitis, resistant Streptococcus pneumonia): IV: 200 to 400 mg ampicillin/kg/day divided every 6 hours; maximum dose: 2,000 mg ampicillin/dose
Endocarditis, treatment: Children and Adolescents: IV: 200 to 300 mg ampicillin/kg/day divided every 4 to 6 hours; maximum dose: 2,000 mg
Intra-abdominal infection, complicated: IV: 200 mg ampicillin/kg/day divided every 6 hours

Pelvic inflammatory disease: Adolescents: IV: 3g ampicillin/sulbactam every 6 hours

Skin and skin structure infection: IV: 200 mg ampicillin/kg/day divided every 6 hours for up to 14 days; maximum dose: 2,000 mg ampicillin/dose
Surgical prophylaxis: Children and Adolescents: IV: 50 mg ampicillin/kg/dose within 60 minutes prior to procedure; may repeat in 2 hours

Dosing Adult: 
Usual dosage range:IM, IV: 1.5 to 3 g every 6 hours (maximum: ampicillin/sulbactam 12 g daily
''',
  '''
No reliable information available
  ''',
  '''No relevant information available
  ''',
  '''
Dosing: Pediatric
Group A streptococcal (Streptococcus pyogenes) infection:
Pharyngitis, treatment (primary prevention of rheumatic fever): IM:
≤27 kg: 600,000 units as a single dose.
>27 kg: 1.2 million units as a single dose.
Rheumatic fever, secondary prevention: IM:
≤27 kg: 600,000 units every 3 to 4 weeks.
>27 kg: 1.2 million units every 3 to 4 weeks.

Dosing: Adult
Usual dosage range: IM: 1.2 to 2.4 million units as a single dose.
Skin and soft tissue infection:
Cellulitis, long-term suppression of recurrent infection (off-label use): 
IM: 1.2 to 2.4 million units as a single dose every 2 to 4 weeks after completion of treatment 
Streptococcus, group A:  Pharyngitis: IM: 1.2 million units as a single dose 
Secondary prophylaxis in patients with rheumatic fever (prevention of recurrent attacks): IM: 1.2 million units once every 21 to 28 days. 
syphilis: Primary, Secondary, Early Latent (<1-year duration): IM: 2.4 million units as a single dose
  ''',
  '''
Dosing: Pediatric

General dosing, susceptible infection (non-CNS): Infants, Children, and Adolescents: IM, IV: 100,000 to 300,000 units/kg/day in divided doses every 4 to 6 hours; maximum daily dose: 24 million units/day

Diphtheria: IM, IV: 150,000 to 250,000 units/kg/day in divided doses every 6 hours for 7 to 10 days
Endocarditis, bacterial; treatment: Children and Adolescents: IV: 200,000 to 300,000 units/kg/day in divided doses every 4 hours; maximum daily dose: 24 million units/day; treat for ≥4 weeks; longer durations may be necessary; may use in combination with gentamicin for some resistant organisms 
Meningitis, including healthcare-associated ventriculitis and meningitis: IV: 300,000 to 400,000 units/kg/day divided every 4 to 6 hours; maximum dose: 4 million units/dose; maximum daily dose: 24 million units/day
Pneumonia, community-acquired (CAP):
Empiric treatment or S. pneumoniae (moderate to severe; MICs to penicillin ≤2.0 mcg/mL): IV: 200,000 to 250,000 units/kg/day divided every 4 to 6 hours
Group A Streptococcus (moderate to severe): IV: 100,000 to 250,000 units/kg/day divided every 4 to 6 hours
Skin and soft tissue infections (Streptococcal infection or necrotizing infections due to Clostridium or Streptococcus species): IV: 60,000 to 100,000 units/kg/dose every 6 hours; maximum dose: 4 million units/dose; adult dose: 2 to 4 million units every 4 to 6 hours. For necrotizing infections, use in combination with clindamycin and continue until further debridement is not necessary, patient has clinically improved, and patient is afebrile for 48 to 72 hours,
Syphilis Congenital: IV: 50,000 units/kg/dose every 4 to 6 hours for 10 days 
Neurosyphilis (including ocular syphilis):
Adolescents: IV: 3 to 4 million units every 4 hours or as a continuous infusion for 10 to 14 days; maximum daily dose: 24 million units/day
Tetanus; treatment IV: 100,000 units/kg/day in divided doses every 6 hours in combination with tetanus immune globulin; maximum daily dose: 20 million units/day, Continue penicillin for 7 to 10 days

Dosing: Adult

Actinomycosis, severe or extensive: IV: 10 to 20 million units/day as a continuous infusion or in divided doses every 4 to 6 hours for 4 to 6 weeks followed by appropriate long-term oral therapy 
Bloodstream infection:
Pathogen-directed therapy for Enterococcus spp. (off-label use): IV: 18 to 30 million units/day as a continuous infusion or in divided doses every 4 hours; use as part of an appropriate combination regimen in the setting of suspected endocarditis or critical illness. Duration of therapy is 7 to 14 days for uncomplicated infection
Pathogen-directed therapy for Listeria monocytogenes: IV: 24 million units/day in divided doses every 4 hours; use in combination with gentamicin for nonpregnant patients. Duration should be individualized based on patient factors, source and extent of infection, and clinical response. Penicillin is usually continued for at least 2 weeks; patients who are immunocompromised warrant a longer course
Pathogen directed therapy for beta-hemolytic streptococci: IV: 18 to 24 million units/day in divided doses every 4 hours. Duration of therapy is generally 14 days; some experts suggest a shorter course (eg, 10 days) for patients with rapid clearance of bacteremia and clinical improvement
Pathogen-directed therapy for group D streptococci (Streptococcus bovis/Streptococcus equinus complex) (alternative agent): IV: 12 to 24 million units/day in divided doses every 4 hours. Duration of therapy is 14 days in the absence of other clinical manifestations
Botulism, wound (adjunctive agent following antitoxin administration): IV: 18 to 20 million units/day in divided doses every 4 to 6 hours in combination with wound debridement; duration depends on extent of the wound
Diphtheria (adjunctive agent following antitoxin administration) (alternative agent): IV: 2 to 3 million units/day in divided doses every 4 to 6 hours for 10 to 12 days
Endocarditis, treatment:
Enterococcus, native or prosthetic valve IV:18 to 30 million units/day as a continuous infusion or in divided doses every 4 hours in combination with an aminoglycoside (eg, gentamicin). Duration is usually 6 weeks; for patients with native valve endocarditis and symptoms <3 months, antibiotic therapy may be given for 4 weeks.
Viridans group streptococci and Streptococcus gallolyticus (S. bovis):
Native valve: Highly penicillin-susceptible (minimum inhibitory concentration [MIC] ≤0.12 mcg/mL): IV: 12 to 18 million units/day as a continuous infusion or in divided doses every 4 or 6 hours for 4 weeks; for patients with uncomplicated infection, rapid response to therapy, and no underlying disease, an alternative is 12 to 18 million units/day as a continuous infusion or in divided doses every 4 hours in combination with gentamicin for 2 weeks
Leptospirosis, severe (off-label use): IV: 1.5 million units every 6 hours for 7 days
Meningitis, bacterial:
Pathogen-directed therapy for Cutibacterium acnes, L. monocytogenes, Neisseria meningitidis, Streptococcus agalactiae, or Streptococcus pneumoniae: IV: 4 million units every 4 hours. 
For treatment of L. monocytogenes, use as part of an appropriate combination regimen . Treatment duration is 7 to 21 days
Neurosyphilis (including ocular and otosyphilis):
IV: 18 to 24 million units/day as a continuous infusion or in divided doses every 4 hours for 10 to 14 days 
Odontogenic infection, pyogenic (alternative agent : IV: 2 to 4 million units every 4 to 6 hours in combination with metronidazole; total duration (including oral step-down therapy) is 7 to 14 days 
Osteomyelitis and/or discitis (off-label use):
IV: 20 to 24 million units/day as a continuous infusion or in divided doses every 4 hours, generally for ≥6 weeks
Tetanus (Clostridium tetani infection) (adjunctive agent following tetanus immune globulin and vaccine administration) (alternative agent): IV: 2 to 4 million units every 4 to 6 hours for 7 to 10 days
Toxic shock syndrome, streptococcal: IV: 4 million units every 4 hours in combination with clindamycin. Duration of therapy depends on extent and severity of infection and response to treatment
  ''',
  '''
 Not commonly used
  ''',
  '''
Not commonly used
To be updated later
  ''',
  '''
Dosing: Pediatric
General dosing, susceptible infection: Mild to moderate infection: Oral: 15 mg/kg/dose twice daily; maximum daily dose: 2,000 mg/day
Impetigo: Oral: 30 mg/kg/day in a single dose or divided every 12 hours; maximum daily dose: 1,000 mg/day
Pharyngitis/tonsillitis: Oral: 30 mg/kg/day in a single dose or divided every 12 hours for 10 days; maximum daily dose: 1,000 mg/day
Skin and skin structure infections: Oral: 15 mg/kg/dose every 12 hours; maximum daily dose: 1,000 mg/day
Urinary tract infection: Oral: 15 mg/kg/dose every 12 hours; maximum daily dose: 2,000 mg/day

Dosing: Adult
Prosthetic joint infection, staphylococci (oxacillin-susceptible), chronic oral antimicrobial suppression (off-label use): Oral: 500 mg every 12 hours 
Skin and soft tissue infection:
Cellulitis (nonpurulent)/erysipelas, mild, treatment (alternative agent): Oral: 1 g once daily or 500 mg twice daily for 5 days; duration may be extended up to 14 days 
Oral: 500 mg twice daily after completion of treatment.
Streptococcal pharyngitis, group A Oral: 1 g once daily for 10 days 
Urinary tract infection (alternative agent): Oral: 500 mg twice daily for 5 to 7 days 
Urinary tract infection, complicated (including pyelonephritis): Oral: 1 g twice daily for 10 to 14 days.
  ''',
  '''
Dosing Pediatric: 
General dosing, susceptible infection: Infants, Children, and Adolescents:
Mild to moderate infection: Oral: 25 to 50 mg/kg/day divided every 6 to 12 hours; maximum daily dose: 2,000 mg/day
Severe infection: Oral: 75 to 100 mg/kg/day divided every 6 to 8 hours; maximum daily dose: 4,000 mg/day
Catheter (peritoneal dialysis), exit-site or tunnel infection: Oral: 10 to 20 mg/kg/day once daily or divided every 12 hours; maximum dose: 1,000 mg/dose
Duration of therapy: Exit site infection: ≥2 weeks and for at least 7 days after resolution; ≥3 weeks for S. aureus. Tunnel infection: 2 to 4 weeks.

Endocarditis, prophylaxis before invasive dental or respiratory tract procedures (alternative agent for nonanaphylactic penicillin allergy):
Oral: 50 mg/kg administered 30 to 60 minutes prior to procedure; maximum dose: 2,000 mg/dose 
Osteoarticular infection, acute (eg, septic [bacterial] arthritis, osteomyelitis): Step-down therapy following parenteral treatment:
Oral: 100 to 150 mg/kg/day divided every 6 to 8 hours; maximum dose: 1,000 mg/dose. Minimum total duration is 2 to 3 weeks for septic arthritis and 3 to 4 weeks for osteomyelitis
Otitis media, acute (AOM): Pathogen-directed therapy: Note:( not for empiric therapy): Children >1 year and Adolescents <15 years: Oral: 75 to 100 mg/kg/day divided every 6 hours. For severe disease or who are <2 years of age, treat for 10 days; for patients ≥2 years of age with mild to moderate disease, 5 to 7 days
Pneumonia, community-acquired:Pathogen-directed/ step-down therapy 
Infants >3 months, Children, and Adolescents: Oral: 75 to 100 mg/kg/day divided every 6 to 8 hours; maximum daily dose: 4,000 mg/ day, total duration 5 to 10 days
Skin and soft tissue infection (SSTI): Oral: 25 to 100 mg/kg/day divided every 6 to 8 hours; maximum dose: 500 mg/dose, duration 5 days
Impetigo,ecthyma: Oral: 25 to 50 mg/kg/day divided every 6 to 8 hours; maximum daily dose: 2,000 mg / day for 7 days 
Streptococcal pharyngitis/tonsillitis, group A (alternative agent for nonanaphylactic penicillin allergy):Oral: 40 mg/kg/day divided every 12 hours for 10 days; maximum dose: 500 mg/dose
Urinary tract infection: Mild to moderate (eg, cystitis):Oral: 25 to 50 mg/kg/day divided every 6 to 12 hours; maximum dose: 500 mg/dose 
Severe (eg, pyelonephritis):Oral: 50 to 100 mg/kg/day divided every 6 to 8 hours; maximum dose: 1,000 mg/dose 
Duration 7-14 days

Dosing Adult 
Usual dose :Oral:250 mg to 1g every 6 hours or 500 mg every 12 hours (maximum: 4g/day).
Prosthetic joint infection : 500 mg every 6 to 8 hours or 1g every 8 to 12 hours. For the first 3 to 6 months of therapy, combine with rifampicin
Streptococci, beta-hemolytic (alternative agent): 500 mg every 6 to 8 hours 
Skin and soft tissue infection:
Cellulitis (nonpurulent)/erysipelas, mild (alternative agent): Oral: 500 mg 4 times daily for at least 5 days
Impetigo or ecthyma: Oral:250 to 500 mg 4 times daily for 7 days 
Streptococcal pharyngitis, group A (alternative agent for mild, nonanaphylactic penicillin allergy): Oral: 500 mg twice daily for 10 days 
  ''',
  '''
To be updated later
  ''',
  '''
To be updated later
  ''',
  '''
To be updated later
  ''',
  '''
To be updated later
  ''',
  '''
To be updated later
  ''',
  '''
Dosing: Pediatric

Mild to moderate infections: 25 to 100 mg/kg/day divided every 8 hours; maximum daily dose: 6g/day
Severe infections (eg, bone/joint infections): 100 to 150 mg/kg/day divided every 6 to 8 hours; maximum daily dose: 12g/day
Endocarditis, bacterial:
Prophylaxis for dental and upper respiratory procedures: IM, IV: 50 mg/kg 30 to 60 minutes before procedure; maximum dose: 1,000 mg/dose
Treatment: Children and Adolescents: IV: 100 mg/kg/day in divided doses every 8 hours; usual adult dose: 2,000 mg/dose; maximum daily dose: 12g/day; treat for at least 4 weeks; longer durations may be necessary; may use with or without gentamicin
Prophylaxis:
Touch contamination of PD line: Intraperitoneal: 125 mg per liter
Invasive dental procedures: IV: 25 mg/kg administered 30 to 60 minutes before procedure; maximum dose: 1,000 mg/dose
Gastrointestinal or genitourinary procedures: IV: 25 mg/kg administered 60 minutes before procedure; maximum dose: 2,000 mg/dose
Treatment: Intraperitoneal:
Intermittent: 20 mg/kg every 24 hours in the long dwell
Continuous: Loading dose: 500 mg per liter of dialysate; maintenance: 125 mg per liter of dialysate
Pneumonia, community-acquired pneumonia (CAP)IV: 50 mg/kg/dose every 8 hours; usual maximum dose for severe infections: 12g/day
Skin and soft tissue infections, S. aureus, methicillin susceptible (mild to moderate):
S. aureus, methicillin susceptible skin and soft tissue infections including pyomyositis: IV: 50 mg/kg/day divided every 8 hours; maximum dose: 1,000 mg/dose - upto14 to 21 days
S. aureus, methicillin susceptible necrotizing infection of skin, fascia, or muscle: IV: 100 mg/kg/day divided every 8 hours; maximum dose: 1,000 mg/dose
Streptococcal, nonpurulent skin infection (cellulitis): IV: 100 mg/kg/day divided every 8 hours; maximum dose: 1,000 mg/dose
Surgical prophylaxis: IV: 30 mg/kg within 60 minutes prior to procedure, may repeat in 4 hours for prolonged procedure or excessive blood loss (eg, >1,500 mL in adults); maximum dose dependent upon patient weight: Weight <120 kg: 2,000 mg/dose; weight ≥120 kg: 3,000 mg/dose

Dosing: Adult
Bloodstream infection:
Pathogen-directed therapy for methicillin-susceptible staphylococci (alternative agent):
IV:2 g every 8 hours
Intracatheter:Prepare lock solution to final concentration of cefazolin 5 to 10 mg/mL (may be combined with heparin). Instill into each lumen of the catheter access port using a volume sufficient to fill the catheter (2 to 5 mL), with a dwell time of up to 72 hours

Endocarditis, prophylaxis: IM, IV: 1 g as a single dose 30 to 60 minutes before procedure.
IM, IV: 1 g as a single dose 30 to 60 minutes before procedure.


Endocarditis, treatment:
Native valve: IV: 2 g every 8 hours for 6 weeks
Prosthetic valve: IV: 2 g every 8 hours for ≥6 weeks (combine with rifampin for entire duration of therapy and gentamicin for the first 2 weeks)

Intra-abdominal infection, mild to moderate, community acquired in patients without risk factors for resistance or treatment failure:
Cholecystitis, acute: IV: 1 to 2 g every 8 hours; continue for 1 day after gallbladder removal
Other intra-abdominal infections  (off-label use): IV: 1 to 2 g every 8 hours in combination with metronidazole. Total duration of therapy  is 4 to 5 days following adequate source control
Osteomyelitis and/or discitis: Treatment, pathogen-directed therapy for methicillin-susceptible S. aureus:
IV: 2 g every 8 hours for ≥6 week

Pneumonia: Pathogen-directed therapy for methicillin-susceptible S. aureus: IV: 2 g every 8 hours. Minimum duration is generally 5 days for community-acquired pneumonia and 7 days

Septic arthritis, without prosthetic material: Pathogen-directed therapy for methicillin-susceptible S. aureus: IV: 2 g every 8 hours. Duration is 3 to 4 weeks

Skin and soft tissue infection:
Erysipelas or nonpurulent cellulitis in patients without risk for methicillin-resistant S. aureus: IV: 1 to 2 g every 8 hours. Total duration of therapy ≥5 days (including oral step-down therapy); may extend to 14 days
Streptococcus (group B), maternal prophylaxis for prevention of neonatal disease (alternative agent) (off-label use):
IV: 2 g as a single dose at onset of labor or prelabor rupture of membranes, then 1 g every 8 hours until delivery
Surgical prophylaxis: IV: 2 g for patients <120 kg or 3 g for patients ≥120 kg; administer within 60 minutes of surgical incision. Use in combination with metronidazole for procedures requiring anaerobic coverage

Surgical prophylaxis: IV: 2 g for patients <120 kg or 3 g for patients ≥120 kg; administer within 60 minutes of surgical incision. Use in combination with metronidazole for procedures requiring anaerobic coverage
Toxic shock syndrome (off-label use): Pathogen-directed therapy for group A streptococcus or methicillin-susceptible S. aureus:IV:2 g every 8 hours in combination with clindamycin
Urinary tract infection, complicated (pyelonephritis or urinary tract infection with systemic signs/symptoms): Pathogen-directed therapy for susceptible organisms: IV: 1 g every 8 hours
  ''',
  '''
To be updated later
  ''',
  '''
No relevant information found
  ''',
  '''
No relevant information found
  ''',
  '''
Dosing: Neonatal

Meningitis : Treat for a minimum of 21 days; use smaller doses and longer intervals for neonates <2 kg: PNA ≤7 days: IV: 25 mg/kg/dose every 24 hours, PNA 8 to 28 days: IV: 25 mg/kg/dose every 12 hours or 50 mg/kg/dose every 24 hours.
<1,200 g and ≤28 days: IV: 22 mg/kg/dose every 24 hours.
1,200 to 2,000 g and ≤7 days: IV: 25 mg/kg/dose every 24 hours.
Premature neonate or term neonate with PNA ≤7 days: IV: 25 mg/kg/dose every 24 hours or initiation with a loading dose of 20 mg/kg followed 12 hours later by a maintenance regimen of 12.5 mg/kg/dose every 12 hour
Term neonate with PNA >7 days:IV: 25 mg/kg/dose every 12 hours or 12.5 mg/kg/dose every 6 hours

Dosing: Pediatric

Meningitis and nonmeningeal pneumococcal infections: IV: 18.75 to 25 mg/kg/dose every 6 hours; maximum daily dose: 4,000 mg/day
Severe infections: Infants: IV: 12.5 to 25 mg/kg/dose every 6 hours; maximum daily dose: 4,000 mg/day

Dosing: Adult

Serious infections: IV: 50 to 100 mg/kg/day in divided doses every 6 hours; maximum daily dose: 4 g/day
  ''',
  '''
Dosing: Neonatal

≤32 weeks: 5 mg/kg/dose every 8 hours
>32 to 40 weeks: 7 mg/kg/dose every 8 hours
>40 weeks: 9 mg/kg/dose every 8 hours
Weight-directed dosing 

≤2 kg, ≤28 days : 5 mg/kg/dose every 8 hours
≤2 Kg, <29 to 60 days: 10 mg/kg/dose every 8 hours
>2 kg, ≤7 days: 7 mg/kg/dose every 8 hours
>2Kg, 8 to 28 days: 9 mg/kg/dose every 8 hours
>2Kg, 29 to 60 days: 10 mg/kg/dose every 8 hours

Dosing: Pediatric

IM, IV: 20 to 40 mg/kg/day divided every 6 to 8 hours; maximum daily dose: 2,700 mg/day 
Oral: 10 to 25 mg/kg/day divided every 8 hours
higher doses of 30 to 40 mg/kg/day divided every 6 to 8 hours recommended for some infections; maximum daily dose: 1,800 mg/day

Dosing: Adult 
Oral: 600 to 1,800 mg/day in 2 to 4 divided doses; up to 2,400 mg/day in 4 divided doses may be given for severe infections.
IM, IV: 600 to 2,700 mg/day in 2 to 4 divided doses; according to the manufacturer, up to 4,800 mg/day IV (in divided doses) has been used in life-threatening infections; maximum: 600 mg/dose IM.
  ''',
  '''
No relevant data available
  ''',
  '''
Dosing: Pediatric
Oral  Child ≤20 kg: 25 to 50 mg/kg/day in divided doses every 6 hours, >20 kg: adult dose
IM, IV: Child  ≤20 kg: 25 to 50 mg/kg/day in divided doses every 6 hours.(up to 50 mg/kg/dose every 4 to 6 hours  or 200 mg/kg to 300 mg/kg/day in divided doses have been recommended  for severe infections like Pneumonia, Infective endocarditis, septic Arthritis, osteomyelitis, septicemia etc)  >20 kg: adult dose

Dosing: Adult
Oral: 250 to 500 mg every 6 hours; may increase dose for serious infections (maximum dose: 6 g/day).
IM, IV: 1 to 2 g every 4 to 6 hours ( 2 gm 4hrly for osteomyelitis and Endocarditis for 6 weeks or more)
  ''',
  '''
Dosing: Pediatric
Mild to moderate infection: Oral: 12 to 25 mg/kg/day divided every 6 hours; maximum dose: 250 mg/dose
Severe infection (step-down therapy of bone and joint infection): Oral: 100 mg/kg/day divided every 6 hours; maximum dose: 500 mg/dose

Dosing: Adult
Prosthetic joint infection : Oral: 500 mg 3 or 4 times daily. Duration ranges from  3 months to indefinitely, as indicated. 
Cellulitis (nonpurulent)/erysipelas, mild: Oral: 500 mg 4 times daily for 5 days; duration may be extended up to 14 days
Impetigo or ecthyma: Oral: 250 to 500 mg 4 times daily for 7 days
  ''',
  '''
Dosing: Pediatric
Now accepted for short course (≤14 to 21 days) for all ages
Oral, IV: 2.2 mg/kg/dose every 12 hours; maximum dose: 100 mg/dose.
Brucellosis: Oral: 2.2 mg/kg/dose twice daily for at least 6 weeks; maximum dose: 100 mg/dose
Chlamydial infection: Oral: 2.2 mg/kg/dose twice daily for 7 days. Maximum dose: 100 mg/dose 
Malaria Prophylaxis: Oral: 2.2 mg/kg/dose once daily starting 1 to 2 days before travel to the area with endemic infection, continuing daily during travel and for 4 weeks after leaving endemic area

Dosing: Adult
Oral: 100 to 200 mg/day in 1 to 2 divided doses
IV: 100 mg every 12 hours
  ''',
  '''
No relevant information available
  ''',
  '''
Children <2 years: 62.5 to 125 mg every 6 hours
Children 2 to 10 years: 125 to 250 mg every 6 hours
Children >10 years, Adolescents, and Adults: 250 to 500 mg every 6 hours
IM, IV: Children: 25 to 50 mg/kg/day in 3 to 4 divided doses,
Adolescents and Adults: 1 to 6 g daily in 3 to 6 divided doses
  ''',
  '''
No relevant information available
  ''',
  '''
Common dosing: IM, IV: 2 to 2.5 mg/kg/dose every 8 hours
Extended-interval dose: IV: 5 to 7.5 mg/kg/dose every 24 hours in patients with normal renal function
Age-≥3 months to <2 years: IV: 9.5 mg/kg/dose every 24 hours.
 2 to <8 years: IV: 8.5 mg/kg/dose every 24 hours.
 ≥8 years and Adolescents: IV: 7 mg/kg/dose every 24 hours.
Cystic Fibrosis with lung Infection: IM, IV: 3.3 mg/kg/dose every 8 hours or 10 to 12 mg/kg/dose every 24 hours
Infective Endocarditis: : 3 to 6 mg/kg/day divided every 8 hours (gram positive), 7.5 mg/kg/day divided every 8 hours (gram negative)

Dosing: Adult
Usual dose: IV, IM: 3 to 5 mg/kg/day in divided doses every 8 hours or IV: 5 to 7 mg/kg once daily
  ''',
  '''
No relevant information available
  ''',
  '''
No relevant information available
  ''',
  '''
No relevant information available
  ''',
  '''
No relevant information available
  ''',
  '''
Dosing: Neonatal 
Loading dose: 15 mg/kg
Maintenance dose:
Body Weight
Postnatal Age
Dose
≤2 kg:  ≤28 days- 7.5 mg/kg/dose every 12 hours, 29 to 60 days- 10 mg/kg/dose every 8 hours
>2 kg: ≤7 days-7.5 mg/kg/dose every 8 hours, 8 to 60 days- 10 mg/kg/dose every 8 hours

Surgical prophylaxis

Wt <1.2 kg- 7.5 mg/kg as a single dose 30 to 60 minutes prior to procedure
Wt ≥1.2 kg 15 mg/kg as a single dose 30 to 60 minutes prior to procedure

Dosing: Pediatric
Oral: 15 to 50 mg/kg/day in divided doses 3 times daily; maximum daily dose: 2,250 mg/day.
IV: 22.5 to 40 mg/kg/day in divided doses 3 or 4 times daily; maximum daily dose: 4,000 mg/day
Giardiasis: Oral: 5 to 10 mg/kg/dose every 8 hours for 5 to 7 days; maximum dose: 250 mg/dose
Surgical prophylaxis: IV: 15 mg/kg as a single dose 30 to 60 minutes prior to procedure; maximum single dose: 500 mg

Dosing: Adult
Oral: 500 to 750 mg every 8 hours for 7 to 10 days followed by an intraluminal agent
Intra Abdominal infection: Oral, IV: 500 mg every 8 hours
Intracranial abscess (brain abscess, intracranial epidural abscess): IV: 7.5 mg/kg (usually 500 mg) every 6 to 8 hours (maximum dose: 4 g/day) for 6 to 8 weeks
Surgical prophylaxis:IV: 500 mg within 60 minutes prior to surgical incision
Oral: Colorectal surgical prophylaxis (off-label use): 1 g every 3 to 4 hours for 3 doses with additional oral antibiotics
  ''',
  '''
Dosing: Neonatal
 Age ≤34 weeks ≤7 days- 25 mg/kg/dose every 12 hours, 8 to 28 days- 25 mg/kg/dose every 8 hours
 Age >34 weeks ≤7 days- 25 mg/kg/dose every 8 hours, 8 to 28 days- 25 mg/kg/dose every 6 hours

Dosing: Pediatric
IM, IV: 100 to 200 mg/kg/day in divided doses every 4 to 6 hours; maximum daily dose: 12g/day
IV Infusion: 150 to 200 mg/kg/day infused continuously over 24 hours; maximum daily dose: 12g/day

Dosing: Adult
IV 2g every 4 hours
  ''',
  '''
No relevant information available
  ''',
  '''
Dosing: Pediatric
Urinary tract infection (UTI): Oral: 5 to 7 mg/kg/day divided every 6 hours for 7 days - maximum dose: 100 mg/dose
UTI, prophylaxis: Oral: 1 to 2 mg/kg/day in a single dose (at bedtime) or divided twice daily; maximum daily dose: 100 mg/day

Dosing: Adult
Cystitis: Nitrofurantoin monohydrate/macrocrystals (Macrobid): Oral: 100 mg twice daily; treat females for 5 days and males for 7 days
Prophylaxis Oral: 100 mg once daily at bedtime
  ''',
  '''
Oral: Children >35 kg and Adults:
Trichomonas: 1.5 g single dose for one day; alternatively, 0.5 g twice daily for 5 days
Amebiasis (with amebic dysentery): 1.5 g as a single dose for 3 days; patients >60 kg should take 1 g twice daily for 3 days
Giardiasis: 1.5 g as a single dose for 1-2 days

IV: Adults:
Anaerobic bacterial infection: Initially infusion of 0.5-1 g followed by 0.5 g every 12 hours for 5-10 days; oral therapy substituted at the earliest opportunity
Amebic liver abscess and severe amebic dysentery: 0.5-1 g, followed by 0.5 g every 12 hours for 3-6 days
  ''',
  '''
Dosing: Neonatal
usual dose 
≤14 days- 25 mg/kg/dose every 12 hours
15 to 28 days- 25 mg/kg/dose every 8 hours
Meningitis
≤14 days: 50 mg/kg/dose every 12 hours ( for less than 1 kg) 
15 to 28 days- 50 mg/kg/dose every 8 hours ( 6 hourly if > 2kg) 



Dosing: Pediatric
Usual dose
Mild to moderate infections: IM, IV: 100 to 150 mg/kg/day in divided doses every 6 hours; maximum daily dose: 4,000 mg/day
Severe infections: IM, IV: 150 to 200 mg/kg/day in divided doses every 4 to 6 hours; maximum daily dose: 12 g/day

Dosing: Adult 
serious infections: 2 g every 4 hours, for less severe 2 g every 6 hours
  ''',
  '''
No relevant information available
  ''',
  '''
Dosing: Pediatric
usual dose: Mild to moderate infection: Oral: 25 to 50 mg/kg/day in divided doses every 6 hours; maximum daily dose: 2,000 mg/day

Pharyngitis, acute treatment (primary prevention of rheumatic fever): 
Children <27 kg: Oral: 250 mg 2 to 3 times daily for 10 days.
Children ≥27 kg and Adolescents: Oral: 500 mg 2 to 3 times daily for 10 days; For adolescents, 250 mg 4 times daily has also been suggested.
Rheumatic fever, secondary prevention: Children and Adolescents: Oral: 250 mg twice daily

Pneumococcal infection prophylaxis, anatomic or functional asplenia (eg, sickle cell disease:
Infants (as soon as SCD diagnosed or asplenic) and Children <3 years: Oral: 125 mg twice daily.
Children ≥3 years: Oral: 250 mg twice daily.

Dosing: Adult
Oral: 500 mg 4 times daily. For prophylaxis, duration . 3 to 5 days; for treatment 5 to 14 days
  ''',
  '''
No relevant information available
  ''',
  '''
No relevant information available
  ''',
  '''
Dosing: Pediatric

usual dose : IM: 50,000 units/kg/day in divided doses every 12 to 24 hours; maximum daily dose: 1.2 million units/day.
Diphtheria: Children ≤10 kg: IM: 300,000 units every 12 hours for 14 days (including oral step-down therapy).  >10 kg: IM: 600,000 units every 12 hours for 14 days (including oral step-down therapy).

Dosing: Adult 
Usual dose: IM: 600,000 to 1 million units daily (higher doses for diphtheria, neurosyphilis etc)
  ''',
  '''
No relevant information available
  ''',
  '''
Dosing: Adult
Bacterial vaginosis:
Oral: 2 g once as a single dose 
Trichomoniasis: Oral: 2 g as a single dose.
  ''',
  '''
No relevant information available
  ''',
  '''
Dosing: Pediatric
Presribed as combination of ampicillin+sulbactam, formulated in a 2:1 ratio. Dosage recommendations are expressed as  mg of the ampicillin component
Usual dose:
Mild to moderate infection: IV: 100 to 200 mg ampicillin/kg/day divided every 6 hours; maximum dose: 2,000 mg ampicillin/dose
Severe infection (eg, meningitis, resistant Streptococcus pneumonia): IV: 200 to 400 mg ampicillin/kg/day divided every 6 hours; maximum dose: 2,000 mg 

Dosing: Adult
Adult dose expressed as total grams of ampicillin/sulbactam.
Usual dose: IM, IV: 1.5 to 3 g every 6 hours (maximum: ampicillin/sulbactam 12 g daily)
  ''',
  '''
Dosing: Pediatric
usual dose: Infants ≥2 months: Oral: 120 to 150 mg/kg/day in divided doses 4 to 6 times daily; maximum daily dose: 6 g/day
Congenital Toxoplasmosis(regardless of HIV status): Infants: Oral: 50 mg/kg/dose every 12 hours for 12 months in combination with pyrimethamine and leucovorin

Dosing: Adult
Usual dosage range: Oral: 2 to 4 g/day in 3 to 6 divided doses.
Rheumatic fever prophylaxis: Oral:
≤27 kg: 500 mg once daily
>27 kg: 1 g once daily
  ''',
  '''
no relevant information available
  ''',
  '''
Dosing: Pediatric
>3 mth: Per day: 14 mg sulfadiazine/kg+3 mg trimethoprim/kg. Daily dose is divided into 2 equal doses given every 12 hr.

Dosing: Adult
Per tablet contains sulfadiazine 410 mg and trimethoprim 90 mg or per 5 mL suspension contains sulfadiazine 205 mg and trimethoprim 45 mg: 2 tablets or 20 mL as a single dose every 24 hr.
  ''',
  '''
No relevant information for human use
  ''',
  '''
Dosing: Adult
recommended 0.5-1g 3 or 4 times daily
  ''',
  '''
No relevant information for human use
  ''',
  '''
No relevant information available
  ''',
  '''
No relevant information available
  ''',
  '''
Dosing: Adult
Malaria
sulfalene 500mg and pyrimethamine 25 mg per tablet, 3 tablets as a single dose

RTI and UTI
2g single dose once a week
  ''',
  '''
No relevant information available
  ''',
  '''
Dosing: Adult
General dose: As sulfadiazine 167 mg, sulfadimidine 167 mg, sulfamerazine 167 mg combination per tablet: Initially 4-8 tablets, then 2 tablets every 6 hr.
  ''',
  '''
No relevant information available
  ''',
  '''
Urinary tract infections

Pediatric: 30-45 mg/kg/day in 4 divided doses.

Adult: 1.5-4 g/day in 3-4 divided doses.
  ''',
  '''
Urinary tract infections, Otitis media, Chlamydial infections, Prophylaxis of meningococcal meningitis
Usual dose: oral

Pediatric: Initially, 50-60 mg/kg, followed by 25-30 mg/kg bid. Max daily dose: 75mg/kg.

Adult: Initially, 2 g followed by 1 g bid. Severe infections: 1 g tid.
  ''',
  '''
Dosing: Pediatric
6 weeks to 5 months 120 mg bid; 6 months to 5 years 240 mg bid; 6-12 years 480 mg bid.

Dosing: Adult
IV (Sulfamethoxazole 400 mg and trimethoprim 80 mg in 5 ml solution for infusion)
 usual dose- 960 mg 12 hourly via infusion over 60-90 minutes. Severe infections: 2,880 mg daily in 2 divided doses.

Pneumocystis (carinii) jirovecii pneumonia: 
Treatment in patients unable to take oral treatment: 120 mg/kg daily in 2-4 divided doses via infusion over 60-90 minutes. Shift to oral therapy as soon as possible then continue for a total treatment period of 14 days
oral : (Sulfamethoxazole 400 mg and trimethoprim 80 mg tab, Sulfamethoxazole 800 mg and trimethoprim 160 mg tab & Sulfamethoxazole 400 mg and trimethoprim 80 mg per 5 ml oral susp) 960 mg bid. Severe infections: 2,880 mg daily in 2 divided doses)
  ''',
  '''
No relevant information available
  ''',
  '''
No relevant information available
  ''',
  '''
No relevant information available
  ''',
  '''
No relevant information available
  ''',
  '''
No relevant information available
  ''',
  '''
No relevant information available
  ''',
  '''
Dosing: Adult
Vulvovaginal candidiasis
As vaginal cream: 1 applicator full (about 6 g of 15% cream) once or bid for 30 days. As vaginal suppository: 1 suppository (1.05 g) bid for 7 days.
  ''',
  '''
No relevant information available
  ''',
  '''
No relevant information available
  ''',
  '''
No relevant information available
  ''',
  '''
Dosing: Adult
Vaginal infections
Cream (Sulphathiazole 34.2 mg/g, sulphacetamide 28.6 mg/g, sulphabenzamide 37 mg/g and urea 6.4 mg/g): 5g is applied intra-vaginally bid for 4 to 6 days.
  ''',
  '''
No relevant information available
  ''',
  '''
Oral
Dosing: Pediatric
<30 kg: 25-50 mg/kg daily in 2 divided doses; 
≥30 kg: Same as adult dose.

Dosing: Adult
375-750mg bid x 5-14 days
  ''',
  '''
No relevant information available
  ''',
  '''
Dosing: Pediatric
usual dose: Children ≥8 years and Adolescents: Oral: 6.25 to 12.5 mg/kg/dose 4 times daily; maximum dose: 500 mg/dose
Acne vulgaris: Use as an adjunct to topical Rx.Children ≥8 years and Adolescents: Oral: 500 mg twice daily
Balantidium coli: Children ≥8 years and Adolescents: Oral: 10 mg/kg/dose 4 times daily for 10 days
Malaria, uncomplicated: Children ≥8 years and Adolescents: Oral: 6.25 mg/kg/dose 4 times daily for 7 days; maximum dose: 250 mg/dose

Dosing: Adult
Usual dose: Oral: 250 to 500 mg 4 times daily or 500 mg twice daily.
Cholera: 500 mg 4 times daily for 3 days
  ''',
  '''
Sexually transmitted diseases, Susceptible infections
Dosing: Pediatric
30-100 mg/kg/day.
Gonorrhoea- Adult: 2.5 g/day for 1-2 days. Alternatively, 2.5 g on the 1st day followed by 2 g/day on each of 4 subsequent days.

Dosing: Adult
1.5 g daily in divided doses, up to 3 g/day initially for severe infections.
  ''',
  '''
Dosing: Pediatric
Amebiasis, intestinal: >3 years : Oral: 50 mg/kg/dose once daily for 3 days; maximum daily dose: 2,000 mg/day; for patients with severe and extraintestinal disease, administer for 5 days
Amebiasis, liver abscess: Children >3 years : Oral: 50 mg/kg/day for 3 to 5 days; maximum daily dose: 2,000 mg/day.
Bacterial vaginosis: Adolescents: Oral: 2,000 mg once daily for 2 days or 1,000 mg once daily for 5 days
Helicobacter pylori infection: Children >3 years: Oral: 20 mg/kg/day in 1 to 2 divided doses for 5 to 7 days in combination with other agents

Dosing: Adult
Amebiasis, intestinal: Oral: 2 g once daily for 3 days.
Amebiasis, liver abscess: Oral: 2 g once daily for 3 to 5 days.
Bacterial vaginosis
Oral: 1 g once daily for 5 days or 2 g once daily for 2 days
Giardiasis: Children >3 years and Adolescents: Oral: 50 mg/kg as a single dose; maximum dose: 2,000 mg
Helicobacter pylori eradication: Oral:
Concomitant regimen: 500 mg twice daily in combination with clarithromycin 500 mg twice daily, amoxicillin 1 g twice daily, and a standard-dose proton pump inhibitor twice daily; continue regimen for 10 to 14 days.
Trichomoniasis: Adolescents: Oral: 2,000 mg as a single dose
  ''',
  '''
Dosing: Pediatric
Infants ≥6 months, Children, and Adolescents: Oral: 10 mg/kg/day in divided doses every 12 hours for 10 days; maximum daily dose: 400 mg/day
Pneumocystis jirovecii pneumonia (PCP), treatment: Children and Adolescents: Oral: 15 mg/kg/day in 3 divided doses for 21 days; in combination with dapsone

Dosing: Adult
Acne vulgaris: Oral: 100 mg 3 times daily or 300 mg twice daily 
Pneumocystis pneumonia, treatment (mild to moderate infection) : Oral: 5 mg/kg every 8 hours in combination with dapsone for 21 days
  '''
];

class DrugBox {
  final String name;
  final String description;
  const DrugBox(this.name, this.description);
}

class AccessScreen extends StatefulWidget {
  AccessScreen({Key? key}) : super(key: key);

  @override
  _AccessScreenState createState() => _AccessScreenState();
}

class _AccessScreenState extends State<AccessScreen> {
  TextEditingController editingController = TextEditingController();
  final accessdrugboxes = List.generate(access_drugs.length,
      (index) => DrugBox(access_drugs[index], access_descriptions[index]));
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Access Antibiotics'),
      ),
      body: Container(
        child: Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                onChanged: (value) {
                  setState(() {});
                },
                controller: editingController,
                decoration: InputDecoration(
                    labelText: "Search",
                    hintText: "Search",
                    prefixIcon: Icon(Icons.search),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(25.0)))),
              ),
            ),
            Expanded(
              child: ListView.builder(
                  shrinkWrap: true,
                  itemCount: accessdrugboxes.length,
                  itemBuilder: (context, index) {
                    if (editingController.text.isEmpty) {
                      return ListTile(
                        title: Text('${accessdrugboxes[index].name}'),
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => DetailScreen(
                                      drugbox: accessdrugboxes[index])));
                        },
                      );
                    } else if (accessdrugboxes[index]
                        .name
                        .toLowerCase()
                        .contains(editingController.text)) {
                      return ListTile(
                        title: Text('${accessdrugboxes[index].name}'),
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => DetailScreen(
                                      drugbox: accessdrugboxes[index])));
                        },
                      );
                    } else {
                      return Container();
                    }
                  }),
            ),
          ],
        ),
      ),
    );
  }
}

class DetailScreen extends StatelessWidget {
  const DetailScreen({Key? key, required this.drugbox}) : super(key: key);
  final DrugBox drugbox;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(drugbox.name),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Text(drugbox.description),
      ),
    );
  }
}

final watch_drugs = [
  'Arbekacin',
  'Aspoxicillin',
  'Azithromycin',
  'Azlocillin',
  'Bekanamycin',
  'Biapenem',
  'Carbenicillin',
  'Carindacillin',
  'Cefaclor',
  'Cefamandole',
  'Cefbuperazone',
  'Cefcapene-pivoxil',
  'Cefdinir',
  'Cefditoren',
  'Cefepime',
  'Cefetamet',
  'Cefixime',
  'Cefmenoxime',
  'Cefmetazole',
  'Cefminox',
  'Cefodizime',
  'Cefonicid',
  'Cefoperazone',
  'Ceforanide',
  'Cefoselis',
  'Cefotaxime',
  'Cefotetan',
  'Cefotiam',
  'Cefoxitin',
  'Cefozopran',
  'Cefpiramide',
  'Cefpirome',
  'Cefpodoxime-proxetil',
  'Cefprozil',
  'Cefsulodin',
  'Ceftazidime',
  'Cefteram-pivoxil',
  'Ceftibuten',
  'Ceftizoxime',
  'Ceftriaxone',
  'Cefuroxime',
  'Chlortetracycline',
  'Cinoxacin',
  'Ciprofloxacin',
  'Clarithromycin',
  'Clofoctol',
  'Clomocycline',
  'Delafloxacin',
  'Demeclocycline',
  'Dibekacin',
  'Dirithromycin',
  'Doripenem',
  'Enoxacin',
  'Ertapenem',
  'Erythromycin',
  'Fidaxomicin',
  'Fleroxacin',
  'Flomoxef',
  'Flumequine',
  'Flurithromycin',
  'Fosfomycin_oral',
  'Fusidic-acid',
  'Garenoxacin',
  'Gatifloxacin',
  'Gemifloxacin',
  'Grepafloxacin',
  'Imipenem/cilastatin',
  'Isepamicin',
  'Josamycin',
  'Kanamycin_IV',
  'Kanamycin_oral',
  'Lascufloxacin',
  'Latamoxef',
  'Levofloxacin',
  'Levonadifloxacin',
  'Lincomycin',
  'Lomefloxacin',
  'Loracarbef',
  'Lymecycline',
  'Meropenem',
  'Metacycline',
  'Mezlocillin',
  'Micronomicin',
  'Midecamycin',
  'Minocycline_oral',
  'Miocamycin',
  'Moxifloxacin',
  'Nemonoxacin',
  'Neomycin_IV',
  'Neomycin_oral',
  'Netilmicin',
  'Norfloxacin',
  'Ofloxacin',
  'Oleandomycin',
  'Oxolinic-acid',
  'Oxytetracycline',
  'Panipenem',
  'Pazufloxacin',
  'Pefloxacin',
  'Penimepicycline',
  'Pheneticillin',
  'Pipemidic-acid',
  'Piperacillin',
  'Piperacillin/tazobactam',
  'Piromidic-acid',
  'Pristinamycin',
  'Prulifloxacin',
  'Ribostamycin',
  'Rifabutin',
  'Rifampicin',
  'Rifamycin_IV',
  'Rifamycin_oral',
  'Rifaximin',
  'Rokitamycin',
  'Rolitetracycline',
  'Rosoxacin',
  'Roxithromycin',
  'Rufloxacin',
  'Sarecycline',
  'Sisomicin',
  'Sitafloxacin',
  'Solithromycin',
  'Sparfloxacin',
  'Spiramycin',
  'Spiramycin/metronidazole',
  'Streptoduocin',
  'Streptomycin_IV',
  'Streptomycin_oral',
  'Sulbenicillin',
  'Tazobactam',
  'Tebipenem',
  'Teicoplanin',
  'Telithromycin',
  'Temafloxacin',
  'Temocillin',
  'Ticarcillin',
  'Tobramycin',
  'Tosufloxacin',
  'Troleandomycin',
  'Trovafloxacin',
  'Vancomycin_IV',
  'Vancomycin_oral'
];

final watch_descriptions = [
  '''
Dosing: Pediatric
Recommended initial dosing regimens were 5 mg/kg every 48 hours for preterm infants (postnatal age was within 28 days), 5 mg/kg every 24 hours for preterm infants (postnatal age was 28 days or more), and 4 mg/kg every 24 hours for term infants

Dosing: Adult
For MRSA
200mg/dose once daily
''',
  '''
No relevant information available
  ''',
  '''
Dosing: Pediatric
Oral: 5 to 12 mg/kg/dose;  10 to 12 mg/kg/dose on day 1 followed by 5 to 6 mg/kg once daily 
or 10 mg/kg/day for 3- 5 days
IV: 10 mg/kg once daily; maximum dose: 500 mg/dose
Cystic fibrosis : Children ≥6 years: Oral: 18 to 35.9 kg: 250 mg three times weekly (Monday, Wednesday, Friday), ≥36 kg: 500 mg three times weekly (Monday, Wednesday, Friday)

Dosing: Adult
usual dose: Oral  500 mg on day 1 and 250 mg once daily on days 2 to 5  or 500 mg once daily for 3 days
Cystic Fibrosis: Oral: 250 mg (<40 kg) or 500 mg (≥40 kg) 3 times weekly
  ''',
  '''
Dosing: Pediatric
75 mg/kg tid. 

Infants 7 days-1 yr: 100 mg/kg 8 hourly. 
Neonates <7 days: 100 mg/kg 12 hourly.
Premature infants: 50 mg/kg  12 hourly 

Dosing: Adult
2 g 8 hourly (Serious  infections: 5 g  8 hourly)
  ''',
  '''
No relevant information available
  ''',
  '''
No relevant information available
  ''',
  '''
Dosing: Adults
Urinary tract infections: 382-764 mg every 6 hr.
  ''',
  '''
No relevant information available
  ''',
  '''
Dosing: Pediatric
Usual dose: Oral: 20 to 40 mg/kg/day divided every 8 to 12 hours. Maximum daily dose: 1,500 mg/day

Dosing: Adult
Usual dose: Oral:
Immediate release: 250 to 500 mg every 8 hours.
(Extended release: 500 mg every 12 hours)
  ''',
  '''
Dosing: Pediatric
>1 mth: 50-100 mg/kg/day in divided doses; up to 150 mg/kg/day 

Dosing: Adult
0.5-2 g every 4-8 hr depending on severity of the infection IM/ IV.
 over 3-5 minutes or by intermittent or continuous infusion
Surgical Prophylaxis: 1 or 2 g IV or IM, given 30-60 minutes before surgical incision followed by 1 or 2 g every 6 hr for 24-48 hr
  ''',
  '''
No relevant information available
  ''',
  '''
No relevant information available
  ''',
  '''
Dosing: Pediatric
usual: : Oral: 14 mg/kg/day in divided doses every 12 to 24 hours; maximum daily dose: 600 mg/day

Dosing: Adult
oral : 300 mg twice daily or 600 mg once daily for 3 to 7 days
  ''',
  '''
Dosing: Pediatric 
General : Oral: 4 to 6 mg/kg/dose twice daily for 14 day; reported maximum daily dose: 400 mg/day

Dosing: Adult
Usual dose: 200 to 400mg twice daily
  ''',
  '''
Dosing: Pediatric 
usual : IM, IV: 50 mg/kg/dose every 12 hours; maximum dose: 2,000 mg/dose (cystic fibrosis, febrile neutropenia, meningitis - 50 mg/kg/dose 8 hourly)

Dosing: Adults
usual dose: IV: 1 to 2 g every 8 to 12 hours. For coverage of serious Pseudomonas aeruginosa infections: 2 g every 8 hours
  ''',
  '''
Dosing: Adult
500mg bid
  ''',
  '''
Dosing: Pediatric
usual: Oral: 8 mg/kg/day once daily or in divided doses every 12 hours; maximum daily dose: 400 mg/day
Typhoid : Oral: 15 to 20 mg/kg/day in divided doses every 12 hours for 7 to 14 days

Dosing: Adult
Usual dose: Oral: 400 mg daily divided every 12 to 24 hours.
  ''',
  '''
Dosing: Pediatric (IV) : 40-80 mg/kg/day in 2-4 divided doses, higher doses may be used in severe infections. Neonates: 40-60 mg/kg/day in 2-3 divided doses
Dosing: Adult
(IV)1-4 g daily IM/IV by Inj or infusion in 2-4 divided doses, up to 9 g daily
  ''',
  '''
Dosing: Adult
0.5-1 g via IM inj every 12 hr or slow IV inj over 3-5 minutes.
Severe infections: 3-4 g daily in divided doses every 6-8 hrs
  ''',
  '''
No relevant information available
  ''',
  '''
Dosing: Adult
usual dose : 1-2 g every 12 or 24 hr via IM or IV infusion. Up to 4 g/day
  ''',
  '''
No relevant information available
  ''',
  '''
Dosing: Adult
1-2g every 12 hrs
  ''',
  '''
No relevant information available
  ''',
  '''
Will be updated later
  ''',
  '''
Dosing: Neonatal
usual dose: 50mg/kg/dose 12 hourly to 6th hourly depending on weight and gestational age 
Meningitis: 
Post natal  ≤7 days and ≥2 kg: 100 to 150 mg/kg/day divided every 8 to 12 hours
Post natal  >7 days and ≥2 kg: 150 to 200 mg/kg/day divided every 6 to 8 hours

Dosing: Pediatric 
IM, IV: 150 to 180 mg/kg/day in divided doses every 8 hours; maximum daily dose: 8g/day
Meningitis: 225 to 300 mg/kg/day divided every 6 to 8 hours; maximum dose: 2,000 mg/dose

Dosing: Adult
usual dose: IV: 2 g every 6 to 8 hours for 5 to 7 days
Meningitis: IV: 2 g every 4 to 6 hours
  ''',
  '''
Dosing: Pediatric
IM, IV: 30 to 50 mg/kg/dose every 12 hours; maximum dose: 3,000 mg/dose

Dosing: Adult
IM, IV: 1 to 2 g every 12 hours (maximum dose/day: IV: 6 g/day; IM: 4 g/day)
  ''',
  '''
Dosing: Adult
General Dose
Oral: 200-400mg bid
  ''',
  '''
Dosing: Pediatric
Mild to moderate infection: 80 mg/kg/day divided every 6 to 8 hours; maximum daily dose: 4,000 mg/day
Severe infection: 160 mg/kg/day divided every 6 hours; maximum daily dose: 12g/day

Dosing: Adult
IV: 1 to 2 g every 6 to 8 hours.
  ''',
  '''
No relevant information available
  ''',
  '''
Dosing: Adult
1-2 g daily in 2 divided doses by injection/infusion.
  ''',
  '''
Dosing: Adult
IV: 1 to 2 g every 12 hours
  ''',
  '''
Dosing: Pediatric
usual dose- children <12 yrs :  5mg/kg/dose 12 hourly (Children ≥12 years : 200 mg every 12 hours 

Dosing: Adult
usual dose: 200 mg 12 hourly
  ''',
  '''
Dosing: Pediatric
usual dose: oral:  7.5 to 15 mg/kg/dose twice daily; maximum dose: 500 mg

Dosing: Adult 
usual dose : 500 mg 12 hourly (250 mg 12 hourly for minor skin infections)
  ''',
  '''
Dosing: Pediatric
Usual dose: (IV)100 mg/kg daily; for less severe infections: 50 mg/kg daily

Dosing: Adult
Usual dose: (IV) 6 g daily in 4 divided doses; for less severe infections: 3-4 g daily
  ''',
  '''
Dosing: Neonatal
50 mg/kg/dose every 8- 12 hours ( as per gestational age & weight) 

Dosing: Pediatric
usual dose : 90 to 150 mg/kg/day- 3 divided dose  ; maximum dose: 6g/day
severe infections 200-300 mg/ kg / day in 3 divided doses (Max 12 gm/day)

Dosing: Adult
Usual dose: 1-2 gm every 8 hours as 30 mt infusion. 
Continuous IV infusion:6 g infused over 24 hours ( first dose of 2 g over 30 minutes)
  ''',
  '''
No relevant information available
  ''',
  '''
Dosing: Pediatric
usual dose: Oral: 9 mg/kg/dose once daily; maximum dose: 400 mg/dose (Children ≥12 yrs: 400 mg once daily for 10 days)

Dosing: Adult
400mg once daily for 10 days
  ''',
  '''
Dosing: Pediatric
usual dose: ≥6 mth 50 mg/kg 6-8 hrly

Dosing: Adult
severe infection: 1-2 g 8-12 hrly  deep IM or slow IV inj over 3-5 min, can be increased to 2-4 g IV 8 hr. Max: 2 g 4 hrly.
  ''',
  '''
Dosing: Pediatric
usual dose IM, IV: 50 to 75 mg/kg/dose every 24 hours; maximum dose: 1,000 mg/dose
Meningitis : IV: 100 mg/kg/day divided every 12 to 24 hours; maximum daily dose: 4,000 mg/day
Typhoid : 75-80 mg kg / every 24hrs 
pneumonia : 75-100 mg/kg divided every  12 - 24 hr
shigellosis : 50 - 100 mg kg every 24 hrs 

Dosing: Adult
usual dose:  2 gm once daily or 1 gm 12 hourly
Meningitis : 2 gm 12 hourly
  ''',
  '''
Dosing: Pediatric 
usual dose: Mild to moderate infection:
Oral: 20 to 30 mg/kg/day in 2 divided doses ; max: 500 mg/dose.
IM, IV: 75 to 100 mg/kg/day in 3 divided doses; max: 1,500 mg/dose.
Severe infection: IM, IV: 100 to 200 mg/kg/day in  3-4  divided doses; max: 1,500 mg/dose

Dosing: Adult
usual : oral: 250 to 500 mg twice daily for 3 to 7 days
IV : 1.5gm every 8 hours
  ''',
  '''
Dosing: Pediatric
usual dose : Children ≥8 years : Oral: 6.25 to 12.5 mg/kg/dose 4 times daily; maximum dose: 500 mg/dose

Dosing: Adult
Oral: 250 to 500 mg 4 times daily or 500 mg twice daily.
  ''',
  '''
Dosing: Adult
Usual dose:  500 mg bid. Prophylaxis: 500 mg daily at bedtime as a single dose.
  ''',
  '''
Dosing: Pediatric 
Mild to moderate infections: Oral: 10 mg/kg/dose twice daily; maximum dose: 500 mg/dose.
Severe infections: Oral: 15 to 20 mg/kg/dose twice daily; maximum dose: 750 mg/dose.
IV: 10 mg/kg/dose every 8 to 12 hours; maximum dose: 400 mg/dose

Dosing: Adult
oral:  500 - 750 mg 12 hourly
lV : 400 mg 12 hourly
  ''',
  '''
Dosing: Pediatric
usual dose: Oral: 7.5 mg/kg/dose every 12 hours; maximum dose: 500 mg/dose

Dosing: Adult
500mg every 12 hours
  ''',
  '''
Dosing: Adult
Rectal:750 mg bid.
  ''',
  '''
No relevant information available 
  ''',
  '''
Dosing: Pediatric
Children ≥8 years and Adolescents: Oral: 7 to 13 mg/kg/day divided 6 to 12 hourly; max dose: 600 mg/day

Dosing: Adult
Oral: 450 mg every 12 hours.
IV: 300 mg every 12 hours.
  ''',
  '''
Dosing: Pediatric
Children ≥8 years and Adolescents: usual dose: Oral: 7 to 13 mg/kg/day divided 6 to 12 hourly; max dose: 600 mg/day
 
Dosing: Adult
Usual dose: Oral: 150 mg 4 times daily or 300 mg twice daily.
  ''',
  '''
Dosing: Adult
Usual dose: IV: 1-3 mg/kg daily in divided doses
  ''',
  '''
Dosing: Adult
Oral: 500 mg once daily as enteric-coated tablets
  ''',
  '''
Dosing: Adult
IV: 500 mg every 8 hours
  ''',
  '''
Dosing: Adult
oral : 200-400 mg bid
  ''',
  '''
Dosing: Pediatric
Usual dose: IM, IV: 15 mg/kg/dose twice daily; maximum dose: 500 mg/dose

Dosing: Adult
IV: 1 g once daily
  ''',
  '''
Dosing: Pediatric
Oral: 30 to 50 mg/kg/day divided every 6 to 8 hours usually; for severe infection may double dose; maximum daily dose: Mild to moderate infection: 2,000 mg/day; severe infection: 4,000 mg/day
IV: 15 to 20 mg/kg/day divided every 6 hours; maximum daily dose: 4,000 mg/day
Pertussis 
Pertussis: Infants & young children: Oral: 10 mg/kg/dose 4 times daily for 14 days

Dosing: Adult
Base or stearate: 250 to 500 mg every 6 to 12 hours; maximum: 4 g daily.
(Ethylsuccinate: 400 to 800 mg every 6 to 12 hours; maximum: 4 g daily)

IV: 15 to 20 mg/kg/day divided every 6 hours or 500 mg to 1 g every 6 hours; maximum: 4 g daily.
  ''',
  '''
Dosing: Pediatric
Infants ≥6 months and Children: Oral: 16 mg/kg/dose twice daily for 10 days; maximum dose: 200 mg/dose 

Dosing: Adult
Oral: 200 mg twice daily for 10 days
  ''',
  '''
No relevant information available
  ''',
  '''
Dosing: Adults
IV: 1 to 4 g/day in 2 to 4 divided doses
  ''',
  '''
No relevant information available
  ''',
  '''
No relevant information available
  ''',
  '''
  Fosfomycin_oral
  ''',
  '''
  Fusidic-acid
  ''',
  '''
  Garenoxacin
  ''',
  '''
  Gatifloxacin
  ''',
  '''
  Gemifloxacin
  ''',
  '''
  Grepafloxacin
  ''',
  '''
  Imipenem/cilastatin
  ''',
  '''
  Isepamicin
  ''',
  '''
  Josamycin
  ''',
  '''
  Kanamycin_IV
  ''',
  '''
  Kanamycin_oral
  ''',
  '''
  Lascufloxacin
  ''',
  '''
  Latamoxef
  ''',
  '''
  Levofloxacin
  ''',
  '''
  Levonadifloxacin
  ''',
  '''
  Lincomycin
  ''',
  '''
  Lomefloxacin
  ''',
  '''
  Loracarbef
  ''',
  '''
  Lymecycline
  ''',
  '''
  Meropenem
  ''',
  '''
  Metacycline
  ''',
  '''
  Mezlocillin
  ''',
  '''
  Micronomicin
  ''',
  '''
  Midecamycin
  ''',
  '''
  Minocycline_oral
  ''',
  '''
  Miocamycin
  ''',
  '''
  Moxifloxacin
  ''',
  '''
  Nemonoxacin
  ''',
  '''
  Neomycin_IV
  ''',
  '''
  Neomycin_oral
  ''',
  '''
  Netilmicin
  ''',
  '''
  Norfloxacin
  ''',
  '''
  Ofloxacin
  ''',
  '''
  Oleandomycin
  ''',
  '''
  Oxolinic-acid
  ''',
  '''
  Oxytetracycline
  ''',
  '''
  Panipenem
  ''',
  '''
  Pazufloxacin
  ''',
  '''
  Pefloxacin
  ''',
  '''
  Penimepicycline
  ''',
  '''
  Pheneticillin
  ''',
  '''
  Pipemidic-acid
  ''',
  '''
  Piperacillin
  ''',
  '''
  Piperacillin/tazobactam
  ''',
  '''
  Piromidic-acid
  ''',
  '''
  Pristinamycin
  ''',
  '''
  Prulifloxacin
  ''',
  '''
  Ribostamycin
  ''',
  '''
  Rifabutin
  ''',
  '''
  Rifampicin
  ''',
  '''
  Rifamycin_IV
  ''',
  '''
  Rifamycin_oral
  ''',
  '''
  Rifaximin
  ''',
  '''
  Rokitamycin
  ''',
  '''
  Rolitetracycline
  ''',
  '''
  Rosoxacin
  ''',
  '''
  Roxithromycin
  ''',
  '''
  Rufloxacin
  ''',
  '''
  Sarecycline
  ''',
  '''
  Sisomicin
  ''',
  '''
  Sitafloxacin
  ''',
  '''
  Solithromycin
  ''',
  '''
  Sparfloxacin
  ''',
  '''
  Spiramycin
  ''',
  '''
  Spiramycin/metronidazole
  ''',
  '''
  Streptoduocin
  ''',
  '''
  Streptomycin_IV
  ''',
  '''
  Streptomycin_oral
  ''',
  '''
  Sulbenicillin
  ''',
  '''
  Tazobactam
  ''',
  '''
  Tebipenem
  ''',
  '''
  Teicoplanin
  ''',
  '''
  Telithromycin
  ''',
  '''
  Temafloxacin
  ''',
  '''
  Temocillin
  ''',
  '''
  Ticarcillin
  ''',
  '''
  Tobramycin
  ''',
  '''
  Tosufloxacin
  ''',
  '''
  Troleandomycin
  ''',
  '''
  Trovafloxacin
  ''',
  '''
  Vancomycin_IV
  ''',
  '''
  Vancomycin_oral
  '''
];

class WatchScreen extends StatefulWidget {
  WatchScreen({Key? key}) : super(key: key);

  @override
  _WatchScreenState createState() => _WatchScreenState();
}

class _WatchScreenState extends State<WatchScreen> {
  TextEditingController editingController = TextEditingController();
  final watchdrugboxes = List.generate(watch_drugs.length,
      (index) => DrugBox(watch_drugs[index], watch_descriptions[index]));
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Watch Antibiotics'),
      ),
      body: Container(
        child: Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                onChanged: (value) {
                  setState(() {});
                },
                controller: editingController,
                decoration: InputDecoration(
                    labelText: "Search",
                    hintText: "Search",
                    prefixIcon: Icon(Icons.search),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(25.0)))),
              ),
            ),
            Expanded(
              child: ListView.builder(
                  shrinkWrap: true,
                  itemCount: watchdrugboxes.length,
                  itemBuilder: (context, index) {
                    if (editingController.text.isEmpty) {
                      return ListTile(
                        title: Text('${watchdrugboxes[index].name}'),
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => DetailScreen(
                                      drugbox: watchdrugboxes[index])));
                        },
                      );
                    } else if (watchdrugboxes[index]
                        .name
                        .toLowerCase()
                        .contains(editingController.text)) {
                      return ListTile(
                        title: Text('${watchdrugboxes[index].name}'),
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => DetailScreen(
                                      drugbox: watchdrugboxes[index])));
                        },
                      );
                    } else {
                      return Container();
                    }
                  }),
            ),
          ],
        ),
      ),
    );
  }
}

final reserve_drugs = [
  'Aztreonam',
  'Carumonam',
  'Cefiderocol',
  'Ceftaroline-fosamil',
  'Ceftazidime/avibactam',
  'Ceftobiprole-medocaril',
  'Ceftolozane/tazobactam',
  'Colistin_IV',
  'Colistin_oral',
  'Dalbavancin',
  'Dalfopristin/quinupristin',
  'Daptomycin',
  'Eravacycline',
  'Faropenem',
  'Fosfomycin_IV',
  'Iclaprim',
  'Imipenem/cilastatin/relebactam',
  'Lefamulin',
  'Linezolid',
  'Meropenem/vaborbactam',
  'Minocycline_IV',
  'Omadacycline',
  'Oritavancin',
  'Plazomicin',
  'Polymyxin-B_IV',
  'Polymyxin-B_oral',
  'Tedizolid',
  'Telavancin',
  'Tigecycline'
];

final reserve_descriptions = [
  '''
  Aztreonam
  ''',
  '''
  Carumonam
  ''',
  '''
  Cefiderocol
  ''',
  '''
  Ceftaroline-fosamil
  ''',
  '''
  Ceftazidime/avibactam
  ''',
  '''
  Ceftobiprole-medocaril
  ''',
  '''
  Ceftolozane/tazobactam
  ''',
  '''
  Colistin_IV
  ''',
  '''
  Colistin_oral
  ''',
  '''
  Dalbavancin
  ''',
  '''
  Dalfopristin/quinupristin
  ''',
  '''
  Daptomycin
  ''',
  '''
  Eravacycline
  ''',
  '''
  Faropenem
  ''',
  '''
  Fosfomycin_IV
  ''',
  '''
  Iclaprim
  ''',
  '''
  Imipenem/cilastatin/relebactam
  ''',
  '''
  Lefamulin
  ''',
  '''
  Linezolid
  ''',
  '''
  Meropenem/vaborbactam
  ''',
  '''
  Minocycline_IV
  ''',
  '''
  Omadacycline
  ''',
  '''
  Oritavancin
  ''',
  '''
  Plazomicin
  ''',
  '''
  Polymyxin-B_IV
  ''',
  '''
  Polymyxin-B_oral
  ''',
  '''
  Tedizolid
  ''',
  '''
  Telavancin
  ''',
  '''
  Tigecycline'''
];

class ReserveScreen extends StatefulWidget {
  ReserveScreen({Key? key}) : super(key: key);

  @override
  _ReserveScreenState createState() => _ReserveScreenState();
}

class _ReserveScreenState extends State<ReserveScreen> {
  TextEditingController editingController = TextEditingController();
  final reservedrugboxes = List.generate(reserve_drugs.length,
      (index) => DrugBox(reserve_drugs[index], reserve_descriptions[index]));
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Reserve Antibiotics'),
      ),
      body: Container(
        child: Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                onChanged: (value) {
                  setState(() {});
                },
                controller: editingController,
                decoration: InputDecoration(
                    labelText: "Search",
                    hintText: "Search",
                    prefixIcon: Icon(Icons.search),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(25.0)))),
              ),
            ),
            Expanded(
              child: ListView.builder(
                  shrinkWrap: true,
                  itemCount: reservedrugboxes.length,
                  itemBuilder: (context, index) {
                    if (editingController.text.isEmpty) {
                      return ListTile(
                        title: Text('${reservedrugboxes[index].name}'),
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => DetailScreen(
                                      drugbox: reservedrugboxes[index])));
                        },
                      );
                    } else if (reservedrugboxes[index]
                        .name
                        .toLowerCase()
                        .contains(editingController.text)) {
                      return ListTile(
                        title: Text('${reservedrugboxes[index].name}'),
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => DetailScreen(
                                      drugbox: reservedrugboxes[index])));
                        },
                      );
                    } else {
                      return Container();
                    }
                  }),
            ),
          ],
        ),
      ),
    );
  }
}
