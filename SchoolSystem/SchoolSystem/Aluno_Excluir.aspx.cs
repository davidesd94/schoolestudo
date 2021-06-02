using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Model;

namespace SchoolSystem
{
    public partial class Alunos_Excluir : System.Web.UI.Page
    {
        private ModelDataContext mdc;
        protected void Page_Load(object sender, EventArgs e)
        {

            if (!IsPostBack)
            {

                try
                {
                    this.populateFields(int.Parse(Request.QueryString["id"]));
                }
                catch (Exception)
                {
                    this.populateFields();
                }

            }

        }

        protected void btnExcluir_Click(object obj, EventArgs e)
        {
            this.onDelete();
        }

        private void onDelete()
        {

            mdc = new ModelDataContext();
            try
            {

                Aluno aluno = mdc.Aluno.First(ialuno => ialuno.idAluno == int.Parse(tbIdMatricula.Text.Trim()));

                mdc.Aluno.DeleteOnSubmit(aluno);

                mdc.SubmitChanges();
                Response.Redirect("Aluno.aspx");
            }
            catch (Exception)
            {

            }
            finally
            {
                mdc.Dispose();
            }
        }

        private void populateFields(int pGetID = 0)
        {
            mdc = new ModelDataContext();
            try
            {
                if (pGetID > 0)
                {
                    Aluno aluno = mdc.Aluno.First(ialuno => ialuno.idAluno == pGetID);

                    tbIdMatricula.Text = pGetID.ToString();
                    tbNome.Text = aluno.Nome.Trim();
                    tbEndereco.Text = aluno.Endereco.Trim();
                    tbCep.Text = aluno.Cep.Trim();
                    

                }
                else
                {
                    Response.Redirect("Aluno.aspx");
                }
            }
            catch (Exception)
            {

            }
            finally
            {
                mdc.Dispose();
            }
        }
    }
}

