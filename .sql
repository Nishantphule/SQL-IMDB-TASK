create database moviedb;

use moviedb;

-- 1 create a table for movie details
CREATE TABLE Movie (
  movie_id INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
  title VARCHAR(255),
  release_date DATE,
  duration INT,
  description TEXT
);

insert into Movie(title, release_date, duration, description) values('Insidious: The Red Door', '2023/7/06', 107, 'The Lamberts must go deeper into The Further than ever before to put their demons to rest once and for all.');
insert into Movie(title, release_date, duration, description) values('Mission: Impossible - Dead Reckoning Part One', '2023/7/12', 163, 'Ethan Hunt and his IMF team must track down a dangerous weapon before it falls into the wrong hands.');
insert into Movie(title, release_date, duration, description) values('Spider-Man: Across the Spider-Verse', '2023/6/2', 140, 'Miles Morales catapults across the Multiverse, where he encounters a team of Spider-People charged with protecting its very existence. When the heroes clash on how to handle a new threat, Miles must redefine what it means to be a hero.');
insert into Movie(title, release_date, duration, description) values('Guardians of the Galaxy Vol. 3', '2023/5/5', 150, 'Still reeling from the loss of Gamora, Peter Quill rallies his team to defend the universe and one of their own - a mission that could mean the end of the Guardians if not successful.');
insert into Movie(title, release_date, duration, description) values('Top Gun: Maverick', '2022/5/27', 130, 'After thirty years, Maverick is still pushing the envelope as a top naval aviator, but must confront ghosts of his past when he leads TOP GUNs elite graduates on a mission that demands the ultimate sacrifice from those chosen to fly it.');



-- 2 create a table for media details
CREATE TABLE Media (
  media_id INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
  movie_id INT,
  media_type VARCHAR(50),
  media_url VARCHAR(255),
  FOREIGN KEY (movie_id) REFERENCES Movie(movie_id)
);

insert into Media(movie_id, media_type, media_url) values(5,'image','https://www.imdb.com/title/tt1745960/mediaviewer/rm3294367489/?ref_=tt_ov_i');
insert into Media(movie_id, media_type, media_url) values(4,'image','https://www.imdb.com/title/tt1745960/mediaviewer/rm3294367489/?ref_=tt_ov_i');
insert into Media(movie_id, media_type, media_url) values(3,'image','https://www.imdb.com/title/tt1745960/mediaviewer/rm3294367489/?ref_=tt_ov_i');
insert into Media(movie_id, media_type, media_url) values(2,'image','https://www.imdb.com/title/tt1745960/mediaviewer/rm3294367489/?ref_=tt_ov_i');
insert into Media(movie_id, media_type, media_url) values(1,'image','https://www.imdb.com/title/tt1745960/mediaviewer/rm3294367489/?ref_=tt_ov_i');



-- 3 genre table
CREATE TABLE Genre (
  genre_id INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
  genre_name VARCHAR(50)
);

insert into Genre(genre_name) values('Sci-Fi');
insert into Genre(genre_name) values('Drama');
insert into Genre(genre_name) values('Action');
insert into Genre(genre_name) values('Adventure');
insert into Genre(genre_name) values('Horror');



-- 4 Movie genre table
CREATE TABLE Movie_Genre (
  movie_id INT,
  genre_id INT,
  FOREIGN KEY (movie_id) REFERENCES Movie(movie_id),
  FOREIGN KEY (genre_id) REFERENCES Genre(genre_id)
);

insert into Movie_Genre(movie_id, genre_id) values(1,5);
insert into Movie_Genre(movie_id, genre_id) values(2,4);
insert into Movie_Genre(movie_id, genre_id) values(3,2);
insert into Movie_Genre(movie_id, genre_id) values(4,5);
insert into Movie_Genre(movie_id, genre_id) values(4,3);
insert into Movie_Genre(movie_id, genre_id) values(5,4);



-- 5 User table
CREATE TABLE User (
  user_id INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
  username VARCHAR(50),
);

