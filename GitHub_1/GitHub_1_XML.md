# Create XML file.

 1. Создать внешний репозиторий c названием XML
 
     [`https://github.com/QARomanK/XML.git`](https://github.com/QARomanK/XML.git)

 2. Клонировать репозиторий XML на локальный компьютер 

     `git clone https://github.com/QARomanK/XML.git `

 3. Внутри локального XML создать файл ***new.xml*** 

     `touch new.xml`

 4. Добавить файл под Git

    `git add new.xml`

      или

    `git add .`

 5. Закоммитить файл

     `git commit -m "Commit new.xml file" `

 6. Отправить файл на внешний GitHub репозиторий

    `git push`

 7. Отредактировать содержание файла ***new.xml*** - написать информацию о себе (ФИО, возраст, количество домашних животных, будущая желаемая зарплата). Всё написать в формате XML

    `vim new.xml`

 8. Отправить изменения на внешний репозиторий

    `git commit -am "Second commit"`

    `git push`

9. Создать файл ***preferences.xml***

    `touch preferences.xml`

 10. В файл ***preferences.xml*** добавить информацию о своих предпочтениях (Любимый фильм, любимый сериал, любимая еда, любимое время года, сторона которую хотели бы посетить) в формате XML

     `vim  preferences.xml`

 11. Создать файл ***sklls.xml*** добавить информацию о скиллах которые будут изучены на курсе в формате XML
 
      `touch sklls.xml`
 
     `vim sklls.xml`
 
 12. Сделать коммит в одну строку

     `git add . | git commit -am "Third commit"`
     
     или
     
     `git add . ; git commit -m "Third commit"`
     
     или
     
     `git add . && git commit -m "Third commit"`

 13. Отправить сразу 2 файла на внешний репозиторий

     `git push`

 14. На веб интерфейсе создать файл ***bug_report.xml***

     `Add file > Create new file`

 15. Сделать Commit changes (сохранить) изменения на веб интерфейсе

     `Commit changes`

 16. На веб интерфейсе модифицировать файл ***bug_report.xml***, добавить баг репорт в формате XML

     `bug_report.xml > Edit this file`

 17. Сделать Commit changes (сохранить) изменения на веб интерфейсе

     `Commit changes`

 18. Синхронизировать внешний и локальный репозиторий XML

     `git pull`
