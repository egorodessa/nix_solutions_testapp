# README

- Написать “​парсер” для новостного сайта ​https://news.ycombinator.com/​
“парсер” ​должен запускаться как rake задача, и обрабатывать первые 5 страниц информации(​плюсом будет использование Sidekiq).

            Обязательные поля:

        title ­ название статьи
        autor ­ автор статьи
        url   ­ адрес статьи



- Написать WEB­версию для отображения новостей(​плюсом будет добавление стилей и пагинации ) ​

- Написать API для получение новостей

GET​
 /api/posts
[
  { title: ‘Article’,   url: ‘http://test.com’, author: ‘Jim’ },
  { title: ‘Article­2’, url: ‘http://test­2.com‘, author: ‘JO’ }
]

GET​
 /api/posts/:post_id
{ title: ‘Article’, url: ‘http://test.com’, author: ‘JO’ }
