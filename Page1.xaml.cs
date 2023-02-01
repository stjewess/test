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
    /// Логика взаимодействия для Page1.xaml
    /// </summary>
    public partial class Page1 : Page
    {
        public Page1()
        {
            InitializeComponent();

            var nado = BazaEntities1.GetContext().character.ToList();
            List.ItemsSource = nado;
        }

        private void update_page()
        {
            var current_character = BazaEntities1.GetContext().character.ToList();

            current_character = current_character.Where(p => p.name.ToLower().Contains(TBoxSearch.Text.ToLower())).ToList();
            List.ItemsSource = current_character;
        }

        private void TBoxSearch_TextChanged(object sender, TextChangedEventArgs e)
        {
            update_page();
        }

        private void ComboType_SelectionChanged(object sender, SelectionChangedEventArgs e)
        {

        }
    }
}
