from src.http_management.http_request_manager import HttpRequestManager
from src.hacker_rank_top_10.html_parsing_management.hacker_rank_top_10 import HackerRankNewsParser

class HackerRankDataFactory():

    def __init__(self):
        self.http_manager = HttpRequestManager()

    def get_hackrank_news_top_10(self):
        self.http_manager.http_get_request('https://news.ycombinator.com/')
        return HackerRankNewsParser(self.http_manager.get_response_body_as_text()).generate_top_10()

