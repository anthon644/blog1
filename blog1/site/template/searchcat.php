<form action="#" method="post" name="categorie">
	
	<select name="getCategorie">

	<?php foreach($categories as $categorie) : ?>

		<option value="<?= $categorie->id_categorie?>"><?= $categorie->nom_categorie?></option>

		<?php endforeach; ?>

	</select>

	<input type="submit" value="Valider">

</form>


