/*
* This file is part of JKQ QCEC library which is released under the MIT license.
* See file README.md or go to http://iic.jku.at/eda/research/quantum_verification/ for more information.
*/

#ifndef QCEC_STATETYPE_HPP
#define QCEC_STATETYPE_HPP

#include <exception>
#include <iostream>

namespace ec {
    enum class StateType {
        ComputationalBasis,
        Random1QBasis,
        Stabilizer
    };

    std::string toString(const StateType& type) {
        switch (type) {
            case StateType::ComputationalBasis:
                return "computational_basis";
            case StateType::Random1QBasis:
                return "random_1Q_basis";
            case StateType::Stabilizer:
                return "stabilizer";
        }
        return " ";
    }

    StateType stimuliTypeFromString(const std::string& type) {
        if (type == "computational_basis" || type == "0") {
            return StateType::ComputationalBasis;
        } else if (type == "random_1Q_basis" || type == "1") {
            return StateType::Random1QBasis;
        } else if (type == "stabilizer" || type == "2") {
            return StateType::Stabilizer;
        } else {
            throw std::runtime_error("Unknown quantum state type: " + type);
        }
    }

    std::istream& operator>>(std::istream& in, StateType& type) {
        std::string token;
        in >> token;
        type = stimuliTypeFromString(token);
        return in;
    }

    std::ostream& operator<<(std::ostream& out, StateType& type) {
        out << toString(type);
        return out;
    }
} // namespace ec

#endif //QCEC_STATETYPE_HPP
