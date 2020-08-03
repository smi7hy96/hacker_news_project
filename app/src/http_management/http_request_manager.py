import requests


class HttpRequestManager():

    def __init__(self):
        self.response = None

    # Call management
    def http_get_request(self, url):
        self.response = requests.get(url)

    # Response Management
    def get_response_body_as_text(self):
        return self.response.text
