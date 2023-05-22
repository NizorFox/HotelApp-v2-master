using HotelApp.Model;
using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Data;
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
using System.Runtime.CompilerServices;

namespace HotelApp.View.Pages
{
    /// <summary>
    /// Логика взаимодействия для ManagerListPage.xaml
    /// </summary>
    public partial class ManagerListPage : Page
    {

        Core db = new Core();
        public ManagerListPage()
        {
            InitializeComponent();

        }

        private void ManagerListUpdate_Click(object sender, RoutedEventArgs e)
        {

        }

        private void ManagerListBack_Click(object sender, RoutedEventArgs e)
        {
            this.NavigationService.Navigate(new MainMenuPage());
        }
    }
}
