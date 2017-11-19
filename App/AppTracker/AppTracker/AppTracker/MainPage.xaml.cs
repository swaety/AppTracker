using Android.Content.PM;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Xamarin.Forms;

namespace AppTracker
{
	public partial class MainPage : ContentPage
	{
		public MainPage()
		{
            var apps = Android.App.Application.Context.PackageManager.GetInstalledApplications(PackageInfoFlags.MatchAll);
            var app1 = apps[0].PackageName.Split(".");
            var app2 = apps[1].PackageName;
            var app3 = apps[2].PackageName;
            var app4 = apps[3].PackageName;
            var app5 = apps[4].PackageName;
            var app6 = apps[5].PackageName;

            var iconapp1 = apps[0].LoadLabel(Android.App.Application.Context.PackageManager);
            var iconapp2 = apps[1].LoadLabel(Android.App.Application.Context.PackageManager);
            var iconapp3 = apps[2].LoadLabel(Android.App.Application.Context.PackageManager);
            var iconapp4 = apps[3].LoadLabel(Android.App.Application.Context.PackageManager);
            var iconapp5 = apps[4].LoadLabel(Android.App.Application.Context.PackageManager);
            var iconapp6 = apps[5].LoadLabel(Android.App.Application.Context.PackageManager);

            Console.WriteLine(app1);
            Console.WriteLine(app2);
            Console.WriteLine(app3);
            Console.WriteLine(app4);
            Console.WriteLine(app5);
            Console.WriteLine(app6);

            InitializeComponent();
		}
	}
}