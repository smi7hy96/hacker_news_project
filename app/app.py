from flask import Flask, jsonify, render_template

from src.hackerank_news_data_factory import HackerRankDataFactory as HackerRankDataFactory

app = Flask(__name__)

application = app

@app.route("/")
def home():
    return render_template("home.html")

@app.route('/hacker-news-top-10')
def hacker_news_top_10():
    return jsonify(HackerRankDataFactory().get_hackrank_news_top_10())


if __name__ == '__main__':
    app.run()
