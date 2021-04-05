create table if not exists users
(
    id          serial primary key,
    name        varchar(255)        not null default '',
    last_name   varchar(255)        not null default '',
    email       varchar(255) UNIQUE not null default '',
    age         INTEGER DEFAULT 19,
    work_id     int,
    price       NUMERIC,

    primary key (id),
    UNIQUE (email)
);

create table if not exists works
(
    id          serial primary key,
    works_name  varchar(255) not null default '',
    status      bool
);

create table if not exists timing
(
    id      serial primary key,
    code    varchar(255) not null default '',
    track   uuid,
    work_id int
);

insert into users (id, name, last_name, email, age, price)
VALUES (1, 'vasya', 'pupkin', 'vasya@mail.ru', 21, '45000'),
       (2, 'mihail', 'ryabov', 'mihail.ryabov.2002@mail.ru', 19, '35000'),
       (3, 'anton', 'ershov', 'ahtoika12@gmail.com', 19, '58000'),
       (4, 'jenya', 'pochkin', 'pochka@mail.ru', 19, '64000'),
       (6, 'vova', 'kursanov', 'vovak@mail.ru', 19, '40000'),
       (7, 'egor', 'biridze', 'egor.biridze@mail.ru', 19, '27000');

select id, name, last_name, email, price from users;