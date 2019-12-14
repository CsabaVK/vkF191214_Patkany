using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using System.Data.SqlClient;

namespace _12_14_patkanyTricikli
{
    public partial class FrmMain : Form
    {
        SqlConnection conn;
        public FrmMain()
        {
            conn = new SqlConnection(@"Data Source=(localdb)\MSSQLLocalDB;Initial Catalog=tripat;");
            InitializeComponent();
            FillDataGrid();
        }

        private void FillDataGrid()
        {
            conn.Open();
            var cmd = new SqlCommand("SELECT * FROM patkany;", conn);
            var r = cmd.ExecuteReader();
            while (r.Read())
            {
                dataGridView1.Rows.Add(r[1]);
            }
            conn.Close();
        }

        private void DataGridView1_CellContentClick(object sender, DataGridViewCellEventArgs e)
        {

        }
    }
}
