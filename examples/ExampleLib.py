from robot.api.deco import keyword
from robot.libraries.BuiltIn import BuiltIn

class ExampleLib:

    ROBOT_LIBRARY_SCOPE = 'TEST SUITE'

    def __init__(self, str_val):
        self.str = str_val

    @keyword(tags=['tag1', 'tag2'])
    def concatenate(self, str_val):
        return self.str + str_val

    @keyword('Hello')
    def say_hello(self, str_val):
        """Saying Hello to the given argument.

        Tags: tag1, tag2
        """
        return 'Hello ' + str_val

    def title_should_start_with(self, expected):
        seleniumlib = BuiltIn().get_library_instance('Selenium2Library')
        title = seleniumlib.get_title()
        if not title.startswith(expected):
            raise AssertionError("Title '%s' did not start with '%s'"
                                 % (title, expected))