"""Sphinx configuration file."""
from __future__ import annotations

import warnings
from importlib import metadata
from pathlib import Path
from typing import TYPE_CHECKING

import pybtex.plugin
from pybtex.style.formatting.unsrt import Style as UnsrtStyle
from pybtex.style.template import field, href

ROOT = Path(__file__).parent.parent.resolve()


try:
    from mqt.qcec import __version__ as version
except ModuleNotFoundError:
    try:
        version = metadata.version("mqt.core")
    except ModuleNotFoundError:
        msg = (
            "Package should be installed to produce documentation! "
            "Assuming a modern git archive was used for version discovery."
        )
        warnings.warn(msg, stacklevel=1)

        from setuptools_scm import get_version

        version = get_version(root=str(ROOT), fallback_root=ROOT)

# Filter git details from version
release = version.split("+")[0]

if TYPE_CHECKING:
    from pybtex.database import Entry
    from pybtex.richtext import HRef

# -- Project information -----------------------------------------------------
project = "QCEC"
author = "Lukas Burgholzer"
language = "en"
project_copyright = "Chair for Design Automation, Technical University of Munich"

# -- General configuration ---------------------------------------------------
extensions = [
    "sphinx.ext.autodoc",
    "sphinx.ext.autosectionlabel",
    "sphinx.ext.intersphinx",
    "sphinx.ext.autosummary",
    "sphinx.ext.mathjax",
    "sphinx.ext.napoleon",
    "sphinx.ext.viewcode",
    "sphinx.ext.githubpages",
    "sphinxcontrib.bibtex",
    "sphinx_copybutton",
    "hoverxref.extension",
    "nbsphinx",
    "sphinxext.opengraph",
    "sphinx_autodoc_typehints",
]

pygments_style = "colorful"

add_module_names = False

modindex_common_prefix = ["mqt.qcec."]

intersphinx_mapping = {
    "python": ("https://docs.python.org/3", None),
    "qiskit": ("https://qiskit.org/documentation/", None),
    "mqt": ("https://mqt.readthedocs.io/en/latest/", None),
    "core": ("https://mqt.readthedocs.io/projects/core/en/latest/", None),
    "ddsim": ("https://mqt.readthedocs.io/projects/ddsim/en/latest/", None),
    "qmap": ("https://mqt.readthedocs.io/projects/qmap/en/latest/", None),
    "qecc": ("https://mqt.readthedocs.io/projects/qecc/en/latest/", None),
    "syrec": ("https://mqt.readthedocs.io/projects/syrec/en/latest/", None),
}
intersphinx_disabled_reftypes = ["*"]

nbsphinx_execute = "auto"
highlight_language = "python3"
nbsphinx_execute_arguments = [
    "--InlineBackend.figure_formats={'svg', 'pdf'}",
    "--InlineBackend.rc=figure.dpi=200",
]
nbsphinx_kernel_name = "python3"

autosectionlabel_prefix_document = True

hoverxref_auto_ref = True
hoverxref_domains = ["cite", "py"]
hoverxref_roles = []
hoverxref_mathjax = True
hoverxref_role_types = {
    "ref": "tooltip",
    "p": "tooltip",
    "labelpar": "tooltip",
    "class": "tooltip",
    "meth": "tooltip",
    "func": "tooltip",
    "attr": "tooltip",
    "property": "tooltip",
}
exclude_patterns = ["_build", "build", "**.ipynb_checkpoints", "Thumbs.db", ".DS_Store", ".env"]

typehints_use_signature = True
typehints_use_signature_return = True
typehints_use_rtype = False
napoleon_use_rtype = False


class CDAStyle(UnsrtStyle):
    """Custom style for including PDF links."""

    def format_url(self, _e: Entry) -> HRef:
        """Format URL field as a link to the PDF."""
        url = field("url", raw=True)
        return href()[url, "[PDF]"]


pybtex.plugin.register_plugin("pybtex.style.formatting", "cda_style", CDAStyle)

bibtex_bibfiles = ["refs.bib"]
bibtex_default_style = "cda_style"

copybutton_prompt_text = r"(?:\(venv\) )?(?:\[.*\] )?\$ "
copybutton_prompt_is_regexp = True
copybutton_line_continuation_character = "\\"

autosummary_generate = True

# -- Options for HTML output -------------------------------------------------
html_theme = "furo"
html_baseurl = "https://qcec.readthedocs.io/en/latest/"
html_static_path = ["_static"]
html_theme_options = {
    "light_logo": "mqt_dark.png",
    "dark_logo": "mqt_light.png",
    "source_repository": "https://github.com/cda-tum/qcec/",
    "source_branch": "main",
    "source_directory": "docs/source",
    "navigation_with_keys": True,
}
