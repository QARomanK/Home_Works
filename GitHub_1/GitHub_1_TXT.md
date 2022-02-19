# Create TXT file.

 1. Создать внешний репозиторий c названием TXT
 
     `https://github.com/QARomanK/TXT.git`

 2. Клонировать репозиторий TXT на локальный компьютер 

     `git clone https://github.com/QARomanK/TXT.git `

 3. Внутри локального TXT создать файл ***new.txt*** 

     `touch new.txt`

 4. Добавить файл под Git

    `git add new.txt`

      или

    `git add .`

 5. Закоммитить файл

     `git commit -m "Commit new.txt file" `

 6. Отправить файл на внешний GitHub репозиторий

    `git push`

 7. Отредактировать содержание файла ***new.txt*** - написать информацию о себе (ФИО, возраст, количество домашних животных, будущая желаемая зарплата). Всё написать в формате TXT

    `vim new.txt`

 8. Отправить изменения на внешний репозиторий

    `git commit -am "Second commit"`

    `git push`

9. Создать файл ***preferences.txt***

    `touch preferences.txt`

 10. В файл ***preferences.txt*** добавить информацию о своих предпочтениях (Любимый фильм, любимый сериал, любимая еда, любимое время года, сторона которую хотели бы посетить) в формате TXT

     `vim  preferences.txt`

 11. Создать файл ***sklls.txt*** добавить информацию о скиллах которые будут изучены на курсе в формате TXT
 
      `touch sklls.txt`
 
     `vim sklls.txt`
 
     `git add .`
 
 12. Сделать коммит в одну строку

     `git commit -am "Third commit"`

 13. Отправить сразу 2 файла на внешний репозиторий

     `git push`

 14. На веб интерфейсе создать файл ***bug_report.txt***

     `Add file > Create new file`

 15. Сделать Commit changes (сохранить) изменения на веб интерфейсе

     `Commit changes`

 16. На веб интерфейсе модифицировать файл ***bug_report.txt***, добавить баг репорт в формате TXT

     `bug_report.txt > Edit this file`

 17. Сделать Commit changes (сохранить) изменения на веб интерфейсе

     `Commit changes`

 18. Синхронизировать внешний и локальный репозиторий TXT

     `git pull`
