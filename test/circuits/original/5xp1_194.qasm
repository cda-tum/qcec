// i 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16
// o 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16
OPENQASM 3.0;
include "stdgates.inc";
qubit[17] q;
cx q[10], q[9];
cx q[10], q[8];
cx q[10], q[7];
cx q[10], q[5];
cx q[11], q[8];
cx q[11], q[6];
cx q[15], q[7];
cx q[15], q[6];
cx q[15], q[5];
cx q[15], q[3];
cx q[16], q[6];
cx q[16], q[4];
ccx q[14], q[16], q[5];
ctrl(3) @ x q[10], q[11], q[12], q[9];
ctrl(3) @ x q[10], q[11], q[12], q[7];
ctrl(3) @ x q[10], q[11], q[12], q[0];
x q[13];
cx q[13], q[2];
cx q[13], q[1];
ccx q[13], q[14], q[4];
x q[14];
x q[13];
ccx q[13], q[14], q[3];
x q[10];
ctrl(4) @ x q[10], q[11], q[12], q[16], q[9];
ctrl(4) @ x q[10], q[11], q[12], q[16], q[8];
ctrl(4) @ x q[10], q[11], q[12], q[16], q[0];
ccx q[10], q[12], q[9];
ccx q[10], q[12], q[7];
cx q[14], q[2];
ctrl(3) @ x q[13], q[14], q[15], q[5];
ctrl(3) @ x q[13], q[14], q[15], q[4];
x q[13];
ctrl(5) @ x q[10], q[13], q[14], q[15], q[16], q[6];
x q[10];
x q[11];
ctrl(4) @ x q[10], q[11], q[15], q[16], q[8];
ctrl(4) @ x q[10], q[11], q[15], q[16], q[7];
ctrl(4) @ x q[11], q[12], q[15], q[16], q[8];
x q[10];
ctrl(6) @ x q[10], q[11], q[13], q[14], q[15], q[16], q[8];
ctrl(6) @ x q[10], q[11], q[13], q[14], q[15], q[16], q[7];
x q[10];
x q[12];
ctrl(3) @ x q[10], q[11], q[12], q[9];
ctrl(3) @ x q[10], q[11], q[12], q[8];
ctrl(3) @ x q[10], q[11], q[12], q[7];
x q[10];
ctrl(7) @ x q[10], q[11], q[12], q[13], q[14], q[15], q[16], q[8];
x q[11];
x q[13];
x q[14];
x q[12];
x q[16];
ctrl(3) @ x q[13], q[15], q[16], q[5];
ctrl(4) @ x q[10], q[13], q[14], q[16], q[6];
ctrl(3) @ x q[10], q[15], q[16], q[7];
ctrl(3) @ x q[10], q[15], q[16], q[6];
ctrl(7) @ x q[10], q[11], q[12], q[13], q[14], q[15], q[16], q[9];
ctrl(7) @ x q[10], q[11], q[12], q[13], q[14], q[15], q[16], q[8];
ctrl(7) @ x q[10], q[11], q[12], q[13], q[14], q[15], q[16], q[0];
ctrl(6) @ x q[10], q[11], q[13], q[14], q[15], q[16], q[7];
x q[15];
ctrl(5) @ x q[10], q[13], q[14], q[15], q[16], q[7];
x q[10];
x q[16];
ctrl(3) @ x q[11], q[15], q[16], q[7];
ctrl(4) @ x q[10], q[14], q[15], q[16], q[6];
x q[12];
ctrl(6) @ x q[10], q[11], q[12], q[14], q[15], q[16], q[8];
ctrl(5) @ x q[10], q[12], q[14], q[15], q[16], q[8];
x q[16];
ctrl(4) @ x q[13], q[14], q[15], q[16], q[7];
ctrl(4) @ x q[13], q[14], q[15], q[16], q[6];
ctrl(4) @ x q[13], q[14], q[15], q[16], q[5];
x q[13];
ctrl(7) @ x q[10], q[11], q[12], q[13], q[14], q[15], q[16], q[9];
ctrl(7) @ x q[10], q[11], q[12], q[13], q[14], q[15], q[16], q[8];
ctrl(6) @ x q[10], q[11], q[13], q[14], q[15], q[16], q[7];
ctrl(5) @ x q[10], q[13], q[14], q[15], q[16], q[7];
x q[14];
ctrl(6) @ x q[10], q[11], q[12], q[14], q[15], q[16], q[9];
ctrl(6) @ x q[10], q[11], q[12], q[14], q[15], q[16], q[8];
x q[11];
ctrl(4) @ x q[10], q[11], q[14], q[15], q[7];
