#include <iostream>
#include <vector>

int main()
{
   auto array = std::vector<float>(100);

   for (int i=0; i < 100; ++i)
      array[i] = i;

   auto sum = array[0];
   for (int i=1; i < 100; ++i)
      sum += array[i];

   std::cout << "Sum of array " << sum << std::endl;
}
