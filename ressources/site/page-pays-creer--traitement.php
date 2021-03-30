<?php
  define("PAGE_TITLE", "Traitement");
  require("inc/inc.kickstart.php");
?>

<main class="pays-creer">
<?php
  
  //Protection des données via la fonction htmlspecialchars()

  $countryName = htmlspecialchars($_POST['country_name']);
  $countryFlag = htmlspecialchars($_POST['country_flag']);
  $countryCapital = htmlspecialchars($_POST['country_capital']);
  $countryArea =htmlspecialchars($_POST["country_area"]);
 

  // Création de requête préparée 
  // Ajout try catch pour gérer les éventuelles erreurs
  try{


  $prepare = "INSERT INTO `country` (`country_name`, `country_flag`, `country_capital`, `country_area`) VALUES (:country_name,:country_flag,:country_capital,:country_area)";

  $requete = $pdo->prepare($prepare);
  $requete->execute([
      ":country_name"=>$countryName,
      ":country_flag"=>$countryFlag,
      ":country_capital"=>$countryCapital,
      ":country_area"=>$countryArea
  ]);

  echo "<h3>Merci !</h3>";
  echo "<p>Voici un récapitulatif de votre contribution :</p>";
  echo "<ul>"
      ."<li>Nom du pays : " . $countryName . "</li>"
      ."<li>Capitale du pays : " . $countryCapital . "</li>"
      ."<li>Drapeau du pays : " . $countryFlag . "</li>"
      ."<li>Superficie du pays (en km²) : " . $countryArea . "</li>"
      ."<ul>";
  echo "<a href='page-pays-liste-alpha.php'><button>Consulter la liste des pays</button></a>";
  }catch (PDOException $e) {
    echo "<pre>✖️ Erreur liée à la requête SQL :\n" . $e->getMessage() . "</pre>";
  }
 
?>
</main>

<?php require("inc/inc.footer.php"); ?>