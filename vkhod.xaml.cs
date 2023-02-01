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
using System.Windows.Navigation;
using System.Windows.Shapes;

namespace test
{
    /// <summary>
    /// Логика взаимодействия для vkhod.xaml
    /// </summary>
    public partial class vkhod : Page
    {
        public vkhod()
        {
            InitializeComponent();
        }

        private void start_click(object sender, RoutedEventArgs e)
        { 
        Manager.MainFrame.Navigate(new Page1());
            var nado = new BazaEntities1();
            var Base = nado.clients.Where(u => u.login == Log.Text.ToLower() && u.password == Pass.Text.ToLower()).FirstOrDefault();
            if (Base != null)
            {
                Manager.MainFrame.Navigate(new Page1());
            }
            else
            {
                MessageBox.Show("Нужно войти в учётную запись!");
                Manager.MainFrame.Navigate(new vkhod());
            }
        }
    }
}
