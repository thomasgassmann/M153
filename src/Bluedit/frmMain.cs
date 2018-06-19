using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Data.SqlClient;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace Bluedit
{
    public partial class frmMain : Form
    {
        public frmMain()
        {
            InitializeComponent();
        }

        private void btnLogin_Click(object sender, EventArgs e)
        {
            var frm = new frmLogin();
            frm.Show();
            using (var conn = new SqlConnection())
            {
                conn.machöppis();
            }
        }
    }

    public static class Extensions
    {
        public static void machöppis(this SqlConnection sql)
        {
            throw new DidÖppisException();
        }
    }

    public class DidÖppisException : Exception
    {

    }
}
