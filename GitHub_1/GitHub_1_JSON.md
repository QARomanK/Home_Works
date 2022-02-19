
# Create JSON file

 1. Создать внешний репозиторий c названием JSON
 
	[`https://github.com/QARomanK/JSON.git`](https://github.com/QARomanK/JSON.git)

 2. Клонировать репозиторий JSON на локальный компьютер 

	`git clone https://github.com/QARomanK/JSON.git `

 3. Внутри локального JSON создать файл ***new.jso*** 

	`touch new.json`

 4. Добавить файл под Git

	`git add new.json`
	
	или
	
	`git add .`

 5. Закоммитить файл

	`git commit -m "Commit new.json file" `

	или

	`git commit -am "Commit new.json file"

 6. Отправить файл на внешний GitHub репозиторий

	`git push`

 7. Отредактировать содержание файла ***new.json*** - написать информацию о себе (ФИО, возраст, количество домашних животных, будущая желаемая зарплата). Всё написать в формате JSON

	`vim new.json`

 8. Отправить изменения на внешний репозиторий

	`git commit -am "Second commit JSON"`

	`git push`

 9. Создать файл ***preferences.json***

	`touch preferences.json`

 10. В файл ***preferences.json*** добавить информацию о своих предпочтениях (Любимый фильм, любимый сериал, любимая еда, любимое время года, сторона которую хотели бы посетить) в формате JSON

     `vim preferences.json`

 11. Создать файл ***sklls.json*** добавить информацию о скиллах которые будут изучены на курсе в формате JSON
	
	 `touch sklls.json`
 
	 `vim sklls.json`

	 `git add .`

 12. Сделать коммит в одну строку.

	 `git commit -am "Third commit JSON"`

 13. Отправить сразу 2 файла на внешний репозиторий.

	 `git push`

 14. На веб интерфейсе создать файл ***bug_report.json***
	
	 `Add file > Create new file`

 15. Сделать Commit changes (сохранить) изменения на веб интерфейсе

	 `Commit changes`

 16. На веб интерфейсе модифицировать файл ***bug_report.json***, добавить баг репорт в формате JSON

	 `bug_report.json > Edit this file`

 17. Сделать Commit changes (сохранить) изменения на веб интерфейсе.

	 `Commit changes`

 18. Синхронизировать внешний и локальный репозиторий JSON

	 `git pull`
