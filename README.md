Тестовое задание 
на позицию “Разработчик Ruby on Rails” 
от ГКУ МО “МОЦ ИКТ” (https://ikt.mosreg.ru/) 

Общее описание
Необходимо разработать плагин, который добавит новую закладку в проект с названием Склад. В этой закладке должен находится список товаров на складе. Каждый товар имеет наименование (строка), стоимость(число), кол-во (число), дата производства (дата), номер задачи (issue.id). Чтобы начать разработку нужно установить последнюю версию Redmine с сайта redmine.org
Общие требования
    • Плагин должен называться redmine_warehouse, контроллер товаров - ProductsController
    • Наименование товара должно быть уникальным и при создании и редактирования должна быть проверка
    • На странице задачи должна отображаться ссылка на товар у которого указан этот номер задачи.
    • Должен быть как минимум один функциональный тест для ProductsController с использованием MiniTest или RSpec
На что мы будем обращать внимание
    • Все решения и стилистика должна быть заимствована из Redmine. Имеется ввиду названия методов, отступы, поиск объектов, обработка ошибок и т.д.
    • Оформление таблиц, контролов, форм ввода должно быть в точности как в Redmine
    • Код должен быть минималистичным, а верстка аккуратной. Будем смотреть чтобы ничего никуда не залазило и расстояния между элементами были такие же как используются в Redmine
    • Одним словом должно быть незаметно, что это отдельный плагин. Он должен “слиться” с Redmine и внешне и внутренне.
Рекомендации по выполнению задания
Можно взять за пример какой-нибудь плагин на redmine.org/plugins (желательно смотреть плагины с активной разработкой, потому что очень много не поддерживаемых). Основные действия index/new/edit/create/update/delete можно посмотреть в контролерах Redmine. Для того чтобы сделать связь с задачами надо использовать Hook который есть на представлении /views/issues/show.html.erb (view_issues_show_details_bottom). Как использовать хуки можно посмотреть в плагине redmineup_tags
Ссылки
    • http://www.redmine.org/projects/redmine/wiki/Plugin_Tutorial