using System;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Calculadora
{
    public partial class inicio : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            float n1, n2, resultado = 0;
            string operacion = ((Button)sender).Text;

            if (float.TryParse(tnum1.Text, out n1))
            {
                if (operacion == "Suma")
                {
                    if (float.TryParse(tnum2.Text, out n2))
                        resultado = n1 + n2;
                    else
                    {
                        lresultado.Text = "Ingrese el segundo numero";
                        return;
                    }
                }
                else if (operacion == "Resta")
                {
                    if (float.TryParse(tnum2.Text, out n2))
                        resultado = n1 - n2;
                    else
                    {
                        lresultado.Text = "Ingrese el segundo numero";
                        return;
                    }
                }
                else if (operacion == "Multiplicacion")
                {
                    if (float.TryParse(tnum2.Text, out n2))
                        resultado = n1 * n2;
                    else
                    {
                        lresultado.Text = "Ingrese el segundo numero";
                        return;
                    }
                }
                else if (operacion == "Division")
                {
                    if (float.TryParse(tnum2.Text, out n2))
                    {
                        if (n2 != 0)
                            resultado = n1 / n2;
                        else
                        {
                            lresultado.Text = "No se puede dividir entre cero";
                            return;
                        }
                    }
                    else
                    {
                        lresultado.Text = "Ingrese el segundo numero";
                        return;
                    }
                }
                else if (operacion == "Potencia 2")
                {
                    resultado = n1 * n1;
                }
                else if (operacion == "Exp")
                {
                    resultado = (float)Math.Exp(n1);
                }
                else if (operacion == "10x")
                {
                    resultado = (float)Math.Pow(10, n1);
                }

                lresultado.Text = resultado.ToString("0.########");
            }
            else
            {
                lresultado.Text = "Ingrese un numero valido";
            }
        }
    }
}