<?php
  define("PAGE_TITLE", "Liste alphabétique des pays d'Afrique");
  require("inc/inc.kickstart.php");
?>

<main class="pays-liste">
<?php
  
  $tableau = [];
  $requete = "SELECT * FROM `country` ORDER BY `country_area`";
  try {
    $etape = $pdo->prepare($requete);
    $etape->execute();
    $nbreResultat = $etape->rowCount();
    if ($nbreResultat) $tableau = $etape->fetchAll();
    else echo "<pre>✖️ La requête SQL ne retourne aucun résultat</pre>";
  } catch (PDOException $e) {
    echo "<pre>✖️ Erreur liée à la requête SQL :\n" . $e->getMessage() . "</pre>";
  }

  foreach ($tableau as $pays) {
    echo "<section>";
    echo "<h1>" . htmlspecialchars($pays["country_name"]) . "</h1>";
    echo "<h2>" . htmlspecialchars($pays["country_flag"]) . "</h2>";
    echo "<div>" . number_format(htmlspecialchars($pays["country_area"]), 0, ',', ' ') . " km²</div>";
    echo "<div>" . htmlspecialchars($pays["country_capital"]) . "</div>";
    echo "</section>";
  }

?>
</main>

<?php require("inc/inc.footer.php"); ?>