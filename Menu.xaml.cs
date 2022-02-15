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
using ProjectDonPizza;

namespace Multi_Login
{
    /// <summary>
    /// Interaction logic for Menu.xaml
    /// </summary>
    public partial class Menu : Window
    {
        PizzaDonEntities2 _db = new PizzaDonEntities2();
        private int _numValue = 0;
        private int tambahan;


        public Menu()
        {
            InitializeComponent();
            txtNum.Text = _numValue.ToString();
            setPizza();
            setUkuran();
        }
        private void btnExit_Click(object sender, RoutedEventArgs e)
        {
            Application.Current.Shutdown();
        }
        public void setPizza()
        {
            var namaPizza = (from k in _db.pizzas
                             select k.nama_pizza).ToList();
            listPizza.ItemsSource = namaPizza;
        }
        public void setUkuran()
        {
            var ukuran = (from k in _db.ukurans
                          select k.ukuran1).ToList();
            cbUkuran.ItemsSource = ukuran;
        }



        public int NumValue
        {
            get { return _numValue; }
            set
            {
                _numValue = value;
                txtNum.Text = value.ToString();
            }
        }

        private void cmdUp_Click(object sender, RoutedEventArgs e)
        {
            NumValue++;
        }

        private void cmdDown_Click(object sender, RoutedEventArgs e)
        {
            NumValue--;
        }

        private void txtNum_TextChanged(object sender, TextChangedEventArgs e)
        {
            if (txtNum == null)
            {
                return;
            }

            if (!int.TryParse(txtNum.Text, out _numValue))
                txtNum.Text = _numValue.ToString();
        }

        private void Button_Click(object sender, RoutedEventArgs e)
        {
            topping();
            string pizza = listPizza.SelectedItem.ToString();
            string ukuran = cbUkuran.SelectedItem.ToString();
            string hargapizza = (from k in _db.pizzas
                              where k.nama_pizza.Contains(pizza)
                              select k.harga_pizza).Single();

            string hUkuran = (from k in _db.ukurans
                              where k.ukuran1.Contains(ukuran)
                              select k.harga).Single();
          
            decimal hasil = (int.Parse(txtNum.Text) * int.Parse(hargapizza)) * Decimal.Parse(hUkuran)+tambahan;

            txtHasil.Text = hasil.ToString();

           

        }

        private void topping()
        {
            if (tuna.IsChecked == true)
            {
                tambahan = 15000;
                return;
            }
            else if (sosis.IsChecked == true)
            {
                tambahan = 8000;
                return;
            }
            else if (pepperoni.IsChecked == true)
            {
                tambahan = 10000;
                return;
            }
            else if (keju.IsChecked == true)
            {
                tambahan = 8000;
                return;
            }
            else if (jamur.IsChecked == true)
            {
                tambahan = 5000;
                return;
            }
            else if (tomat.IsChecked == true)
            {
                tambahan = 5000;
                return;
            }
            else if (zaitun.IsChecked == true)
            {
                tambahan = 8000;
                return;
            }
            else if (tiram.IsChecked == true)
            {
                tambahan = 10000;
                return;
            }
        }
        public void reset()
        {
            cbUkuran.SelectedIndex = 0;
            listPizza.SelectedIndex = 0;
            txtNum.Text = ""; txtHasil.Text = "";
            sapi.IsChecked = false ; tuna.IsChecked = false; sosis.IsChecked = false; pepperoni.IsChecked = false; keju.IsChecked = false;
            jamur.IsChecked = false; tomat.IsChecked = false; zaitun.IsChecked = false; tiram.IsChecked = false;
        }

        private void Button_Click_1(object sender, RoutedEventArgs e)
        {
            string pizza = listPizza.SelectedItem.ToString();
            string ukuran = cbUkuran.SelectedItem.ToString();

            var listIdPel = (from p in _db.pelanggans
                             select p.Id_pelanggan).ToList();
            int idpel = listIdPel.Max();

            var idPizza = (from k in _db.pizzas
                           where k.nama_pizza.Contains(pizza)
                           select k.Id_pizza).Single();
            var top = listTopping.Items.Cast<CheckBox>().Where(x => x.IsChecked == true).Select(x => x.Content).ToList();
            topping();

            Pembayaran newPembayaran = new Pembayaran()
            {
                id_pelanggan = idpel,
                id_pizza = idPizza,
                nama_pizza = pizza,
                ukuran_pizza = ukuran,
                topping_pizza = string.Join(", ", top),
                jumlah_pizza = txtNum.Text,
                harga_pizza = txtHasil.Text
            };
            _db.Pembayarans.Add(newPembayaran);
            if (_db.SaveChanges() > 0)
            {
                MessageBox.Show("Pembelian Telah Berhasil\n" +
                    "Nama Pizza : "+pizza+"\n" +
                    "Jumlah Pizza : "+txtNum.Text+"\n" +
                    "Total Harga: " + txtHasil.Text, "Success", MessageBoxButton.OK, MessageBoxImage.Information);
                reset();
            }
        }


        private void Button_Click_3(object sender, RoutedEventArgs e)
        {
            reset();
        }

        private void log_Click(object sender, RoutedEventArgs e)
        {
            MessageBoxResult result = MessageBox.Show("Apakah anda ingin logout?", "Confirmation", MessageBoxButton.YesNo);
            if (result == MessageBoxResult.Yes)
            {
                MainWindow log = new MainWindow();
                this.Close();
                log.ShowDialog();
            }
            else
            {
                Menu mn = new Menu();
                this.Close();
                mn.ShowDialog();
            }
        }
    }
}
