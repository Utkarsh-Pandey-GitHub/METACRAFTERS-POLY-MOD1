pragma circom 2.0.0;

/*This circuit template checks that c is the multiplication of a and b.*/  

template Multiplier2 () {  
   signal input a;
   signal input b;
   
   signal x;

   signal  y;

   signal output q;
   component and = AND();
   component not = NOT();
   component or = OR();

   and.a <== a;
   and.b <== b;
   x <== and.out;
   not.in <== b;
   y <== not.out;
   or.a <== x;
   or.b <== y;
   q <== or.out;


}

template XOR() {
    signal input a;
    signal input b;
    signal output out;

    out <== a + b - 2*a*b;
}

template AND() {
    signal input a;
    signal input b;
    signal output out;

    out <== a*b;
}

template OR() {
    signal input a;
    signal input b;
    signal output out;

    out <== a + b - a*b;
}

template NOT() {
    signal input in;
    signal output out;

    out <== 1 + in - 2*in;
}

template NAND() {
    signal input a;
    signal input b;
    signal output out;

    out <== 1 - a*b;
}

template NOR() {
    signal input a;
    signal input b;
    signal output out;

    out <== a*b + 1 - a - b;
}

component main = Multiplier2();