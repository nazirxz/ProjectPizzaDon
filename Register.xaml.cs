using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Data;
using System.Windows.Documents;
using System.Windows.Input;
using System.Windows.Media;
using System.Windows.Media.Imaging;
using System.Windows.Shapes;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;

namespace Multi_Login
{
    /// <summary>
    /// Interaction logic for Register.xaml
    /// </summary>
    public partial class Register : Window
    {

        SqlConnection con = new SqlConnection();
        SqlCommand com = new SqlCommand();
        SqlDataReader dr;

        public Register()
        {
            InitializeComponent();
            con.ConnectionString = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString.ToString();
        }
        private void btnRegister_Click(object sender, RoutedEventArgs e)
        {
            con.Open();
            com.Connection = con;
            com.CommandText = "insert into pelanggan(username,password,nama_lengkap,nohp,alamat) " +
                "values ('" + txtUsername.Text + "','" + txtPassword.Password + "','" + txtNama.Text + "','" + txtNohp.Text + "','"+txtAlamat.Text+"')";
            dr = com.ExecuteReader();
            con.Close();
            MessageBox.Show("Registrasi Berhasil ! Silahkan Login");
            MainWindow reg = new MainWindow();
            reg.ShowDialog();
        }

        private void btnExit_Click(object sender, RoutedEventArgs e)
        {
            Application.Current.Shutdown();
        }

        private void log_Click(object sender, RoutedEventArgs e)
        {
            MainWindow log = new MainWindow();
            this.Close();
            log.ShowDialog();
        }
    }
}