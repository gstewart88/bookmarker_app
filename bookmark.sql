drop table bookmarks
create table bookmarks (
  id serial4 primry key,
  url varchar(255) not null,
  genre text,
  title text,
  details text
  ;
)

insert into bookmarks (url, genre, title, details) values ('http://www.reddit.com', 'Messageboard', 'Reddit', 'The Front Page Of The Internet')