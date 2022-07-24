from __future__ import annotations

from pathlib import Path

import pkg_resources
from mqt.qcec import Configuration, EquivalenceCheckingManager
from mqt.qcec.compilation_flow_profiles import AncillaMode, generate_profile_name
from qiskit import QuantumCircuit


def verify_compilation(
    original_circuit: QuantumCircuit | str,
    compiled_circuit: QuantumCircuit | str,
    optimization_level: int = 1,
    ancilla_mode: AncillaMode = AncillaMode.NO_ANCILLA,
    configuration: Configuration | None = None,
) -> EquivalenceCheckingManager.Results:
    """
    Verify that the ``compiled_circuit`` (compiled with a certain ``optimization_level`` amd ``ancilla_mode``) is equivalent to the ``original_circuit``.
    If ``configuration`` is not ``None``, it is used to configure the ``EquivalenceCheckingManager``.
    """

    if configuration is None:
        configuration = Configuration()

    # create the equivalence checker
    ecm = EquivalenceCheckingManager(original_circuit, compiled_circuit, configuration)

    # use the gate_cost scheme for the verification
    ecm.set_application_scheme("gate_cost")

    # get the pre-defined profile for the gate_cost scheme
    profile = pkg_resources.resource_filename(
        __name__,
        "profiles/" + generate_profile_name(optimization_level=optimization_level, mode=ancilla_mode),
    )
    ecm.set_gate_cost_profile(str(Path(__file__).resolve().parent.joinpath(profile)))

    # execute the check
    ecm.run()

    # obtain the result
    return ecm.get_results()
