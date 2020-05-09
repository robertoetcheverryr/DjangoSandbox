from selenium import webdriver
import unittest


class NewVisitorTest(unittest.TestCase):

    def setUp(self):
        self.browser = webdriver.Firefox()

    def tearDown(self):
        self.browser.quit()

    def test_can_start_a_list_and_retrieve_it_later(self):
        # Edith has heard about a cool new online to-do app. She goes
        # to check out its homepage
        self.browser.get('http://localhost:8000')

        # She notices the page title and header mention to-do lists
        self.assertIn('To-Do', self.browser.title)
        self.fail('Finish the test!')

        # She is invited to enter a to-do item straight away
        # User is invited to enter a to-do item right away

        # Enter a task and when hitting enter the pages refreshes
        # and lists the task and a number in an itemized list

        # There is still a text box to add tasks

        # Adding another task refreshes the page and shows both

        # The page mentions that to access this specific list in the future
        # you have to remember the current URL

        # A brand new visit to that URL confirms that the tasks are there


if __name__ == '__main__':
    unittest.main(warnings='ignore')