insert into User(username) values('Nishant');
insert into User(username) values('Raj');
insert into User(username) values('Priya');
insert into User(username) values('Shubham');



-- 6 Review table
CREATE TABLE Review (
  review_id INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
  movie_id INT,
  user_id INT,
  rating DECIMAL(2,1),
  comment TEXT,
  FOREIGN KEY (movie_id) REFERENCES Movie(movie_id),
  FOREIGN KEY (user_id) REFERENCES User(user_id)
);

insert into Review(movie_id, user_id, rating, comment) values(1, 1, 8, "I sure would like to see a resurrection of a up dated Seahunt series with the tech they have today it would bring back the kid excitement in me.I grew up on black and white TV and Seahunt with Gunsmoke were my hero's every week.You have my vote for a comeback of a new sea hunt.We need a change of pace in TV and this would work for a world of under water adventure.Oh by the way thank you for an outlet like this to view many viewpoints about TV and the many movies.So any ole way I believe I've got what I wanna say.Would be nice to read some more plus points about sea hunt.If my rhymes would be 10 lines would you let me submit,or leave me out to be in doubt and have me to quit,If this is so then I must go so lets do it.");
insert into Review(movie_id, user_id, rating, comment) values(2, 4, 9, "I saw this movie when I was about 12 when it came out. I recall the scariest scene was the big bird eating men dangling helplessly from parachutes right out of the air. The horror. The horror.<br /><br />As a young kid going to these cheesy B films on Saturday afternoons, I still was tired of the formula for these monster type movies that usually included the hero, a beautiful woman who might be the daughter of a professor and a happy resolution when the monster died in the end. I didn't care much for the romantic angle as a 12 year old and the predictable plots. I love them now for the unintentional humor.<br /><br />But, about a year or so later, I saw Psycho when it came out and I loved that the star, Janet Leigh, was bumped off early in the film. I sat up and took notice at that point. Since screenwriters are making up the story, make it up to be as scary as possible and not from a well-worn formula. There are no rules.");
insert into Review(movie_id, user_id, rating, comment) values(4, 2, 3, "An awful film! It must have been up against some real stinkers to be nominated for the Golden Globe. They've taken the story of the first famous female Renaissance painter and mangled it beyond recognition. My complaint is not that they've taken liberties with the facts; if the story were good, that would perfectly fine. But it's simply bizarre -- by all accounts the true story of this artist would have made for a far better film, so why did they come up with this dishwater-dull script? I suppose there weren't enough naked people in the factual version. It's hurriedly capped off in the end with a summary of the artist's life -- we could have saved ourselves a couple of hours if they'd favored the rest of the film with same brevity.");
insert into Review(movie_id, user_id, rating, comment) values(3, 1, 7, "Stephen Hawkings is a genius. He is the king of geniuses. Watching this movie makes me feel dumb. But it's a great movie. Not highly entertaining, but very very intriguing. The movie centers around wheelchair bound Stephen Hawkings, a man who makes Einstein look average, and his theories and scientific discoveries about the universe, time, the galaxy, and black holes. Everyone at sometime or another during a really intense high comes to a moment when they think they'v got the universe and the cosmos figured out and they swear as soon as they sober up they'll write it all down. Well here is a man who actually held that feeling for more then six hours. Here is a man who despite suffering from Lou Gehrig's disease has become the greatest mind the world has yet seen. Watch this and listen in on how he has formulated theories on black holes. Awesome. You won't be the same after you see it.");
insert into Review(movie_id, user_id, rating, comment) values(5, 3, 6, "I thought this was a wonderful way to spend time on a too hot summer weekend, sitting in the air conditioned theater and watching a light-hearted comedy. The plot is simplistic, but the dialogue is witty and the characters are likable (even the well bread suspected serial killer). While some may be disappointed when they realize this is not Match Point 2: Risk Addiction, I thought it was proof that Woody Allen is still fully in control of the style many of us have grown to love.<br /><br />This was the most I'd laughed at one of Woody's comedies in years (dare I say a decade?). While I've never been impressed with Scarlet Johanson, in this she managed to tone down her sexy image and jumped right into a average, but spirited young woman.<br /><br />This may not be the crown jewel of his career, but it was wittier than Devil Wears Prada and more interesting than Superman a great comedy to go see with friends.");
insert into Review(movie_id, user_id, rating, comment) values(4, 2, 8, "Stephen Hawkings is a genius. He is the king of geniuses. Watching this movie makes me feel dumb. But it's a great movie. Not highly entertaining, but very very intriguing. The movie centers around wheelchair bound Stephen Hawkings, a man who makes Einstein look average, and his theories and scientific discoveries about the universe, time, the galaxy, and black holes. Everyone at sometime or another during a really intense high comes to a moment when they think they'v got the universe and the cosmos figured out and they swear as soon as they sober up they'll write it all down. Well here is a man who actually held that feeling for more then six hours. Here is a man who despite suffering from Lou Gehrig's disease has become the greatest mind the world has yet seen. Watch this and listen in on how he has formulated theories on black holes. Awesome. You won't be the same after you see it.");



