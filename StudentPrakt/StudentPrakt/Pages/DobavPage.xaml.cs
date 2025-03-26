using StudentPrakt.Bd;
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
using System.Xml.Linq;


namespace StudentPrakt.Pages
{
    /// <summary>
    /// Логика взаимодействия для DobavPage.xaml
    /// </summary>
    public partial class DobavPage : Page
    {
        public DobavPage()
        {
            InitializeComponent();
            SpecCB.ItemsSource = Bd.StudClass.bdStud.Specialization.ToList();
        }

        private void Save_Click(object sender, RoutedEventArgs e)
        {
            Student student = new Student();
            student.FIO = FioTextBox.Text;
            student.Groups = GroupTextBox.Text;
            var Spec = SpecCB.SelectedItem as Specialization;
            student.Specialization_id = Spec.id_Specialization;

            Bd.StudClass.bdStud.Student.Add(student);
            Bd.StudClass.bdStud.SaveChanges();
            MessageBox.Show("Студент успешно добавлен!");
        }

        private void Nazad_Click(object sender, RoutedEventArgs e)
        {
            NavigationService.Navigate(new Pages.StudentPage());
        }
    }
}
