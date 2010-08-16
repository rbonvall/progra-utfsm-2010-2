from pygments.lexers.compiled import FortranLexer

def setup(app):
    app.add_lexer('custom_fortran', FortranLexer())

