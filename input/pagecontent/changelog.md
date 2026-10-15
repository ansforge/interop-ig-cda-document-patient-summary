# Changelog

Format basé sur [Keep a Changelog](https://keepachangelog.com/fr/1.1.0/). La version de l'IG est dans `sushi-config.yaml`.

## [Non publié]

### Ajouté

- Page « Historique des modifications » (`changelog.md`), déclarée dans les pages et le menu « Autres ressources » de `sushi-config.yaml`

### Modifié

- Profil IPS : slicing des `participant` par `functionCode.code` et `typeCode` (au lieu de `url`).
- Profil IPS : slicing des sections de `component.structuredBody.component` par `profile` sur `section` (au lieu de `section.templateId/root`).
- `sushi-config.yaml` : le modèle logique de l'exemple `Binary-patient-summary.xml` référence désormais le profil `fr-cda-clinical-document-ips` de cet IG (et non `fr-cda-clinical-document` de document-core).
- Exemple CDA : corrections des références et identifiants de la partie narrative.

### Retiré

- Profil IPS : la slice `sectionDirectivesAnticipees` est désactivée (commentée), ainsi que sa contrainte `section only`.
