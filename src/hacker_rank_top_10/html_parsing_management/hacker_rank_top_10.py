from src.http_management.http_request_manager import HttpRequestManager
from bs4 import BeautifulSoup

class HackerRankNewsParser():

    def __init__(self, html_data):
        self.parsed_html = BeautifulSoup(html_data, 'html.parser')

    def _get_all_news_items(self):
        return self.parsed_html.find_all("tr", {"class": "athing"})

    def _raw_top_ten_news_items(self):
        return self._get_all_news_items()[:10]

    def _generate_keys_from_top_10_news(self):
        key_list = []
        for item in self._raw_top_ten_news_items():
            key_list.append(item.find('span', {'class': 'rank'}).text.strip('.'))

        return key_list

    def _generate_data_dict_values_from_top_10_news(self):
        top_10_news_data = []
        for item in self._raw_top_ten_news_items():
            top_10_news_data.append({"story": item.find('a', {"class": "storylink"}).text,
                                     "link": item.find('a', {"class": "storylink"}).attrs['href']})

        return top_10_news_data

    def generate_top_10(self):
        return dict(zip(self._generate_keys_from_top_10_news(), self._generate_data_dict_values_from_top_10_news()))



if __name__ == '__main__':
    print(HackerRankNewsParser().generate_top_10())
