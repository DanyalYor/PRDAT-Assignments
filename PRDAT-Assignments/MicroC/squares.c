
void main(int n)
{

    int arr[20];

    squares(n, arr);

    arrsum(n, arr, &n);

    print n;
    println;
}

void squares(int n, int arr[])
{
    int i;
    i = 0;

    while (i < n)
    {
        arr[i] = i * i;
        i = i + 1;
    }
}

void arrsum(int n, int arr[], int *sump)
{
    int i;
    int sum;

    sum = 0;
    i = 0;

    while (i < n)
    {
        sum = sum + arr[i];
        i = i + 1;
    }

    *sump = sum;
}