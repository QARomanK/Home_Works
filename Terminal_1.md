# Home_Work Terminal_1

1  Посмотреть где я :
   
   `pwd`
   
2  Создать папку :

`mkdir papka`

3  Зайти в папку :

`cd papka`

4  Создать 3 папки : 

`mkdir papka1 papka2 papka3`

5  Зайти в любоую папку :

`cd papka2`

6  Создать 5 файлов (3 txt, 2 json) : 

`touch f1.txt f2.txt f3.txt f4.json f5.json`

7  Создать 3 папки : 

` mkdir papka4 papka5 papka6 `

8  Вывести список содержимого папки : 

` ls -la `

9  Открыть любой txt файл : 

`vim f1.txt`

10 Написать туда что-нибудь, любой текст : 

` (i) "Hello Mentor!" `

11 Сохранить и выйти :

` Esc :wq `

12 Выйти из папки на уровень выше : 

` cd ../ `

13 Переместить любые 2 файла, которые вы создали, в любую другую папку :
  
  `mv papka2/f1.txt papka1/f1.txt` 
  
  `mv papka2/f4.json papka1/f4.json`

или 

 `mv papka2/{f1.txt,f4.json} papka1`

14 Скопировать любые 2 файла, которые вы создали, в любую другую папку :

  `cp papka2/f2.txt papka3/f2.txt` 

  `cp papka2/f5.json papka3/f5.json`

или  

 `cp papka2/{f2.txt,f5.json} papka3`

15 Найти файл по имени : 

 `find papka2 -name f2.txt (papka2/f2.txt)`

16 Просмотреть содержимое в реальном времени : 

 `tail -f f2.txt`

17 Вывести несколько первых строк из текстового файла : 

 `head -3 papka2/f2.txt`

18 Вывести несколько последних строк из текстового файла : 

 `cat papka2/f2.txt | tail -n 3 `

19 Просмотреть содержимое длинного файла : 

 `cat papka2/f6.txt | less `

20 Вывести дату и время :

`date`

# Задание *

1 Отправить http запрос на сервер http://162.55.220.72:5005/terminal-hw-request

`curl http://162.55.220.72:5005/terminal-hw-request`

Response :

```
 % Total    % Received % Xferd  Average Speed   Time    Time     Time  Current
                                 Dload  Upload   Total   Spent    Left  Speed
100   237  100   237    0     0   2145      0 --:--:-- --:--:-- --:--:--  2174{"Intro":"Hello!! This is your the first response from server","Tasks":{"Task_1":"Send the next URL in terminal: http://162.55.220.72:5005/get_method?name=(set_your_String)&age=(set_your_number)","result":["Your_String","Your_number"]}}
```

Second request :

`curl "http://162.55.220.72:5005/get_method?name=Roman&age=33" `

Response:

```
% Total    % Received % Xferd  Average Speed   Time    Time     Time  Current
                                 Dload  Upload   Total   Spent    Left  Speed
100    15  100    15    0     0    129      0 --:--:-- --:--:-- --:--:--   130["Roman","33"]
```

2 Написать скрипт который выполнит автоматически пункты 3, 4, 5, 6, 7, 8, 13
```
#!/bin/bash

# Create new folders and files

cd Main

for items in folder1 folder2 folder3

do
        mkdir "$items"

done

cd folder3

for items in file1.txt file2.txt file3.txt file4.json file5.json

do
        touch "$items"

done

for items in folder4 folder5 folder6

do
	mkdir "$items"

done

ls

mv {file1.txt,file4.json} folder6
```