-- 7 Artists table
CREATE TABLE Artist (
  artist_id INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
  artist_name VARCHAR(255)
);

insert into Artist(artist_name) values('Patrick Wilson');
insert into Artist(artist_name) values('Shameik Moore');
insert into Artist(artist_name) values('Chris Pratt');
insert into Artist(artist_name) values('Pom Klementieff');
insert into Artist(artist_name) values('Tom Cruise');



-- 8 Skill table
CREATE TABLE Skill (
  skill_id INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
  skill_name VARCHAR(50)
);

insert into Skill(skill_name) values("Actor");
insert into Skill(skill_name) values("Director");
insert into Skill(skill_name) values("Voice Artist");
insert into Skill(skill_name) values("Stunt");
insert into Skill(skill_name) values("Producer");



-- 9 artist skill table
CREATE TABLE Artist_Skill (
  artist_id INT,
  skill_id INT,
  FOREIGN KEY (artist_id) REFERENCES Artist(artist_id),
  FOREIGN KEY (skill_id) REFERENCES Skill(skill_id)
);

insert into Artist_Skill(artist_id, skill_id) values(1, 1);
insert into Artist_Skill(artist_id, skill_id) values(2, 1);
insert into Artist_Skill(artist_id, skill_id) values(3, 1);
insert into Artist_Skill(artist_id, skill_id) values(4, 1);
insert into Artist_Skill(artist_id, skill_id) values(5, 1);
insert into Artist_Skill(artist_id, skill_id) values(1, 2);
insert into Artist_Skill(artist_id, skill_id) values(5, 4);



-- 10 Role table
CREATE TABLE Role (
  role_id INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
  role_name VARCHAR(50)
);

insert into Role(role_name) values('Actor');
insert into Role(role_name) values("Director");
insert into Role(role_name) values("Voice Artist");
insert into Role(role_name) values("Producer");



-- 11 Movie Artist role table
CREATE TABLE Movie_Artist_Role (
  movie_id INT,
  artist_id INT,
  role_id INT,
  FOREIGN KEY (movie_id) REFERENCES Movie(movie_id),
  FOREIGN KEY (artist_id) REFERENCES Artist(artist_id),
  FOREIGN KEY (role_id) REFERENCES Role(role_id)
);

insert into Movie_Artist_Role(movie_id, artist_id, role_id) values(1, 1, 1);
insert into Movie_Artist_Role(movie_id, artist_id, role_id) values(1, 1, 2);
insert into Movie_Artist_Role(movie_id, artist_id, role_id) values(3, 2, 1);
insert into Movie_Artist_Role(movie_id, artist_id, role_id) values(4, 3, 3);
insert into Movie_Artist_Role(movie_id, artist_id, role_id) values(4, 4, 1);
insert into Movie_Artist_Role(movie_id, artist_id, role_id) values(5, 5, 1);

select * from Role;