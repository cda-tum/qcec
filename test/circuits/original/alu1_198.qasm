// i 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19
// o 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19
OPENQASM 3.0;
include "stdgates.inc";
qubit[20] q;
ctrl(3) @ x q[8], q[12], q[16], q[4];
x q[7];
x q[6];
x q[5];
x q[4];
ctrl(3) @ x q[8], q[13], q[17], q[5];
ctrl(3) @ x q[8], q[14], q[18], q[6];
ctrl(3) @ x q[8], q[15], q[19], q[7];
ctrl(3) @ x q[9], q[12], q[16], q[4];
ccx q[9], q[16], q[4];
ctrl(3) @ x q[9], q[13], q[17], q[5];
ccx q[9], q[17], q[5];
ctrl(3) @ x q[9], q[14], q[18], q[6];
ccx q[9], q[18], q[6];
ctrl(3) @ x q[9], q[15], q[19], q[7];
ccx q[9], q[19], q[7];
x q[17];
x q[11];
ctrl(3) @ x q[11], q[13], q[17], q[1];
x q[13];
x q[10];
ctrl(3) @ x q[10], q[13], q[17], q[1];
x q[18];
ctrl(3) @ x q[11], q[14], q[18], q[2];
x q[14];
ctrl(3) @ x q[10], q[14], q[18], q[2];
x q[19];
ctrl(3) @ x q[11], q[15], q[19], q[3];
x q[15];
ctrl(3) @ x q[10], q[15], q[19], q[3];
x q[16];
ctrl(3) @ x q[11], q[12], q[16], q[0];
