<!DOCTYPE html>

<?php
# Connexion à la base de données
$db = mysqli_connect('10.2.0.2:3306', 'b2b', 'password', 'woodytoys') or die('Erreur de connection!');
?>

<html>

<head>
  <meta charset="UTF-8">
  <title>Site Web b2b WoodyToys</title>
</head>

<body>
  <h1>BIENVENUE SUR LE SITE B2B DE WOODYTOYS LETS GOOOOO</h1>

  <table>
    <thead>
      <tr>
        <th>Nom</th>
        <th>Prix</th>
        <th>Quantité</th>
      </tr>
    </thead>
    <tbody>
      <?php
      $query = "SELECT * FROM produit";
      mysqli_query($db, $query) or die(mysqli_error($db));
      $affichage = mysqli_query($db, $query);

      while ($row = mysqli_fetch_array($affichage)) {
        echo '<tr>';
        echo '<td>' . $row['nom'] . ' | ' . '</td>';
        echo '<td>' . $row['prix'] . ' € ' . ' | ' . '</td>';
        echo '<td>' . $row['quantite'] . ' | ' . '</td>';
        echo '</tr>';
      }

      mysqli_close($db);

      ?>
    </tbody>
  </table>

</body>
</html>