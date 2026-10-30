Profile: FRCDAClinicalDocumentIPS
Parent: FRCDAClinicalDocument
Id: fr-cda-clinical-document-ips
Title: "CDA - clinicalDocument IPS"
Description: "L'élément de l'en-tête CDA 'ClinicalDocument' est l’élément racine d’un document médical IPS (International Patient Summary)."

* templateId ^slicing.discriminator.type = #value
* templateId ^slicing.discriminator.path = "root"
* templateId ^slicing.rules = #open
* templateId contains conformiteSpecificationsHL7 1..1
and conformiteSpecificationsCISIS 1..1
and conformiteSpecificationsIHEPCCIPS 1..1
and conformiteVoletIPS 1..1
* templateId[conformiteSpecificationsHL7] 1..1
* templateId[conformiteSpecificationsHL7].root = "2.16.840.1.113883.2.8.2.1"
* templateId[conformiteSpecificationsHL7] ^short = "Conformité spécifications HL7 France"
* templateId[conformiteSpecificationsCISIS] 1..1
* templateId[conformiteSpecificationsCISIS].root = "1.2.250.1.213.1.1.1.1"
* templateId[conformiteSpecificationsCISIS] ^short = "Conformité spécifications au CI-SIS"
* templateId[conformiteSpecificationsIHEPCCIPS] 1..1
* templateId[conformiteSpecificationsIHEPCCIPS].root = "2.16.840.1.113883.10.22.1.1"
* templateId[conformiteSpecificationsIHEPCCIPS] ^short = "Conformité spécifications IHE PCC IPS"
* templateId[conformiteVoletIPS] 1..1
* templateId[conformiteVoletIPS].root = "1.2.250.1.213.1.1.1.51"
* templateId[conformiteVoletIPS].extension = "2024.01"
* templateId[conformiteVoletIPS] ^short = "Conformité au Volet de l'International Patient Summary fr (IPS-FR_2024.01)"

* code ^short = "Type de document : Synthèse Médicale (code LOINC 60591-5)."
* code.code = #60591-5
* code.codeSystem = "2.16.840.1.113883.6.1"
* code.codeSystemName = "LOINC"
* code.displayName = "Synthèse médicale"
* title ^short = "Titre du document : SYNTHESE MEDICALE."
* effectiveTime ^short = "Date de création du document Synthèse Médicale."
* documentationOf 1..1

* participant ^slicing.discriminator[0].type = #value
* participant ^slicing.discriminator[0].path = "functionCode.code"
* participant ^slicing.discriminator[+].type = #value
* participant ^slicing.discriminator[=].path = "typeCode"
* participant ^slicing.rules = #open
* participant contains medecinTraitant 0..1 and
contactEHPAD 0..1 and etabPreference 0..1 and etabReference 0..* and autrePS 0..* and autreCorrespondant 0..*
// médecin traitant
* participant[medecinTraitant] ^short = "Médecin traitant"
* participant[medecinTraitant].typeCode = #INF
* participant[medecinTraitant].functionCode.code = #PCP
* participant[medecinTraitant].functionCode.codeSystem = "2.16.840.1.113883.5.88"
// [DLU] Contact 24h/24h en EHPAD
* participant[contactEHPAD] ^short = "[DLU] Contact 24h/24h en EHPAD"
* participant[contactEHPAD].typeCode = #PRF
* participant[contactEHPAD].functionCode.code = #CORRE
* participant[contactEHPAD].functionCode.codeSystem = "1.2.250.1.213.1.1.4.2.280"
* participant[contactEHPAD].functionCode.originalText 0..1
// [DLU] Établissement de santé de préférence
* participant[etabPreference] ^short = "[DLU] Établissement de santé de préférence"
* participant[etabPreference].typeCode = #INF
* participant[etabPreference].functionCode.code = #ES-PREF
* participant[etabPreference].functionCode.codeSystem = "1.2.250.1.213.1.1.4.2.280"
// Établissement de santé de référence
* participant[etabReference] ^short = "Établissement de santé de référence"
* participant[etabReference].typeCode = #INF
* participant[etabReference].functionCode.code = #ES-REF
* participant[etabReference].functionCode.codeSystem = "1.2.250.1.213.1.1.4.2.280"
* participant[etabReference].functionCode.originalText 0..1
// Autre professionnel de santé
* participant[autrePS] ^short = "Autre professionnel de santé"
* participant[autrePS].typeCode = #PRF
* participant[autrePS].functionCode.code = #353
* participant[autrePS].functionCode.codeSystem = "1.2.250.1.213.1.6.1.107"
* participant[autrePS].functionCode.originalText 0..1
// Autre correspondant
* participant[autreCorrespondant] ^short = "Autre correspondant participant à la prise en charge ou au suivi du patient"
* participant[autreCorrespondant].typeCode = #CON
* participant[autreCorrespondant].functionCode.code = #CORRE
* participant[autreCorrespondant].functionCode.codeSystem = "1.2.250.1.213.1.1.4.2.280"
* participant[autreCorrespondant].functionCode.originalText 0..1

