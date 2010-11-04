# -*- coding: utf-8 -*-

import sys, os

# If extensions (or modules to document with autodoc) are in another directory,
# add these directories to sys.path here. If the directory is relative to the
# documentation root, use os.path.abspath to make it absolute, like shown here.
#sys.path.append(os.path.abspath('.'))

# -- General configuration -----------------------------------------------------

sys.path.insert(0, '.')

extensions = [
    #'sphinx.ext.pngmath',
    'sphinx.ext.jsmath',
    'modules.fortran',
    'modules.extra_texescape',
    'rst2pdf.pdfbuilder',
]

templates_path = ['_templates']
jsmath_path = 'jsMath/easy/load.js'

source_suffix = '.rst'
master_doc = 'index'
highlight_language = 'custom_fortran'
default_role = 'math'

project = u'Programación 2-2010'
copyright = u'2010, Roberto Bonvallet'
version = '' # The short X.Y version.
release = '' # The full version, including alpha/beta/rc tags.
language = 'es'

# List of documents that shouldn't be included in the build.
unused_docs = ['disqus', 'calendario']

# List of directories, relative to source directory, that shouldn't be searched
# for source files.
exclude_trees = ['_build']

# If true, '()' will be appended to :func: etc. cross-reference text.
#add_function_parentheses = True

pygments_style = 'sphinx'

# -- Options for HTML output ---------------------------------------------------

html_theme = 'sphinxdoc'
html_theme_options = {
    'nosidebar': True,
}
html_title = u'Programación, 2do semestre de 2010'
html_short_title = u'Programación 2-2010'
#html_logo = None
#html_favicon = None
html_style = 'progra.css'

html_static_path = ['_static']

# Custom sidebar templates, maps document names to template names.
#html_sidebars = {}

# Additional templates that should be rendered to pages, maps page names to
# template names.
#html_additional_pages = {}

html_use_modindex = False
html_use_index = True
#html_show_sourcelink = True

# If true, an OpenSearch description file will be output, and all pages will
# contain a <link> tag referring to it.  The value of this option must be the
# base URL from which the finished HTML is served.
#html_use_opensearch = ''

htmlhelp_basename = 'progra-utfsm-2010-2'

# -- Options for LaTeX output --------------------------------------------------

latex_paper_size = 'letter'
#latex_font_size = '10pt'

# Grouping the document tree into LaTeX files. List of tuples
# (source start file, target name, title, author, documentclass [howto/manual]).
latex_documents = [
  ('index', 'progra.tex', u'Programación 2do semestre 2010', u'Roberto Bonvallet', 'manual'),
]

latex_elements = {
    'fontpkg': '\\usepackage{mathpazo}',
    'pointsize': '12pt',
    #'preamble': '\\usepackage[spanish]{babel} \selectlanguage{spanish}',
}

#latex_logo = None
#latex_use_parts = False   # parts instead of chapters in manual
#latex_preamble = ''
#latex_appendices = []   # docs to append as appendix to all manuals

latex_use_modindex = False

pdf_documents = [
  ('index', 'progra', 'progra', 'Roberto Bonvallet'),
]
pdf_stylesheets = ['sphinx', 'kerning', 'letter']

