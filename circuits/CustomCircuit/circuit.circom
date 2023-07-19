pragma circom 2.0.0;


template CustomCircuit(){

    // these are the signal inputs that we are giving from outside
    signal input a;
    signal input b;

    // these are the signals from gates
    signal x;
    signal y;

    // final signal output
    signal output q;

    //componennts gate used to create this circuit
    component andGate= AND();
    component notGate= NOT();
    component xorGate= XOR();

    // circuit logic
    andGate.a <==a;
    andGate.b <==b;
    x <== andGate.out;

    notGate.b <==b;
    y <== notGate.out;

    xorGate.x <==x;
    xorGate.y <==y;
    q <== xorGate.out;

    log(q) ;
}

template AND() {
    signal input a;
    signal input b;
    signal output out;

    out <== a*b;
}

template NOT() {
    signal input b;
    signal output out;

    out <== 1 + b - 2*b;
}

template XOR() {
    signal input x;
    signal input y;
    signal output out;

    out <== x + y - 2*x*y;
}

component main = CustomCircuit();