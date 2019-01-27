/*
* Copyright (c) 2019 Keiron O'Shea.
*
* This program is free software; you can redistribute it and/or
* modify it under the terms of the GNU General Public
* License as published by the Free Software Foundation; either
* version 3 of the License, or (at your option) any later version.
*
* This program is distributed in the hope that it will be useful,
* but WITHOUT ANY WARRANTY; without even the implied warranty of
* MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
* General Public License for more details.
*
* You should have received a copy of the GNU General Public
* License along with this program; if not, write to the
* Free Software Foundation, Inc., 51 Franklin Street, Fifth Floor,
* Boston, MA 02110-1301 USA
*/


class Tokeniser.Test : Object {
    public static int main (string[] args) {
        string[] testResultOne = {"hello", "world"};
        string[] testResultTwo = {"Eunice", "has", "fleas"};

        assert_equal ("hello, world!", testResultOne);
        assert_equal ("Eunice has fleas.", testResultTwo);

        return 0;
    }

    static void assert_equal (string input, string[] result) {
        var tokeniser = new Tokeniser ();
        
        tokeniser.text = input;

        string[] tokeniser_result = tokeniser.split ();

        string tokeniserResultStr = string.joinv (",", tokeniser_result);
        string resultStr = string.joinv (",", result);

        if (tokeniserResultStr != resultStr) {
            error ("%s is %s but should be %s", input, tokeniserResultStr, resultStr);
        }
         
    }

}
