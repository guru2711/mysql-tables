// FIND ALL INFO OF PRODUCTS 
db.Product.find()

// Find the product price which are between 400 to 800
db.Product.find({product_price: {$gt: 400,$lt: 800}})

// Find the product price which are not between 400 to 600
db.Product.find({product_price:{ $not: {$gt: 400, $lt: 600}}})

// List the four product which are grater than 500 in price 
db.Product.find({product_price: {$gte : 500}})

// Find the product name and product material of each products
db.Product.find({},{product_name:1,product_material:1})

// Find the product with a row id of 10
db.Product.find({id: "10"})

// Find only the product name and product material
db.Product.find({},{_id: 0,product_name:1,product_material:1})

// Find all products which contain the value of soft in product material 
db.Product.find({product_material: "Soft"})