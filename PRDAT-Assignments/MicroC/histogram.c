void main(int n)
{
    int freq[4];
    freq[0] = 0;
    freq[1] = 0;
    freq[2] = 0;
    freq[3] = 0;
    int arr[7];
    arr[0] = 1;
    arr[1] = 2;
    arr[2] = 1;
    arr[3] = 1;
    arr[4] = 1;
    arr[5] = 2;
    arr[6] = 0;


    histogram(7, arr, 4, freq);

    print n;
    println;
}


void histogram(int n, int ns[], int max, int freq[])
{
    int i;
    i = 0;
    while (i < n)
    {
        if (ns[i] < max) {
            freq[ns[i]] = freq[ns[i]] + 1;
        }
        i = i + 1;
    }
}