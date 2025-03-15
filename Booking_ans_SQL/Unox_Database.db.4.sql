SELECT fi.item_id, fi.name, fis.rate
FROM FoodItem fi
JOIN FoodItemSize fis ON fi.item_id = fis.item_id;
