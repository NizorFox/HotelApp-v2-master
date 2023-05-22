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
    /// Логика взаимодействия для JournalPage.xaml
    /// </summary>
    public partial class JournalPage : Page
    {
        Core db = new Core();
       List<journal_table> journal;
        int dofilt;
        
        public JournalPage()
        {
            InitializeComponent();
            FilterData();
            DoJournalFilterComboBox.ItemsSource = db.context.do_table.ToList();
            DoJournalFilterComboBox.DisplayMemberPath = "do_type";
            DoJournalFilterComboBox.SelectedValuePath = "id_do_table";
        }
      
        private void JournalBack_Click(object sender, RoutedEventArgs e)
        {
            this.NavigationService.Navigate(new MainMenuPage());
        }

        private void JournalView(object sender, RoutedEventArgs e)
        {
           
        }

        private void JournalFilterUpdate_Click(object sender, RoutedEventArgs e)
        {
            
        }

        

        private void LoginFilterTextChanged(object sender, TextChangedEventArgs e)
        {
            FilterData();
        }
/// <summary>
/// Фильтрация и сотртировка по логину
/// </summary>
   private  void FilterData()
    {
            var logfilt = LoginFilterTextBox.Text.ToLower();
            journal = db.context.journal_table.ToList();
            if (logfilt != String.Empty)
            {
                journal= journal.Where(x=>x.login_users.ToLower().StartsWith(logfilt)).ToList();
            }
            else
            {
                journal = journal.ToList();
            }
            if (DoJournalFilterComboBox.SelectedItem != null)
            {
                journal = journal.Where(x => x.id_do_table == dofilt).ToList();
               
            }
            if (DateStartJournalFilter.SelectedDate != null && DateEndJournalFilter.SelectedDate != null)
            {
                journal = journal.Where(x => x.journal_datetime> DateStartJournalFilter.SelectedDate.Value && x.journal_datetime < DateEndJournalFilter.SelectedDate.Value).ToList();
            }

            JournalListView.ItemsSource = journal;
    }
        /// <summary>
        /// Фильтр по ComboBox
        /// </summary>

        private void DoJournalFilterSelectionChanged(object sender, SelectionChangedEventArgs e)
        {
             dofilt = Convert.ToInt32(DoJournalFilterComboBox.SelectedValue);
            FilterData();
        }
    }
}
