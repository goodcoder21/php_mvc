<?php 
class Product {
	const SHOW_BY_DEFAULT = 6;
	
	public static function getLatestProducts($count = self::SHOW_BY_DEFAULT, $page = 1) {
		$count = intval($count);
		$page = intval($page);
		$offset = $page * $count;
		
		$db = Db::getConnection();
		$productsList = array();
		$result = $db->query('SELECT id, name, price, image, is_new FROM product WHERE status = "1" ORDER BY id DESC LIMIT '. $count);
		$i = 0;
		while($row = $result->fetch()) {
			$productsList[$i]['id'] = $row ['id'];
			$productsList[$i]['name'] = $row ['name'];
			$productsList[$i]['image'] = $row ['image'];
			$productsList[$i]['price'] = $row ['price'];
			$productsList[$i]['is_new'] = $row ['is_new'];
			$i++;
		}
		return $productsList;
	}


	public static function getProductsListByCategory($categoryId = false, $page = 1)
    {
        if ($categoryId) {
			$page = intval($page);
			$offset = ($page) * self::SHOW_BY_DEFAULT; 

            $db = Db::getConnection();            
            $products = array();
            $result = $db->query("SELECT id, name, price, image, is_new FROM product "
                    . "WHERE status = '1' AND category_id = '$categoryId' "
                    . "ORDER BY id DESC "                
                    . "LIMIT ".self::SHOW_BY_DEFAULT
					. " OFFSET ". $offset);

            $i = 0;
            while ( $row = $result->fetch() ) {
                $products[$i]['id'] = $row['id'];
                $products[$i]['name'] = $row['name'];
                $products[$i]['image'] = $row['image'];
                $products[$i]['price'] = $row['price'];
                $products[$i]['is_new'] = $row['is_new'];
                $i++;
            }

            return $products;       
        }
    }
	
	public static function getProductById($id) {
		$id = intval($id);
		if ($id) {
			$db = Db::getConnection();
			$result = $db->query('SELECT * FROM product WHERE id='.$id);
			$result->setFetchMode(PDO::FETCH_ASSOC);
			return $result->fetch();
		}
	}
	
	public static function getTotalProductsInCategory($categoryId) {
		$db = Db::getConnection();
		$result = $db->query("SELECT count(id) AS count FROM product WHERE status = '1' AND category_id =".$categoryId );		
		$result->setFetchMode(PDO::FETCH_ASSOC);
		$row = $result->fetch();
		
		return $row['count'];
	}
}