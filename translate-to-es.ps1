# PowerShell script to translate index.html to Spanish
$sourcePath = "h:\Meine Ablage\Arbeit\RP-Intelligence\00_General\Website\RP-Intelligence Website\RP-intelligence-Website\index.html"
$targetPath = "h:\Meine Ablage\Arbeit\RP-Intelligence\00_General\Website\RP-Intelligence Website\RP-intelligence-Website\es\index.html"

# Read source file
$content = Get-Content $sourcePath -Raw -Encoding UTF8

# HTML lang attribute
$content = $content -replace '<html lang="de">', '<html lang="es">'

# Meta tags and URLs
$content = $content -replace 'München, Deutschland', 'Múnich, Alemania'
$content = $content -replace 'Mittelstand', 'PYMEs'
$content = $content -replace 'KI-Beratung', 'Consultoría de IA'
$content = $content -replace 'Automatisierung', 'Automatización'
$content = $content -replace 'href="https://www.rp-intelligence.de/"', 'href="https://www.rp-intelligence.de/es/"'
$content = $content -replace 'Professionelle KI-Lösungen & Implementierung für KMU', 'Soluciones de IA Profesionales e Implementación para PYMEs'
$content = $content -replace 'Ihr Reliable Partner for intelligent AI-Solutions', 'Su Socio Confiable para Soluciones de IA Inteligentes'
$content = $content -replace 'von Strategie bis Implementierung', 'desde estrategia hasta implementación'

# Navigation
$content = $content -replace '>Gründer<', '>Fundador<'
$content = $content -replace '>Leistungen<', '>Servicios<'
$content = $content -replace '>Arbeitsweise<', '>Enfoque<'
$content = $content -replace '>Referenzen<', '>Referencias<'
$content = $content -replace '>Skills<', '>Habilidades<'
$content = $content -replace '>Kontakt<', '>Contacto<'

# Hero section
$content = $content -replace 'Zuverlässiger Partner für intelligente IT-Lösungen', 'Socio Confiable para Soluciones de TI Inteligentes'
$content = $content -replace 'Lassen Sie uns sprechen', 'Hablemos'
$content = $content -replace 'Wir bieten professionelle IT-Beratung', 'Ofrecemos consultoría de TI profesional'

# About section
$content = $content -replace 'Expertise', 'Experiencia'
$content = $content -replace 'Zertifizierungen', 'Certificaciones'
$content = $content -replace 'LinkedIn Profil', 'Perfil de LinkedIn'

# Vision & Mission
$content = $content -replace 'Vision & Mission', 'Visión y Misión'
$content = $content -replace 'Technologie menschenzentriert gestalten', 'Diseñando tecnología centrada en el ser humano'
$content = $content -replace 'für nachhaltigen Erfolg', 'para el éxito sostenible'

# Services section
$content = $content -replace 'Maßgeschneiderte Lösungen für die digitale Transformation', 'Soluciones a medida para la transformación digital'
$content = $content -replace 'Strategie-Consulting', 'Consultoría Estratégica'
$content = $content -replace 'Implementierung & Umsetzung', 'Implementación y Ejecución'
$content = $content -replace 'Training & Workshops', 'Entrenamiento y Talleres'
$content = $content -replace 'Beratungsgespräch vereinbaren', 'Programar una consulta'
$content = $content -replace 'Implementierungsberatung anfragen', 'Solicitar consultoría de implementación'
$content = $content -replace 'Trainingsangebot anfordern', 'Solicitar oferta de entrenamiento'

# Approach section
$content = $content -replace 'Arbeitsweise – Ihr Vorteil', 'Enfoque – Su Ventaja'
$content = $content -replace 'Innovative Lösungen', 'Soluciones Innovadoras'
$content = $content -replace 'Empowerment im Fokus', 'Empoderamiento en Foco'
$content = $content -replace 'Partnerschaftlich & Transparent', 'En Asociación y Transparente'
$content = $content -replace 'Messbarer Erfolg', 'Éxito Medible'

# References section
$content = $content -replace 'Ausgewählte Projekterfahrungen', 'Experiencias de Proyectos Seleccionadas'
$content = $content -replace 'Unternehmenstransformationen durch innovative Technologielösungen', 'Transformaciones de empresas a través de soluciones tecnológicas innovadoras'
$content = $content -replace 'Schlüsselrollen & Verantwortlichkeiten:', 'Roles Clave y Responsabilidades:'
$content = $content -replace 'Herausforderung:', 'Desafío:'
$content = $content -replace 'Lösungsansätze:', 'Soluciones:'
$content = $content -replace 'Details anzeigen', 'Ver detalles'

# Skills section
$content = $content -replace 'Kernkompetenzen & Technologien', 'Competencias Centrales y Tecnologías'
$content = $content -replace 'Cloud & Plattformen', 'Nube y Plataformas'
$content = $content -replace 'KI & Automatisierung', 'IA y Automatización'
$content = $content -replace 'Methoden & Management', 'Métodos y Gestión'
$content = $content -replace 'Weitere Technologien & Expertise', 'Tecnologías y Experiencia Adicionales'

# Contact section
$content = $content -replace 'Kontaktdaten', 'Datos de Contacto'
$content = $content -replace 'E-Mail', 'Correo electrónico'
$content = $content -replace 'Telefon', 'Teléfono'
$content = $content -replace 'Social Media & Termin', 'Redes Sociales y Cita'
$content = $content -replace 'Termin vereinbaren', 'Programar cita'

# Footer
$content = $content -replace 'Alle Rechte vorbehalten', 'Todos los derechos reservados'
$content = $content -replace 'Impressum', 'Aviso legal'
$content = $content -replace 'Datenschutzerklärung', 'Política de privacidad'

# Fix image paths (add ../)
$content = $content -replace 'href="images/', 'href="../images/'
$content = $content -replace 'src="images/', 'src="../images/'

# Save translated file
Set-Content $targetPath -Value $content -Encoding UTF8

Write-Host "Spanish translation completed: $targetPath"