* component.structuredBody ^short = "Structure du document IPS."
* component.structuredBody.component ^short = "Composants contenant les sections du document IPS."
* component.structuredBody.component ^slicing.discriminator[0].type = #value
* component.structuredBody.component ^slicing.discriminator[0].path = "section.code.code"
* component.structuredBody.component ^slicing.rules = #open
* component.structuredBody.component ^slicing.ordered = false

* component.structuredBody.component contains
    sectionProblemesActifs 1..1 and
    sectionAntecedentsMedicaux 0..1 and
    sectionHistoriqueDesActes 1..1 and
    sectionAllergiesEtHypersensibilites 1..1 and
    sectionEffetsIndesirables 0..1 and
    sectionTraitements 1..1 and
    sectionDispositifsMedicaux 1..1 and
    sectionPointsDeVigilancesNonCode 0..1 and
    sectionStatutFonctionnel 0..1 and
    sectionSignesVitaux 0..1 and
    sectionHabitusModeDeVie 0..1 and
    sectionAntecedentFamiliaux 0..1 and
    sectionFacteursDeRisqueProfessionnelsNonCode 0..1 and
    sectionVaccinations 0..1 and
    sectionHistoriqueDesGrossesses 0..1 and
    sectionPlanDeSoins 0..1 and
    sectionDirectivesAnticipees 0..1 and
    sectionResultats 0..1 and
    sectionDocumentsAjoutes 0..1

* component.structuredBody.component[sectionProblemesActifs].section only FRCDASectionProblemesActifs
* component.structuredBody.component[sectionAntecedentsMedicaux].section only FRCDASectionAntecedentsMedicaux
* component.structuredBody.component[sectionHistoriqueDesActes].section only FRCDASectionHistoriqueDesActes
* component.structuredBody.component[sectionAllergiesEtHypersensibilites].section only FRCDASectionAllergiesEtHypersensibilites
* component.structuredBody.component[sectionEffetsIndesirables].section only FRCDASectionEffetsIndesirables
* component.structuredBody.component[sectionTraitements].section only FRCDASectionTraitements
* component.structuredBody.component[sectionDispositifsMedicaux].section only FRCDASectionDispositifsMedicaux
* component.structuredBody.component[sectionPointsDeVigilancesNonCode].section only FRCDASectionPointsDeVigilancesNonCode
* component.structuredBody.component[sectionStatutFonctionnel].section only FRCDASectionStatutFonctionnel
* component.structuredBody.component[sectionSignesVitaux].section only FRCDASectionSignesVitaux
* component.structuredBody.component[sectionHabitusModeDeVie].section only FRCDASectionHabitusModeDeVie
* component.structuredBody.component[sectionAntecedentFamiliaux].section only FRCDASectionAntecedentsFamiliaux
* component.structuredBody.component[sectionFacteursDeRisqueProfessionnelsNonCode].section only FRCDASectionFacteursDeRisqueProfessionnelsNonCode
* component.structuredBody.component[sectionVaccinations].section only FRCDASectionVaccinations
* component.structuredBody.component[sectionHistoriqueDesGrossesses].section only FRCDASectionHistoriqueDesGrossesses
* component.structuredBody.component[sectionPlanDeSoins].section only FRCDASectionPlanDeSoins
* component.structuredBody.component[sectionDirectivesAnticipees].section only FRCDASectionDirectivesAnticipees
* component.structuredBody.component[sectionResultats].section only FRCDASectionResultats
* component.structuredBody.component[sectionDocumentsAjoutes].section only FRCDASectionDocumentsAjoutes

