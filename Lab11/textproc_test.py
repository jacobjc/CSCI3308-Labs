#!/usr/bin/env python3
# -*- coding: utf-8 -*-
#BUGS:
#-4 digits for end of phone number
#-count_alpha didn't have uppercase
#-0s not counted as number for is_phonenumber and count_numeric
#i not included in vowels
#JACOB CHRISTIANSEN

import unittest
import textproc

class TextprocTestCase(unittest.TestCase):

    @classmethod
    def setUpClass(cls):
        pass

    @classmethod
    def tearDownClass(cls):
        pass

    def setUp(self):
        pass

    def tearDown(self):
        pass

    def test_raise_error(self):
        var = 33.4
        self.assertRaises(Exception, lambda:textproc.Processor(var))

    def test_count(self):
        word = "w0rd"
        num = 4
        ret = textproc.Processor(word).count()
        self.assertEqual(ret, num)

    def test_count_alpha(self):
        word = "w0rDs"
        num = 4
        ret = textproc.Processor(word).count_alpha()
        self.assertEqual(ret, num)

    def test_count_numeric(self):
        word = "w0Rd"
        num = 1
        ret = textproc.Processor(word).count_numeric()
        self.assertEqual(ret, num)

    def test_count_vowels(self):
        word = "w0RdiEeI"
        num = 4
        ret = textproc.Processor(word).count_vowels()
        self.assertEqual(ret, num)

    def test_is_phonenumber(self):
        word = "207.703.9000"
        ans = True
        ret = textproc.Processor(word).is_phonenumber()
        self.assertEqual(ret, ans)


    def test_init(self):
        text = "tesing123"
        p = textproc.Processor(text)
        self.assertEqual(p.text, text, "'text' does not match input")

    # Add Your Test Cases Here...

# Main: Run Test Cases
if __name__ == '__main__':
    unittest.main()