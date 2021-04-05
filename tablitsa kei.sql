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
VALUES (1, 'vadim', 'myasnikov', 'myaso@gmail.ru', 23, '45000'),
       (2, 'yulia', 'leshvanova', 'leshvanova2003@gmail.ru', 17, '35000'),
       (3, 'artyom', 'salikhov', 'artyom2022@gmail.com', 19, '58000'),
       (4, 'vadim', 'kim', 'kim2555@mail.ru', 19, '64000'),
       (6, 'vlad', 'stepanov', 'styopa2898@gmail.com', 19, '40000'),
       (7, 'nikita', 'kholod', '1mmswith12000@mail.ru', 19, '27000');

select id, name, last_name, email, price from users;