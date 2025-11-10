# PowerShell script to translate index.html to English
$sourcePath = "h:\Meine Ablage\Arbeit\RP-Intelligence\00_General\Website\RP-Intelligence Website\RP-intelligence-Website\index.html"
$targetPath = "h:\Meine Ablage\Arbeit\RP-Intelligence\00_General\Website\RP-Intelligence Website\RP-intelligence-Website\en\index.html"

# Read source file
$content = Get-Content $sourcePath -Raw -Encoding UTF8

# HTML lang attribute
$content = $content -replace '<html lang="de">', '<html lang="en">'

# Meta tags and URLs
$content = $content -replace 'München, Deutschland', 'Munich, Germany'
$content = $content -replace 'Mittelstand', 'SMEs'
$content = $content -replace 'KI-Beratung', 'AI Consulting'
$content = $content -replace 'Automatisierung', 'Automation'
$content = $content -replace 'href="https://www.rp-intelligence.de/"', 'href="https://www.rp-intelligence.de/en/"'
$content = $content -replace 'Professionelle KI-Lösungen & Implementierung für KMU', 'Professional AI Solutions & Implementation for SMEs'
$content = $content -replace 'Ihr Reliable Partner for intelligent AI-Solutions', 'Your Reliable Partner for intelligent AI-Solutions'
$content = $content -replace 'von Strategie bis Implementierung', 'from strategy to implementation'

# Navigation
$content = $content -replace '>Gründer<', '>Founder<'
$content = $content -replace '>Leistungen<', '>Services<'
$content = $content -replace '>Arbeitsweise<', '>Approach<'
$content = $content -replace '>Referenzen<', '>References<'
$content = $content -replace '>Skills<', '>Skills<'
$content = $content -replace '>Kontakt<', '>Contact<'

# Hero section
$content = $content -replace 'Zuverlässiger Partner für intelligente IT-Lösungen', 'Reliable Partner for Intelligent IT Solutions'
$content = $content -replace 'Lassen Sie uns sprechen', 'Let''s talk'
$content = $content -replace 'Wir bieten professionelle IT-Beratung', 'We offer professional IT consulting'

# About section
$content = $content -replace 'Expertise', 'Expertise'
$content = $content -replace 'Zertifizierungen', 'Certifications'
$content = $content -replace 'LinkedIn Profil', 'LinkedIn Profile'

# Vision & Mission
$content = $content -replace 'Vision & Mission', 'Vision & Mission'
$content = $content -replace 'Technologie menschenzentriert gestalten', 'Designing technology in a human-centered way'
$content = $content -replace 'für nachhaltigen Erfolg', 'for sustainable success'

# Services section
$content = $content -replace 'Maßgeschneiderte Lösungen für die digitale Transformation', 'Tailored solutions for digital transformation'
$content = $content -replace 'Strategie-Consulting', 'Strategy Consulting'
$content = $content -replace 'Implementierung & Umsetzung', 'Implementation & Execution'
$content = $content -replace 'Training & Workshops', 'Training & Workshops'
$content = $content -replace 'Beratungsgespräch vereinbaren', 'Schedule a consultation'
$content = $content -replace 'Implementierungsberatung anfragen', 'Request implementation consulting'
$content = $content -replace 'Trainingsangebot anfordern', 'Request training offer'

# Approach section
$content = $content -replace 'Arbeitsweise – Ihr Vorteil', 'Approach – Your Advantage'
$content = $content -replace 'Innovative Lösungen', 'Innovative Solutions'
$content = $content -replace 'Empowerment im Fokus', 'Empowerment in Focus'
$content = $content -replace 'Partnerschaftlich & Transparent', 'Partnership & Transparent'
$content = $content -replace 'Messbarer Erfolg', 'Measurable Success'

# References section
$content = $content -replace 'Ausgewählte Projekterfahrungen', 'Selected Project Experiences'
$content = $content -replace 'Unternehmenstransformationen durch innovative Technologielösungen', 'Company transformations through innovative technology solutions'
$content = $content -replace 'Schlüsselrollen & Verantwortlichkeiten:', 'Key Roles & Responsibilities:'
$content = $content -replace 'Herausforderung:', 'Challenge:'
$content = $content -replace 'Lösungsansätze:', 'Solutions:'
$content = $content -replace 'Details anzeigen', 'View details'

# Skills section
$content = $content -replace 'Kernkompetenzen & Technologien', 'Core Competencies & Technologies'
$content = $content -replace 'Cloud & Plattformen', 'Cloud & Platforms'
$content = $content -replace 'KI & Automatisierung', 'AI & Automation'
$content = $content -replace 'Methoden & Management', 'Methods & Management'
$content = $content -replace 'Weitere Technologien & Expertise', 'Additional Technologies & Expertise'

# Contact section
$content = $content -replace 'Kontaktdaten', 'Contact Details'
$content = $content -replace 'E-Mail', 'Email'
$content = $content -replace 'Telefon', 'Phone'
$content = $content -replace 'Social Media & Termin', 'Social Media & Appointment'
$content = $content -replace 'Termin vereinbaren', 'Schedule appointment'

# Footer
$content = $content -replace 'Alle Rechte vorbehalten', 'All rights reserved'
$content = $content -replace 'Impressum', 'Imprint'
$content = $content -replace 'Datenschutzerklärung', 'Privacy Policy'

# Fix image paths (add ../)
$content = $content -replace 'href="images/', 'href="../images/'
$content = $content -replace 'src="images/', 'src="../images/'

# Save translated file
Set-Content $targetPath -Value $content -Encoding UTF8

Write-Host "English translation completed: $targetPath"
