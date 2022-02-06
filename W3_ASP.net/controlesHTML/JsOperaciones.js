function Sum()
{
    var number1 = document.getElementById('txtNumber1').value;
    var number2 = document.getElementById('txtNumber2').value;
    alert('The sum is: ' + (parseInt(number1) + parseInt(number2)));

}

function SumDig()
{
    var residue = 0,sum=0;

    var number = document.getElementById('txtNumber').value;
    do {
        residue = number % 10;
        sum = sum + residue;
        number = (number - (number % 10)) / 10;
    } while (number != 0);
    alert('the sum of digit is: '+ sum);
}