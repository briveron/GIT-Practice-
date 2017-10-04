#include <stdio.h>

/*print Fahrenheit-Celsius Table like in the book */


void main()
{
  int fahr;
  int celsius;
  int lower;
  int upper;
  int step;

  lower=0;
  upper=300;
  step=20;

  fahr=lower;
  while(fahr <= upper) {

    celsius = 5 * (fahr-32)/9;
    printf("%d\t%d\n",fahr, celsius);
    fahr=fahr+step;
}
}
