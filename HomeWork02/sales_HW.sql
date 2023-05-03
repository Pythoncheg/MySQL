CREATE TABLE sales
(
	id int PRIMARY KEY AUTO_INCREMENT,
    order_date DATE,
    count_product INT
);

INSERT INTO sales (order_date, count_product)
VALUES
('2022-01-01', 156),
('2022-01-02', 180),
('2022-01-03', 21),
('2022-01-04', 124),
('2022-01-05', 341);

SELECT id AS 'id продукта',
	IF (count_product < 100, 'Маленький заказ',
		IF(count_product between 100 and 300, 'Средний заказ',
			IF (count_product > 300, 'Большой заказ', 'не определено')
			)
	) AS 'Тип заказа'
 FROM sales;