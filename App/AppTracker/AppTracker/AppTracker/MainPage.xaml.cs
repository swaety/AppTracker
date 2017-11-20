using Android.Content.PM;
using System;
using Xamarin.Forms;

namespace AppTracker
{
	public partial class MainPage : ContentPage
	{
        String app1name = "blabla";

        public string APP1NAME { get; set; }

        public MainPage()
		{
            var apps = Android.App.Application.Context.PackageManager.GetInstalledApplications(PackageInfoFlags.MatchAll);
            var app1 = apps[0].PackageName.Split('.').Length - 1;
            var app2 = apps[1].PackageName.Split('.').Length - 1;
            var app3 = apps[2].PackageName.Split('.').Length - 1;
            var app4 = apps[3].PackageName.Split('.').Length - 1;
            var app5 = apps[4].PackageName.Split('.').Length - 1;
            var app6 = apps[5].PackageName.Split('.').Length - 1;

            app1name = apps[0].PackageName.Split('.')[app1];
            var app2name = apps[1].PackageName.Split('.')[app2];
            var app3name = apps[2].PackageName.Split('.')[app3];
            var app4name = apps[3].PackageName.Split('.')[app4];
            var app5name = apps[4].PackageName.Split('.')[app5];
            var app6name = apps[5].PackageName.Split('.')[app6];

            this.APP1NAME = "test";

            var iconapp1 = apps[0].LoadLabel(Android.App.Application.Context.PackageManager);
            var iconapp2 = apps[1].LoadLabel(Android.App.Application.Context.PackageManager);
            var iconapp3 = apps[2].LoadLabel(Android.App.Application.Context.PackageManager);
            var iconapp4 = apps[3].LoadLabel(Android.App.Application.Context.PackageManager);
            var iconapp5 = apps[4].LoadLabel(Android.App.Application.Context.PackageManager);
            var iconapp6 = apps[5].LoadLabel(Android.App.Application.Context.PackageManager);



        Console.WriteLine("");
            Console.WriteLine("");
            Console.WriteLine("");
            Console.WriteLine("");
            Console.WriteLine("");
            Console.WriteLine("");
            Console.WriteLine("");
            Console.WriteLine("");
            Console.WriteLine("taille 1 : " + app1 + "nom complet :" + apps[0].PackageName);
            Console.WriteLine("taille 2 : " + app2 + "nom complet :" + apps[1].PackageName);
            Console.WriteLine("taille 3 : " + app3 + "nom complet :" + apps[2].PackageName);
            Console.WriteLine("taille 4 : " + app4 + "nom complet :" + apps[3].PackageName);
            Console.WriteLine("taille 5 : " + app5 + "nom complet :" + apps[4].PackageName);
            Console.WriteLine("taille 6 : " + app6 + "nom complet :" + apps[5].PackageName);

            Console.WriteLine("nom 1 : " + app1name);
            Console.WriteLine("nom 2 : " + app2name);
            Console.WriteLine("nom 3 : " + app3name);
            Console.WriteLine("nom 4 : " + app4name);
            Console.WriteLine("nom 5 : " + app5name);
            Console.WriteLine("nom 6 : " + app6name);

            InitializeComponent();
		}
	}
}