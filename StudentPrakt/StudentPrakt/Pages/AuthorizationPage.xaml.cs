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

namespace StudentPrakt.Pages
{
    /// <summary>
    /// Логика взаимодействия для AuthorizationPage.xaml
    /// </summary>
    public partial class AuthorizationPage : Page
    {
        public AuthorizationPage()
        {
            InitializeComponent();
        }

        private void btnVxod_Click(object sender, RoutedEventArgs e)
        {
            var vxod = Bd.StudClass.bdStud.User.FirstOrDefault(u => u.Login == LoginAUT.Text && u.Password == PaswordAUT.Text);
            if (vxod != null)
            {
                if (vxod.Role_id == 1)
                {
                    NavigationService.Navigate(new StudentPage());
                }
            }
            else
            {
                MessageBox.Show("Данного пользователя не существует!");
            }
        }
    }
}
