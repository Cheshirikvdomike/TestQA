﻿#language: ru



Функционал: проверка расчета суммы документа Заказ

Как Администратор я хочу
Проверить расчет суммы документа при изменении количества и цены
чтобы избежать ошибочных расчетов в документе

Контекст:
	Дано Я запускаю сценарий открытия TestClient или подключаю уже существующий

Сценарий: Создание документа Заказ
И В командном интерфейсе я выбираю 'Продажи' 'Заказы'
Тогда открылось окно 'Заказы товаров'
И я нажимаю на кнопку с именем 'ФормаСоздать'
Тогда открылось окно 'Заказ (создание)'
И в таблице "Товары" я нажимаю на кнопку с именем 'ТоварыДобавить'
И в таблице "Товары" я нажимаю кнопку выбора у реквизита с именем "ТоварыТовар"
Тогда открылось окно 'Товары'
И в таблице "Список" я разворачиваю текущую строку
И в таблице "Список" я перехожу к строке:
	| 'Код'       | 'Наименование' |
	| '000000024' | 'Кроссовки'    |
И в таблице "Список" я выбираю текущую строку
Тогда открылось окно 'Заказ (создание) *'
И в таблице "Товары" из выпадающего списка с именем "ТоварыТовар" я выбираю точное значение 'Кроссовки'
И в таблице "Товары" я активизирую поле с именем "ТоварыЦена"
И в таблице "Товары" в поле с именем 'ТоварыЦена' я ввожу текст '200,00'
И в таблице "Товары" я завершаю редактирование строки
Тогда таблица "Товары" стала равной:
	| 'Товар'     | 'Цена'   | 'Количество' | 'Сумма'  |
	| 'Кроссовки' | '200,00' | '1'          | '200,00' |
Когда открылось окно 'Заказ (создание) *'
И в таблице "Товары" я активизирую поле с именем "ТоварыКоличество"
И в таблице "Товары" я выбираю текущую строку
И в таблице "Товары" в поле с именем 'ТоварыКоличество' я ввожу текст '3'
И в таблице "Товары" я завершаю редактирование строки
Тогда таблица "Товары" стала равной:
	| 'Товар'     | 'Цена'   | 'Количество' | 'Сумма'  |
	| 'Кроссовки' | '200,00' | '3'          | '600,00' |
Когда открылось окно 'Заказ (создание) *'
И в таблице "Товары" я активизирую поле с именем "ТоварыЦена"
И в таблице "Товары" я выбираю текущую строку
И в таблице "Товары" в поле с именем 'ТоварыЦена' я ввожу текст '1 000,00'
И в таблице "Товары" я завершаю редактирование строки
И в таблице "Товары" я активизирую поле с именем "ТоварыКоличество"
И в таблице "Товары" я выбираю текущую строку
И в таблице "Товары" в поле с именем 'ТоварыКоличество' я ввожу текст '5'
И в таблице "Товары" я завершаю редактирование строки
Тогда таблица "Товары" стала равной:
	| 'Товар'     | 'Цена'     | 'Количество' | 'Сумма'    |
	| 'Кроссовки' | '1 000,00' | '5'          | '5 000,00' |

	



