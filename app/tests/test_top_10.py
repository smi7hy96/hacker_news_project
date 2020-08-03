from app import app

client = app.test_client()
hacker_news_response = client.get("/hacker-news-top-10")
hacker_news_json_response = hacker_news_response.get_json()

print(len(hacker_news_json_response))


def test_response_successful():
    assert hacker_news_response.status_code == 200


def test_10_values_in_repsonse():
    assert len(hacker_news_json_response.keys()) == 10
    assert len(hacker_news_json_response.values()) == 10


