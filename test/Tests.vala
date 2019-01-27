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


class VNLPLib.Tests : Object {
    public static int main (string[] args) {

        // Tokenizer Tests
        string[] tokenizerTestResultOne = {"hello", "world"};
        string[] tokenizerTestResultTwo = {"Eunice", "has", "fleas"};

        tokenizerAssertEqual ("hello, world!", tokenizerTestResultOne);
        tokenizerAssertEqual ("Eunice has fleas.", tokenizerTestResultTwo);
        
        // Ngram Tests

        string[,] testResultThree = {{"hello", "world"}, {"world", "people"}};

        return 0;
    }

    static void tokenizerAssertEqual (string input, string[] result) {
        var tokenizer = new Tokenizer ();
        
        tokenizer.text = input;

        string[] tokenizerResult = tokenizer.split ();

        if (tokenizerResult != result) {
            error ("Error in Tokenizer");
        }
         
    }

    static void ngramAssertEqual(string input, string[,] result) {
        var ngram = new Ngram ();
        ngram.text = input;

        string[] ngramResult = ngram.calculate ();
    }

}
