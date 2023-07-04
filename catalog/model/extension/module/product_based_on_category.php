<?php

class ModelExtensionModuleProductBasedOnCategory extends Model {
    public function getProductBasedOnCategory($category_id,$limit) {

	$query = $this->db->query("SELECT * FROM " . DB_PREFIX . "product_to_category WHERE category_id =".$category_id." LIMIT 0,".$limit."");

		foreach ($query->rows as $result) {
			$product_id[] = array(
				'product_id'       => $result['product_id']
				
			);
		}

		return $product_id;

}
}
