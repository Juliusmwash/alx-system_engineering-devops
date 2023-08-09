#!/usr/bin/python3
"""
Module that defines count_words recursive function
"""
import requests


def count_words(subreddit, word_list, after=None, counts=None):
    """
    Recursively queries the Reddit API, parses article titles, and prints
    a sorted count of given keywords.

    :param subreddit: The name of the subreddit to search in.
    :param word_list: A list of keywords to count.
    :param after: The "after" parameter for pagination in Reddit API.
    :param counts: A dictionary to store keyword counts.
    """
    if counts is None:
        counts = {}
    if after is None:
        url = f"https://www.reddit.com/r/{subreddit}/hot.json"
    else:
        url = f"https://www.reddit.com/r/{subreddit}/hot.json?after={after}"

    headers = {"User-Agent": "Reddit Keyword Counter"}
    response = requests.get(url, headers=headers)

    if response.status_code == 200:
        data = response.json()
        articles = data["data"]["children"]

        for article in articles:
            title = article["data"]["title"].lower()
            for word in word_list:
                if word.lower() in title:
                    lowercase_word = word.lower()
                    if lowercase_word in counts:
                        counts[lowercase_word] += 1
                    else:
                        counts[lowercase_word] = 1

        after = data["data"]["after"]
        if after is not None:
            count_words(subreddit, word_list, after, counts)
        else:
            sorted_counts = sorted(counts.items(), key=lambda x: (-x[1], x[0]))
            for word, count in sorted_counts:
                print(f"{word}: {count}")
    else:
        print(f"Error: Unable to fetch data from subreddit '{subreddit}'")
