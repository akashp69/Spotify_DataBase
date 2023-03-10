Create database Spotify_1;

use Spotify_1;

create table Users(
userId int,
userName varchar(30)NOT NULL,
playlistNumber int NOT NULL,
PRIMARY KEY(userId)
);

INSERT Into users(userId,userName,playlistNumber)
values(1,"Akash",1),
(2,"Virat",2),
(3,"Rohit",3);

select*from users;

create table playlist(
playlistId int PRIMARY KEY,
playlistName int,
userId int,
foreign key(userId) references users(userId)
);

select * from playlist;

Alter table playlist 
modify playlistName varchar(40);


INSERT Into playlist(playlistId,playlistName,userId)
value(101,"Punjabi",1),
     (102,"Motivational",1),
	(103,"Dj",2),
    (104,"Old",2),
    (106,"Lofi",3),
    (107,"Gym",3);

create table tracks(
tracksId int PRIMARY KEY,
trackName varchar(30) NOT NULL,
playlistId int,
userId int,
foreign key(playlistId) references playlist(playlistId)
);    

INSERT Into tracks(tracksId,trackName,playlistID,userId)
value(11,"Sultan",101,1),
     (12,"Tere Te",101,1),
	(13,"we Rollin",102,1),
    (14,"Dostana",103,2),
    (15,"Daku",104,2),
    (16,"Baller",106,3),
    (17,"Hustle",107,3);
    
    select * from tracks;


select*
from Users Left JOIN playlist
ON playlist.userId = Users.userId
where Users.userId =2; 


#  I want to featched all the tracks that belongs to User 2 from playlist2

select trackName
from tracks
where trackName IN(select trackName from tracks where  playlistId=104);

----------------------------



