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

public class VNLPLib.Tokenizer : Object {

    private char[] toRemove = {',', '.', '!', '?', '\'', '"', ':', '\t', '\n', '(', ')', '-'};

    private string _text;

    public string text {
        get { return _text; }
        set { _text = value; }
    }

    public string[] split() {
        string stripped = this._text.strip ();

        foreach (char c in this.toRemove) {
            stripped = stripped.replace (c.to_string (), "");
        }

        string[] split = stripped.split(" ");

        return split;
    }
}
