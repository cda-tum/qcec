OPENQASM 2.0;
include "qelib1.inc";
qreg q[2];
qreg flag[1];
creg meas[3];
h q[0];
h q[1];
x flag[0];
cp(pi/2) q[1],flag[0];
cx q[1],q[0];
cp(-pi/2) q[0],flag[0];
cx q[1],q[0];
cp(pi/2) q[0],flag[0];
u2(0,0) q[0];
u1(-pi) q[1];
cx q[0],q[1];
u2(-pi,-pi) q[0];
u1(-pi) q[1];
