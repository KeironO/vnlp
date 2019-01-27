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

public class VNLPLib.Ngram : Object {

    private string _text;
    private int _num_grams;
    private string _pad;

    public string text {
        get { return _text; }
        set { _text = value; }
    }

    public int num_grams {
        get { return _num_grams; }
        set { _num_grams = value; }
    }

    public string pad {
        get { return _pad; }
        set { _pad = value; }
    }

    private string[]? calculate() {

        var tok = new Tokenizer ();
        return null;
    }
}
