#include "ising.h"
#include <cstdlib>
#include <cmath>
int main(int argc, char const *argv[]) {
  ising model;
  model.Initial_Conditions(atoi(argv[1]),0.0);
  model.set_Field(0.1);
  int iter=atoi(argv[2]);
  double T=atof(argv[3]);
  model.set_Temp(T);
    for(int i=0;i<iter;i++){
    if (i>iter/2){model.set_Field(0.0);}
      model.Time_Step();
    }
    model.print();
  return 0;
}
