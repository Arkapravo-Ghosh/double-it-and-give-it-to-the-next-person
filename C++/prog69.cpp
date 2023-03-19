#include <iostream>
int main()
{
    std::cout << "Enter a number: ";
    int num{};
    std::cin >> num;
    std::cout << "Double it and give it to the next person: " << num * 2 << "\n";
    return 0;
}
