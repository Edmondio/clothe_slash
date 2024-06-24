# Demander à l'utilisateur combien de copies il souhaite
$nombreCopies = Read-Host "Combien de copies voulez-vous?"

# Définir le nom de fichier source
$sourceFile = "40.png"

# Vérifier si le fichier source existe
if (-Not (Test-Path $sourceFile)) {
    Write-Host "Le fichier source '$sourceFile' n'existe pas." -ForegroundColor Red
    exit
}

# Boucle pour copier le fichier
for ($i = 1; $i -le $nombreCopies; $i++) {
    $destinationFile = "$i" + "_.png"
    Copy-Item $sourceFile -Destination $destinationFile
}

Write-Host "Copie terminée !"