// Entrées de chaque section : les slices sont hérités des profils de section de l'IG core ; les contraindre ici les fait apparaître dans l'arbre
// Problèmes actifs
* component.structuredBody.component[sectionProblemesActifs].section.entry[frListeDesProblemes] ^short = "Entrée Liste des problèmes"
* component.structuredBody.component[sectionProblemesActifs].section.entry[frListeDesProblemes].act only FRCDAListeDesProblemes
// Antécédents médicaux
* component.structuredBody.component[sectionAntecedentsMedicaux].section.entry[frListeDesProblemes] ^short = "Entrée Liste des problèmes"
* component.structuredBody.component[sectionAntecedentsMedicaux].section.entry[frListeDesProblemes].act only FRCDAListeDesProblemes
// Historique des actes
* component.structuredBody.component[sectionHistoriqueDesActes].section.entry[frActe] ^short = "Entrée Acte"
* component.structuredBody.component[sectionHistoriqueDesActes].section.entry[frActe].procedure only FRCDAActe
* component.structuredBody.component[sectionHistoriqueDesActes].section.entry[frReferencesExternes] ^short = "Entrée Références externes"
* component.structuredBody.component[sectionHistoriqueDesActes].section.entry[frReferencesExternes].act only FRCDAReferencesExternes
// Allergies et hypersensibilités
* component.structuredBody.component[sectionAllergiesEtHypersensibilites].section.entry[frListeDesAllergiesEtHypersensibilites] ^short = "Entrée Liste des allergies et hypersensibilités"
* component.structuredBody.component[sectionAllergiesEtHypersensibilites].section.entry[frListeDesAllergiesEtHypersensibilites].act only FRCDAListeDesAllergiesEtHypersensibilites
// Effets indésirables
* component.structuredBody.component[sectionEffetsIndesirables].section.entry[frEffetIndesirable] ^short = "Entrée Effet indésirable"
* component.structuredBody.component[sectionEffetsIndesirables].section.entry[frEffetIndesirable].observation only FRCDAEffetIndesirable
// Traitements
* component.structuredBody.component[sectionTraitements].section.entry[frTraitement] ^short = "Entrée Traitement"
* component.structuredBody.component[sectionTraitements].section.entry[frTraitement].substanceAdministration only FRCDATraitement
// Dispositifs médicaux
* component.structuredBody.component[sectionDispositifsMedicaux].section.entry[frDispositifMedical] ^short = "Entrée Dispositif médical"
* component.structuredBody.component[sectionDispositifsMedicaux].section.entry[frDispositifMedical].supply only FRCDADispositifMedical
// Signes vitaux
* component.structuredBody.component[sectionSignesVitaux].section.entry[frSignesVitaux] ^short = "Entrée Signes vitaux"
* component.structuredBody.component[sectionSignesVitaux].section.entry[frSignesVitaux].organizer only FRCDASignesVitaux
// Habitus, mode de vie
* component.structuredBody.component[sectionHabitusModeDeVie].section.entry[frHabitusModeDeVie] ^short = "Entrée Habitus, Mode de vie"
* component.structuredBody.component[sectionHabitusModeDeVie].section.entry[frHabitusModeDeVie].observation only FRCDAHabitusModeDeVie
// Antécédents familiaux
* component.structuredBody.component[sectionAntecedentFamiliaux].section.entry[frAntecedentsFamiliaux] ^short = "Entrée Antécédents familiaux"
* component.structuredBody.component[sectionAntecedentFamiliaux].section.entry[frAntecedentsFamiliaux].organizer only FRCDAAntecedentsFamiliaux
// Vaccinations
* component.structuredBody.component[sectionVaccinations].section.entry[frVaccination] ^short = "Entrée Vaccination"
* component.structuredBody.component[sectionVaccinations].section.entry[frVaccination].substanceAdministration only FRCDAVaccination
// Historique des grossesses
* component.structuredBody.component[sectionHistoriqueDesGrossesses].section.entry[frObservationSurLaGrossesse] ^short = "Entrée Observation sur la grossesse"
* component.structuredBody.component[sectionHistoriqueDesGrossesses].section.entry[frObservationSurLaGrossesse].observation only FRCDAObservationSurLaGrossesse
* component.structuredBody.component[sectionHistoriqueDesGrossesses].section.entry[frHistoriqueDeLaGrossesse] ^short = "Entrée Historique des grossesses"
* component.structuredBody.component[sectionHistoriqueDesGrossesses].section.entry[frHistoriqueDeLaGrossesse].organizer only FRCDAHistoriqueDeLaGrossesse
// Plan de soins
* component.structuredBody.component[sectionPlanDeSoins].section.entry[frActe] ^short = "Entrée Acte"
* component.structuredBody.component[sectionPlanDeSoins].section.entry[frActe].procedure only FRCDAActe
* component.structuredBody.component[sectionPlanDeSoins].section.entry[frDemandeDExamenOuDeSuivi] ^short = "Entrée Demande d'examen ou de suivi"
* component.structuredBody.component[sectionPlanDeSoins].section.entry[frDemandeDExamenOuDeSuivi].observation only FRCDADemandeDExamenOuDeSuivi
* component.structuredBody.component[sectionPlanDeSoins].section.entry[frTraitement] ^short = "Entrée Traitement"
* component.structuredBody.component[sectionPlanDeSoins].section.entry[frTraitement].substanceAdministration only FRCDATraitement
* component.structuredBody.component[sectionPlanDeSoins].section.entry[frVaccinRecommande] ^short = "Entrée Vaccin recommandé"
* component.structuredBody.component[sectionPlanDeSoins].section.entry[frVaccinRecommande].substanceAdministration only FRCDAVaccinRecommande
* component.structuredBody.component[sectionPlanDeSoins].section.entry[frRencontre] ^short = "Entrée Rencontre"
* component.structuredBody.component[sectionPlanDeSoins].section.entry[frRencontre].encounter only FRCDARencontre
// Directives anticipées
* component.structuredBody.component[sectionDirectivesAnticipees].section.entry[frDirectiveAnticipee] ^short = "Entrée Directive anticipée"
* component.structuredBody.component[sectionDirectivesAnticipees].section.entry[frDirectiveAnticipee].observation only FRCDADirectiveAnticipee
// Résultats
* component.structuredBody.component[sectionResultats].section.entry[frResultats] ^short = "Entrée Résultats"
* component.structuredBody.component[sectionResultats].section.entry[frResultats].organizer only FRCDAResultats
// Documents ajoutés
* component.structuredBody.component[sectionDocumentsAjoutes].section.entry[frSimpleObservation] ^short = "Entrée Simple observation"
* component.structuredBody.component[sectionDocumentsAjoutes].section.entry[frSimpleObservation].observation only FRCDASimpleObservation
* component.structuredBody.component[sectionDocumentsAjoutes].section.entry[frDocumentAttache] ^short = "Entrée Document attaché"
* component.structuredBody.component[sectionDocumentsAjoutes].section.entry[frDocumentAttache].organizer only FRCDADocumentAttache

