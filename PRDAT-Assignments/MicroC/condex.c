// micro-C example 26

void main(int n) {    // Pass 1
  int i;              // (BDec code to allocate i, i->loc i + varenv) 
  i = 0 < 5 ? 2 : 5;                // (BStmt i=0, varenv)
  print i;            // (BStmt print j, varenv)
  println;            // (BStmt println, varenv)
}
