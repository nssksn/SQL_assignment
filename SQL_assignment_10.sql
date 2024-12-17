/*全てついーとの内容と、それを投稿したユーザーの名前を取得してください。ただし、リプライもツイートとして扱い、
それがどのツイートに対するリプライかも表示してください

説明：tweetsテーブル、replysテーブル、usersテーブルを結合し、ツイートとリプライを含む全ての投稿とそれに関連するユーザー情報を取得します。*/

SELECT tweets.tweet, users.first_name, users.last_name
FROM tweets
INNER JOIN users
ON tweets.user_id = users.id
UNION ALL
SELECT replys.reply, users.first_name,users.last_name, tweets.tweet
INNER JOIN tweets
ON replys.tweet_id = tweets.id

