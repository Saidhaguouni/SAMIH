CREATE TABLE `societe` (
  `ID_SOCIETE` int(11) NOT NULL,
  `NOM_SOCIETE` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;


-- --------------------------------------------------------

--
-- Structure de la table `societe_autorisation`
--

CREATE TABLE `societe_autorisation` (
  `ID_AUTIRASTION` int(11) NOT NULL,
  `NOM_UTILISATEUR` varchar(250) NOT NULL,
  `SOCIETE` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

ALTER TABLE `employe`
ADD `SOCIETE` varchar(250);



ALTER TABLE `societe`
  ADD PRIMARY KEY (`ID_SOCIETE`),
  ADD UNIQUE KEY `ID_SOCIETE` (`ID_SOCIETE`,`NOM_SOCIETE`);

--
-- Index pour la table `societe_autorisation`
--
ALTER TABLE `societe_autorisation`
  ADD PRIMARY KEY (`ID_AUTIRASTION`);



ALTER TABLE `societe`
  MODIFY `ID_SOCIETE` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT pour la table `societe_autorisation`
--
ALTER TABLE `societe_autorisation`
  MODIFY `ID_AUTIRASTION` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
