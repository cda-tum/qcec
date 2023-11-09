[![PyPI](https://img.shields.io/pypi/v/mqt.qcec?logo=pypi&style=flat-square)](https://pypi.org/project/mqt.qcec/)
![OS](https://img.shields.io/badge/os-linux%20%7C%20macos%20%7C%20windows-blue?style=flat-square)
[![License: MIT](https://img.shields.io/badge/license-MIT-blue.svg?style=flat-square)](https://opensource.org/licenses/MIT)
[![CI](https://img.shields.io/github/actions/workflow/status/cda-tum/mqt-qcec/ci.yml?branch=main&style=flat-square&logo=github&label=ci)](https://github.com/cda-tum/mqt-qcec/actions/workflows/ci.yml)
[![CD](https://img.shields.io/github/actions/workflow/status/cda-tum/mqt-qcec/cd.yml?style=flat-square&logo=github&label=cd)](https://github.com/cda-tum/mqt-qcec/actions/workflows/cd.yml)
[![Documentation](https://img.shields.io/readthedocs/qcec?logo=readthedocs&style=flat-square)](https://mqt.readthedocs.io/projects/qcec)
[![codecov](https://img.shields.io/codecov/c/github/cda-tum/mqt-qcec?style=flat-square&logo=codecov)](https://codecov.io/gh/cda-tum/mqt-qcec)

<p align="center">
 <picture>
   <source media="(prefers-color-scheme: dark)" srcset="https://raw.githubusercontent.com/cda-tum/qcec/main/docs/source/_static/mqt_light.png" width="60%">
   <img src="https://raw.githubusercontent.com/cda-tum/qcec/main/docs/source/_static/mqt_dark.png" width="60%">
 </picture>
 </p>

# MQT QCEC - A tool for Quantum Circuit Equivalence Checking

A tool for quantum circuit equivalence checking developed as part of the [_Munich Quantum Toolkit_](https://mqt.readthedocs.io) (_MQT_)[^1] by the [Chair for Design Automation](https://www.cda.cit.tum.de/) at the [Technical University of Munich](https://www.tum.de/).
It builds upon [MQT Core](https://github.com/cda-tum/mqt-core), which forms the backbone of the MQT.

<p align="center">
  <a href="https://mqt.readthedocs.io/projects/qcec">
  <img width=30% src="https://img.shields.io/badge/documentation-blue?style=for-the-badge&logo=read%20the%20docs" alt="Documentation" />
  </a>
</p>

If you have any questions, feel free to contact us via [quantum.cda@xcit.tum.de](mailto:quantum.cda@xcit.tum.de) or by creating an issue on [GitHub](https://github.com/cda-tum/mqt-qcec/issues).

## Getting Started

QCEC is available via [PyPI](https://pypi.org/project/mqt.qcec/) for Linux, macOS, and Windows and supports Python 3.8 to 3.12.

```console
(venv) $ pip install mqt.qcec
```

The following code gives an example on the usage:

```python3
from mqt import qcec

# verify the equivalence of two circuits provided as qasm files
result = qcec.verify("circ1.qasm", "circ2.qasm")

# print the result
print(result.equivalence)
```

**Detailed documentation on all available methods, options, and input formats is available at [ReadTheDocs](https://mqt.readthedocs.io/projects/qcec).**

## System Requirements and Building

The implementation is compatible with any C++17 compiler, a minimum CMake version of 3.19, and Python 3.8+.
Please refer to the [documentation](https://mqt.readthedocs.io/projects/qcec) on how to build the project.

Building (and running) is continuously tested under Linux, macOS, and Windows using the [latest available system versions for GitHub Actions](https://github.com/actions/virtual-environments).

## References

QCEC has been developed based on methods proposed in the following papers:

[![a](https://img.shields.io/static/v1?label=arXiv&message=2004.08420&color=inactive&style=flat-square)](https://arxiv.org/abs/2004.08420)
L. Burgholzer and R. Wille, "[Advanced Equivalence Checking for Quantum Circuits](https://arxiv.org/abs/2004.08420)," Transactions on CAD of Integrated Circuits and Systems (TCAD), 2021

[![a](https://img.shields.io/static/v1?label=arXiv&message=2009.02376&color=inactive&style=flat-square)](https://arxiv.org/abs/2009.02376)
L. Burgholzer, R. Raymond, and R. Wille, "[Verifying Results of the IBM Qiskit Quantum Circuit Compilation Flow](https://arxiv.org/abs/2009.02376)," in IEEE International Conference on Quantum Computing (QCE), 2020

[![a](https://img.shields.io/static/v1?label=arXiv&message=2011.07288&color=inactive&style=flat-square)](https://arxiv.org/abs/2011.07288)
L. Burgholzer, R. Kueng, and R. Wille, "[Random Stimuli Generation for the Verification of Quantum Circuits](https://arxiv.org/abs/2011.07288)," in Asia and South Pacific Design Automation Conference (ASP-DAC), 2021

[![a](https://img.shields.io/static/v1?label=arXiv&message=2106.01099&color=inactive&style=flat-square)](https://arxiv.org/abs/2106.01099)
L. Burgholzer and R. Wille, "[Handling Non-Unitaries in Quantum Circuit Equivalence Checking](https://arxiv.org/abs/2106.01099)," in Design Automation Conference (DAC), 2022

[![a](https://img.shields.io/static/v1?label=arXiv&message=2208.12820&color=inactive&style=flat-square)](https://arxiv.org/abs/2208.12820)
T. Peham, L. Burgholzer, and R. Wille, "[Equivalence Checking of Quantum Circuits with the ZX-Calculus](https://arxiv.org/abs/2208.12820)," in Journal of Emerging and Selected Topics in Circuits and Systems (JETCAS), 2022

[![a](https://img.shields.io/static/v1?label=arXiv&message=2210.12166&color=inactive&style=flat-square)](https://arxiv.org/abs/2210.12166)
T. Peham, L. Burgholzer, and R. Wille, "[Equivalence Checking of Parameterized Quantum Circuits: Verifying the Compilation of Variational Quantum Algorithms](https://arxiv.org/abs/2210.12166)," in Asia and South Pacific Design Automation Conference (ASP-DAC), 2023

[^1]: The Munich Quantum Toolkit was formerly known under the acronym _JKQ_ and developed by the [Institute for Integrated Circuits](https://iic.jku.at/eda/) at the [Johannes Kepler University Linz](https://jku.at)).

---

## Acknowledgements

The Munich Quantum Toolkit has been supported by the European
Research Council (ERC) under the European Union's Horizon 2020 research and innovation program (grant agreement
No. 101001318), the Bavarian State Ministry for Science and Arts through the Distinguished Professorship Program, as well as the
Munich Quantum Valley, which is supported by the Bavarian state government with funds from the Hightech Agenda Bayern Plus.

<p align="center">
<picture>
<source media="(prefers-color-scheme: dark)" srcset="https://raw.githubusercontent.com/cda-tum/mqt-core/main/docs/_static/tum_dark.svg" width="28%">
<img src="https://raw.githubusercontent.com/cda-tum/mqt-core/main/docs/_static/tum_light.svg" width="28%">
</picture>
<picture>
<img src="https://raw.githubusercontent.com/cda-tum/mqt-core/main/docs/_static/logo-bavaria.svg" width="16%">
</picture>
<picture>
<source media="(prefers-color-scheme: dark)" srcset="https://raw.githubusercontent.com/cda-tum/mqt-core/main/docs/_static/erc_dark.svg" width="24%">
<img src="https://raw.githubusercontent.com/cda-tum/mqt-core/main/docs/_static/erc_light.svg" width="24%">
</picture>
<picture>
<img src="https://raw.githubusercontent.com/cda-tum/mqt-core/main/docs/_static/logo-mqv.svg" width="28%">
</picture>
</p>
