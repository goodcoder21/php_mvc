<?php 
class Category {
	public static function getCategoriesList() {
		$db = Db::getConnection();
		$categoryList = array();
		$result = $db->query('SELECT id, name FROM category ORDER BY sort_order ASC');
		$i=0;
		while ($row = $result->fetch()) {
			$categoryList ['id'] = $row['id'];
			$categoryList ['name'] = $row['name'];
			$i++;
		}
		return $categoryList;
	}
}
			