/*

----->2) Numeric Fuctions: (ROUND(), SQRT(), MOD() )

Q10.
Change all the payments amount to 1/4th of the original paymnet.
These new payment_amount should have 2 digits after the decimal point
Display the 2 new calculations in separate columns.

*/

SELECT amount, amount*1/4
FROM payments;