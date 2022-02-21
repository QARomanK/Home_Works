1 На локальном репозитории сделать ветки для:
	
  - Postman  `git branch Postman`
	
  - Jmeter `git branch Jmeter`
	
  - CheckLists `git branch CheckList`
	
  - Bag Reports `git branch Bag_Reports`
	
  - SQL `git branch SQL`
	
  - Charles `git branch Charles`
	
  - Mobile testing `git branch Mobile_testing`

2 Запушить все ветки на внешний репозиторий
```
	git push --set-upstream origin Postman
	git push --set-upstream origin Jmeter
	git push --set-upstream origin CheckList
	git push --set-upstream origin Bag_Reports
	git push --set-upstream origin SQL
	git push --set-upstream origin Charles
	git push --set-upstream origin Mobile_testing
```
3 В ветке Bag_Reports сделать текстовый документ со структурой баг репорта

  Перходим в ветку Bag_Reports
  
  `git checkout Bag_Reports`	
	
  Создаём файл *bag_report.txt* 
  
  `touch bag_report.txt`
	
  Вносим изменения в файл 
  
  `vim bag_report.txt`
  
        1 Краткое описание (Summary)
        2 Проект (Project)
        3 Компонет приложения (Component)
        4 Номер версии (Version)
        5 Серьезность (Severity)
        6 Пиоритет (Priority)
        7 Шаги воспроизведения (Steps to Reproduce)
        8 Фактический результат (Actual Result)
        9 Ожидаемый результат (Expected Result)
        10 Дополнения (Additional information)
 
 
4 Запушить структуру багрепорта на внешний репозиторий
 
  `git add . | git commit -m "add bag_report.txt"`
  
  `git push`
  
5 Вмержить ветку Bag Reports в Main
 
   `git checkout main`
 
   `git merge Bag_Reports`
	
6 Запушить Main на внешний репозиторий.

   `git push`

7 В ветке CheckLists набросать структуру чек листа.

   `touch check_list.txt`
	
   `vim check_list.txt`
   
    1 Номер (ID)
    2 Проверка (Check)
    3 Результат (Result)
    4 Комментарий (Comment)
  
8 Запушить структуру на внешний репозиторий

   `git add check_list.txt | git commit -m "add check_list"`
	
   `git push`
	
9	На внешнем репозитории сделать Pull Request ветки CheckLists в Main

   `Pull Request > New pull request > base:main << compare:CheckList`
 
10 Синхронизировать Внешнюю и Локальную ветки Main

   `git pull`
