RuleSet: GroupeEvaluationDLU(code, display, codeSystem, codeSystemName)
* code.code = #{code}
* code.codeSystem = "{codeSystem}"
* code.codeSystemName = "{codeSystemName}"
* code.displayName = "{display}"

Profile: FRCDAGroupeEvaluationEtatPsychiqueDLU
Parent: FRCDAGroupeDeQuestionnairesDEvaluation
Id: fr-cda-groupe-evaluation-etat-psychique-dlu
Title: "CDA - Groupe d'évaluations : état psychique du patient (DLU)"
Description: "Groupe d'évaluations « Etat psychique du patient » (LOINC 54511-1). Les évaluations utilisent le jeu de valeurs jdv-etat-psychique-cisis (1.2.250.1.213.1.1.5.790)."
* insert GroupeEvaluationDLU(54511-1, Comportement, 2.16.840.1.113883.6.1, LOINC)
* component.observation only FRCDAEvaluationEtatPsychiqueDLU

Profile: FRCDAGroupeEvaluationHandicapsDLU
Parent: FRCDAGroupeDeQuestionnairesDEvaluation
Id: fr-cda-groupe-evaluation-handicaps-dlu
Title: "CDA - Groupe d'évaluations : handicaps / déficits (DLU)"
Description: "Groupe d'évaluations « Handicaps / Déficits » (LOINC 52621-0). Les évaluations utilisent le jeu de valeurs jdv-handicap-deficit-dlu-ehpad-cisis (1.2.250.1.213.1.1.5.791) pour un DLU-EHPAD, ou jdv-handicap-deficit-dlu-dom-cisis (1.2.250.1.213.1.1.5.812) pour un DLU-DOM."
* code.code = #52621-0
* code.codeSystem = "2.16.840.1.113883.6.1"
* code.codeSystemName = "LOINC"
* code.displayName = "Déficience auditive, visuelle ou de communication"

Profile: FRCDAGroupeEvaluationDeplacementsDLU
Parent: FRCDAGroupeDeQuestionnairesDEvaluation
Id: fr-cda-groupe-evaluation-deplacements-dlu
Title: "CDA - Groupe d'évaluations : déplacements / transferts (DLU)"
Description: "Groupe d'évaluations « Déplacements / transferts » (LOINC 32452-5). Les évaluations utilisent le jeu de valeurs jdv-deplacement-cisis (1.2.250.1.213.1.1.5.792)."
* insert GroupeEvaluationDLU(32452-5, Observations sur la fonction motrice, 2.16.840.1.113883.6.1, LOINC)
* component.observation only FRCDAEvaluationDeplacementsDLU

Profile: FRCDAGroupeEvaluationAutresRisquesDLU
Parent: FRCDAGroupeDeQuestionnairesDEvaluation
Id: fr-cda-groupe-evaluation-autres-risques-dlu
Title: "CDA - Groupe d'évaluations : autres risques (DLU)"
Description: "Groupe d'évaluations « Autres risques » (TerminologieCISIS GEN-092.01.24). Les évaluations utilisent le jeu de valeurs jdv-autre-risque-cisis (1.2.250.1.213.1.1.5.793)."
* insert GroupeEvaluationDLU(GEN-092.01.24, Autre risque, 1.2.250.1.213.1.1.4.322, TerminologieCISIS)
* component.observation only FRCDAEvaluationAutresRisquesDLU

Profile: FRCDAGroupeEvaluationScoreDLU
Parent: FRCDAGroupeDeQuestionnairesDEvaluation
Id: fr-cda-groupe-evaluation-score-dlu
Title: "CDA - Groupe d'évaluations : score ADL ou GIR (DLU)"
Description: "Groupe d'évaluations de type « Autre type d'évaluation » (TerminologieCISIS GEN-092.04.24) portant le score ADL (LOINC 72095-3) ou le score GIR (TerminologieCISIS MED-1300, « Evaluation AGGIR »). La valeur de l'évaluation est celle du score."
* insert GroupeEvaluationDLU(GEN-092.04.24, Autre type d'évaluation, 1.2.250.1.213.1.1.4.322, TerminologieCISIS)

Profile: FRCDAEvaluationEtatPsychiqueDLU
Parent: FRCDAEvaluation
Id: fr-cda-evaluation-etat-psychique-dlu
Title: "CDA - Evaluation : état psychique (DLU)"
Description: "Évaluation de l'état psychique du patient. Le code est issu de jdv-etat-psychique-cisis ; le résultat est de type BL (true ou false)."
* code from https://smt.esante.gouv.fr/fhir/ValueSet/jdv-etat-psychique-cisis (required)

Profile: FRCDAEvaluationDeplacementsDLU
Parent: FRCDAEvaluation
Id: fr-cda-evaluation-deplacements-dlu
Title: "CDA - Evaluation : déplacement / transfert (DLU)"
Description: "Évaluation d'un déplacement ou transfert. Le code est issu de jdv-deplacement-cisis ; le résultat est de type BL (true ou false)."
* code from https://smt.esante.gouv.fr/fhir/ValueSet/jdv-deplacement-cisis (required)

Profile: FRCDAEvaluationAutresRisquesDLU
Parent: FRCDAEvaluation
Id: fr-cda-evaluation-autres-risques-dlu
Title: "CDA - Evaluation : autre risque (DLU)"
Description: "Évaluation d'un autre risque. Le code est issu de jdv-autre-risque-cisis ; le résultat est de type BL (true ou false)."
* code from https://smt.esante.gouv.fr/fhir/ValueSet/jdv-autre-risque-cisis (required)
