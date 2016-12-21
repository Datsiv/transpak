<?php

class ModelCatalogKachestvo extends Model { 

	

	public function getNewsStory($news_id) {
		$query = $this->db->query("SELECT DISTINCT * FROM " . DB_PREFIX . "kachestvo n LEFT JOIN " . DB_PREFIX . "kachestvo_description nd ON (n.news_id = nd.news_id) WHERE n.news_id = '" . (int)$news_id . "' AND n.status = '1'");
	
		return $query->row;
	}


}
?>