// Contraintes propres à la synthèse médicale du DLU (même modèle, mêmes templateId que l'IPS-FR)
// Traitements : un traitement au long cours (42.3) ou aigu (42.4) par entrée
* component.structuredBody.component[sectionTraitements] obeys dlu-traitement-type
// Statut fonctionnel : groupes d'évaluations propres au DLU
* component.structuredBody.component[sectionStatutFonctionnel] obeys dlu-statut-fonctionnel-evaluations
* component.structuredBody.component[sectionStatutFonctionnel].section.entry ^slicing.discriminator.type = #profile
* component.structuredBody.component[sectionStatutFonctionnel].section.entry ^slicing.discriminator.path = "organizer"
* component.structuredBody.component[sectionStatutFonctionnel].section.entry ^slicing.rules = #open
* component.structuredBody.component[sectionStatutFonctionnel].section.entry contains
    etatPsychique 0..1 and
    handicapsDeficits 0..1 and
    deplacements 0..1 and
    autresRisques 0..1 and
    scores 0..2
* component.structuredBody.component[sectionStatutFonctionnel].section.entry[etatPsychique].organizer only FRCDAGroupeEvaluationEtatPsychiqueDLU
* component.structuredBody.component[sectionStatutFonctionnel].section.entry[handicapsDeficits].organizer only FRCDAGroupeEvaluationHandicapsDLU
* component.structuredBody.component[sectionStatutFonctionnel].section.entry[deplacements].organizer only FRCDAGroupeEvaluationDeplacementsDLU
* component.structuredBody.component[sectionStatutFonctionnel].section.entry[autresRisques].organizer only FRCDAGroupeEvaluationAutresRisquesDLU
* component.structuredBody.component[sectionStatutFonctionnel].section.entry[scores].organizer only FRCDAGroupeEvaluationScoreDLU

Invariant: dlu-traitement-type
Description: "Dans la section Traitements, chaque traitement porte exactement un templateId parmi traitement au long cours (1.2.250.1.213.1.1.3.42.3) et traitement aigu (1.2.250.1.213.1.1.3.42.4). Pour une synthèse médicale hors DLU, seul le traitement au long cours est utilisé"
Severity: #error
Expression: "section.entry.substanceAdministration.all(templateId.where(root = '1.2.250.1.213.1.1.3.42.3').count() + templateId.where(root = '1.2.250.1.213.1.1.3.42.4').count() = 1)"

Invariant: dlu-statut-fonctionnel-evaluations
Description: "Pour la synthèse médicale d'un DLU, la liste des évaluations est fixée : dès qu'un groupe d'évaluations LOINC propre au DLU est présent (état psychique 54511-1, handicaps / déficits 52621-0, déplacements / transferts 32452-5), les trois groupes doivent être présents. Le groupe « autres risques » n'est pas vérifié ici : le tableau du volet (GEN-092.01.24) et l'exemple publié par l'ANS (GEN-092.04.24) divergent sur son code"
Severity: #error
Expression: "(section.entry.organizer.code.code contains '54511-1' or section.entry.organizer.code.code contains '52621-0' or section.entry.organizer.code.code contains '32452-5') implies (section.entry.organizer.code.code contains '54511-1' and section.entry.organizer.code.code contains '52621-0' and section.entry.organizer.code.code contains '32452-5')"
