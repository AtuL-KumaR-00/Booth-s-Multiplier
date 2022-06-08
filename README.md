# Booth's Multiplier
### Implementing multiplier using Booth's algorithm

Booth algorithm gives a procedure for multiplying binary integers in signed 2’s complement representation in efficient way, i.e., less number of additions/subtractions required. It operates on the fact that strings of 0’s in the multiplier require no addition but just shifting and a string of 1’s in the multiplier from bit weight 2^k to weight 2^m can be treated as 2^(k+1 ) to 2^m.

As in all multiplication schemes, booth algorithm requires examination of the multiplier bits and shifting of the partial product. Prior to the shifting, the multiplicand may be added to the partial product, subtracted from the partial product, or left unchanged according to following rules:

* The multiplicand is subtracted from the partial product upon encountering the first least significant 1 in a string of 1’s in the multiplier
* The multiplicand is added to the partial product upon encountering the first 0 (provided that there was a previous ‘1’) in a string of 0’s in the multiplier.
* The partial product does not change when the multiplier bit is identical to the previous multiplier bit.

![image](https://user-images.githubusercontent.com/64649440/172652133-9e4a428e-09ec-4385-bf4f-9c907611fbea.png)

![image](https://user-images.githubusercontent.com/64649440/172652251-bde84973-ca25-4c12-9511-7d8b5bce7e54.png)

## References:
* https://www.geeksforgeeks.org/computer-organization-booths-algorithm/
* https://www.youtube.com/watch?v=qi4VAr5SXVg&t=337s
