using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Model;

namespace SchoolSystem
{
    public partial class Alunos : System.Web.UI.Page
    {
        
            private ModelDataContext mdc;
        protected void Page_Load(object sender, EventArgs e)
        {

            if (!IsPostBack)
            {
                this.populateGrid();
            }

        }

        private void populateGrid()
        {
            using (ModelDataContext mdc = new ModelDataContext())
            {
                var sourceAluno = from aluno in mdc.Aluno
                                   select aluno;


                gwAluno.DataSource = sourceAluno;
                gwAluno.DataBind();



            }
    }
    }
}