using Prism.Commands;
using Prism.Mvvm;
using System;
using System.Net.Mail;
using System.Windows;

namespace MailSendApp.ViewModels
{
    public class MainWindowViewModel : BindableBase
    {
        private string _title = "メール送信サンプルアプリ";
        public string Title
        {
            get { return _title; }
            set { SetProperty(ref _title, value); }
        }

        private string _mailFrom = "";
        public string MailFrom
        {
            get { return _mailFrom; }
            set { SetProperty(ref _mailFrom, value); }
        }
        private string _mailTo = "";
        public string MailTo
        {
            get { return _mailTo; }
            set { SetProperty(ref _mailTo, value); }
        }

        private string _mailBody = "";
        public string MailBody
        {
            get { return _mailBody; }
            set { SetProperty(ref _mailBody, value); }
        }

        public DelegateCommand SendCommand { get; private set; }

        public MainWindowViewModel()
        {
            SendCommand = new DelegateCommand(SendMail);
        }

        private void SendMail()
        {
            var mailID = Properties.Settings.Default.MailUser;
            var mailPassword = Properties.Settings.Default.MailPass;

            if(MailFrom == "" || MailTo == "" || MailBody == "") 
            {
                MessageBox.Show("必要な情報が入力されていません");
                return;
            }

            var mailSubject = "send mail from sample application";
            try
            {
                SmtpClient smtp = new SmtpClient();
                smtp.Host = "smtp.gmail.com";
                smtp.Port = 587;

                smtp.Credentials = new System.Net.NetworkCredential(mailID, mailPassword);
                smtp.EnableSsl = true;
                MailMessage msg = new MailMessage(MailFrom, MailTo, mailSubject, MailBody);
                smtp.Send(msg);

                MessageBox.Show($"{MailTo} にメール送信しました。");
                MailFrom = "";
                MailBody = "";
                MailTo = "";
            }
            catch (Exception e)
            {
                MessageBox.Show(e.Message);
            }
        }
    }
}
