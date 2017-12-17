using Android;
using Android.Content;
using Android.Runtime;
using Android.Content.PM;
using System;
using Xamarin.Forms;

namespace AppTracker
{
    public partial class MainPage : ContentPage
    {
        public Class1 viewModel;

        public MainPage()
        {
            InitializeComponent();
            this.BindingContext = this.viewModel = new Class1();
            app1.Clicked += app1_Clicked;
            app2.Clicked += app2_Clicked;
            app3.Clicked += app3_Clicked;
            app4.Clicked += app4_Clicked;
            app5.Clicked += app5_Clicked;
            app6.Clicked += app6_Clicked;
        }



        private async void app1_Clicked(object sender,EventArgs e){
            Console.WriteLine(Class1.num1);
            var uri = Class1.num1;
            //var intent = new Intent(Intent.ActionDial);
            //Intent intent = Forms.Context.PackageManager.GetLaunchIntentForPackage("ActionTelephony");
            Intent i = Android.App.Application.Context.PackageManager.GetLaunchIntentForPackage(uri);
            //var uri = Android.Net.Uri.Parse("tel:1112223333");
            //Intent intent = new Intent(Intent.ActionDial, uri);
            Android.App.Application.Context.StartActivity(i);
        }
        private async void app2_Clicked(object sender, EventArgs e)
        {
            Console.WriteLine(Class1.num2);
            var uri = Class1.num2;
            Intent i = Android.App.Application.Context.PackageManager.GetLaunchIntentForPackage(uri);
            Android.App.Application.Context.StartActivity(i);
        }
        private async void app3_Clicked(object sender, EventArgs e)
        {
            Console.WriteLine(Class1.num3);
            var uri = Class1.num3;
            Intent i = Android.App.Application.Context.PackageManager.GetLaunchIntentForPackage(uri);
            Android.App.Application.Context.StartActivity(i);

        }
        private async void app4_Clicked(object sender, EventArgs e)
        {
            Console.WriteLine(Class1.num4);
            var uri = Class1.num4;
            Intent i = Android.App.Application.Context.PackageManager.GetLaunchIntentForPackage(uri);
            Android.App.Application.Context.StartActivity(i);

        }
        private async void app5_Clicked(object sender, EventArgs e)
        {
            Console.WriteLine(Class1.num5);
            var uri = Class1.num5;
            Intent i = Android.App.Application.Context.PackageManager.GetLaunchIntentForPackage(uri);
            Android.App.Application.Context.StartActivity(i);

        }
        private async void app6_Clicked(object sender, EventArgs e)
        {
            Console.WriteLine(Class1.num6);
            var uri = Class1.num6;
            Intent i = Android.App.Application.Context.PackageManager.GetLaunchIntentForPackage(uri);
            Android.App.Application.Context.StartActivity(i);

        }
    }
}